<?php
header('Content-type: text/plain');

/**
 * Smarty-konstanter
 */
define("SMARTY_DIR", "../../smarty/");
define("SMARTY_TEMPLATE_DIR", "");
define("SMARTY_COMPILE_DIR", "../../smarty/templates_c/");
define("SMARTY_CONFIG_DIR", "../../smarty/configs/");
define("SMARTY_CACHE_DIR", "../../smarty/cache/");
require_once(SMARTY_DIR . 'Smarty.class.php'); // Smarty

$smarty = new Smarty;

$smarty->template_dir = SMARTY_TEMPLATE_DIR;
$smarty->compile_dir = SMARTY_COMPILE_DIR;
$smarty->config_dir = SMARTY_CONFIG_DIR;
$smarty->cache_dir = SMARTY_CACHE_DIR;

$smarty->assign('uri', $_SERVER['REQUEST_URI']);

if(!empty($_POST['tekst'])) {
  /**
   * Vokaler
   */
  $vocals['a'] = 'a��';
  $vocals['e'] = 'e���';
  $vocals['i'] = 'i';
  $vocals['o'] = 'o���';
  $vocals['u'] = 'u�';
  $vocals['y'] = 'y';

  $vocals['�'] = '�';
  $vocals['�'] = '�';
  $vocals['�'] = '�';

  /**
   * Finner enkeltst�ende vokaler
   */
  function single($vocal, $type = "") {
    global $vocals;

    $othervocals = $vocals;

    if($type == "extension") {
      unset($othervocals[$vocal]);
    }

    return '(?<=^|[^' . implode("", $othervocals) . '])'
      . '([' . $vocals[$vocal] . '])'
      . '(?=$|[^' . implode("", $vocals) . '])';
  }

  /**
   * Case-matching
   */
  function capitalize($match, $replacement) {
    if($match != strtolower($match)) {
      return ucfirst(strtolower($replacement));
    }
    else {
      return $replacement;
    }
  }

  /**
   * HTML-optimisering
   */
  function htmlize ($string) {
    $string = trim($string);
    $string = htmlspecialchars($string);

    return $string;
  }
  function paragraphize($string) {
    $string = preg_replace('/<br \/>[\s\n]*(<br \/>[\s\n]*)+/',
                           "</p>\n\n<p>", nl2br($string));

    return $string;
  }

  /**
   * A
   */
  $search[] = '/' . single('a') . '/ie';
  $replace[] = "capitalize('\\1', '�i')";

  /**
   * E
   */
  $search[] = '/' . single('e', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', '\\1i')";

  $search[] = '/(\b|(?<!ei)(?:[-bcdfghjklmnpqrstvwxz]+))(ei)'
    . '((?:[bcdfghjklmnpqrstvwxz]+ei)+)/ie';
  $replace[] = "'\\1' . capitalize('\\2', '�y') . '\\3'";

  /**
   * I
   */
  $search[] = '/' . single('i', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', 'e\\1')";

  /**
   * O
   */
  $search[] = '/' . single('o', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', '\\1u')";

  /**
   * U
   */
  $search[] = '/' . single('u', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', 'o\\1')";

  /**
   * Y
   */
  $search[] = '/' . single('y', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', '�\\1')";

  /**
   * �
   */
  $search[] = '/' . single('�') . '/ie';
  $replace[] = "capitalize('\\1', '�i')";

  /**
   * �
   */
  $search[] = '/' . single('�', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', 'au')";

  /**
   * �
   */
  $search[] = '/' . single('�', 'extension') . '/ie';
  $replace[] = "capitalize('\\1', 'ao')";

  /**
   * S�k og erstatt
   */
  $translation = preg_replace($search, $replace, $_POST['tekst']);

  $translation = paragraphize(htmlize($translation));

  $smarty->assign('input', htmlize($_POST['tekst']));
  $smarty->assign('translation', $translation);
}

echo $smarty->fetch('nb.tpl');
?>