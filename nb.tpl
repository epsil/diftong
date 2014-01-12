{$declaration}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nb">
<head>
<title>Diftongmaskinen</title>
<meta http-equiv="Content-Style-Type" content="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>Diftongmaskinen<br />
<small>Kilden til et klangfullt spr�k</small></h1>

<p>Diftongmaskinen er et redskap som kjapt lar deg oversette sm�
eller store mengder tekst p� bokm�l, nynorsk, riksm�l eller
h�gnorsk til feilfri <a href="#anorsk"
title="Hva er alternativ norsk?">alternativ norsk</a>. Veien til et
klangfullt spr�k har aldri v�rt kortere!</p>

{if $translation}
<blockquote class="oversettelse">
<p>{$translation}</p>
</blockquote>
{/if}

<form action="{$uri}" method="post">
<p><textarea cols="72" name="tekst" rows="5"
title="Skriv eller lim inn teksten du �nsker � oversette her">{$input}</textarea></p>

<p><input title="Oversett teksten til alternativ norsk"
type="submit" value="Oversett" /></p>
</form>

<h2 id="anorsk">Hva er alternativ norsk?</h2>

<p>Alternativ norsk er en uoffisiell m�lform som tar sikte p� �
etablere et mer klangfullt og vakrere norsk. Dette gj�res ved �
bytte ut alle enkeltvokaler med diftonger, noe som ikke bare gir en
meget distinkt uttale, men som ogs� minsker avstanden mellom det
skriftlige og det muntlige. I alternativ norsk er alle vokaler entydige, til forskjell fra <abbr
title="blant annet">bl.a.</abbr> bokm�l, hvor <abbr
title="for eksempel">f.eks.</abbr> <em>o</em>-en i �hvor� uttales
<em>/o/</em>, mens den i �lov� uttales <em>/�/</em>.</p>

<p>Alternativ norsk bygger videre p� eldre m�lformer, b�de
offisielle og uoffiselle. Man kan skrive alternativ norsk med
utgangspunkt i bokm�l og nynorsk (offisielle) s� vel som riksm�l og
h�gnorsk (uoffisielle). Takket v�re denne inkluderende holdningen
til norsk spr�k er alternativ norsk b�de ordrikt og nyansert.</p>

<p>Det er lett � skrive alternativ norsk, selv om m�lformen
revideres jevnlig. For �yeblikket gjelder f�lgende regler:</p>

<ol>
<li>
<p>Bytt ut enkeltst�ende <em>a</em>-er og <em>�</em>-er med
<em>�i</em>.</p>

<blockquote>
<p>Han har t�l.</p>
</blockquote>

<blockquote>
<p>H�in h�ir t�il.</p>
</blockquote>
</li>

<li>
<ol>
<li>
<p>Bytt ut enkeltst�ende <em>e</em>-er og <em>i</em>-er med
<em>ei</em>.</p>

<blockquote>
<p>Det er veldig lett.</p>
</blockquote>

<blockquote>
<p>Deit eir veildeig leitt.</p>
</blockquote>
</li>

<li>
<p>Dersom <em>e</em>-stavelsen er den f�rste av to eller flere
<em>e</em>-stavelser, skal <em>e</em>-en byttes ut med
<em>�y</em>.</p>

<blockquote>
<p>Dette er lett.</p>
</blockquote>

<blockquote>
<p>D�yttei eir leitt.</p>
</blockquote>
</li>
</ol>
</li>

<li>
<p>Bytt ut enkeltst�ende <em>o</em>-er og <em>u</em>-er med
<em>ou</em>.</p>

<blockquote>
<p>Lutefisk er vondt.</p>
</blockquote>

<blockquote>
<p>Louteifeisk eir voundt.</p>
</blockquote>
</li>

<li>
<p>Bytt ut enkeltst�ende <em>y</em>-er med <em>�y</em>.</p>

<blockquote>
<p>Siste nytt.</p>
</blockquote>

<blockquote>
<p>Seistei n�ytt.</p>
</blockquote>
</li>

<li>
<p>Bytt ut enkeltst�ende <em>�</em>-er med <em>ao</em>.</p>

<blockquote>
<p>G� p�!</p>
</blockquote>

<blockquote>
<p>Gao pao!</p>
</blockquote>
</li>

<li>
<p>Dersom vokalen som byttes ut har aksent (eller et annet
diakritisk tegn, som cirkumfleks eller t�dler), og inng�r i
diftongen den byttes ut med, skal aksenten beholdes.</p>

<blockquote>
<p>Jeg har en id�.</p>
</blockquote>

<blockquote>
<p>Jeig h�ir ein eid�i.</p>
</blockquote>
</li>
</ol>
</body>
</html>
