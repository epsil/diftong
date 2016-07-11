/* global angular, $ */

var vocals = {}
vocals['a'] = 'aàá'
vocals['e'] = 'eèéê'
vocals['i'] = 'i'
vocals['o'] = 'oòóô'
vocals['u'] = 'uü'
vocals['y'] = 'y'
vocals['æ'] = 'æ'
vocals['ø'] = 'ø'
vocals['å'] = 'å'

// Finner enkeltstående vokaler
function single (vocal, extension) {
  var othervocals = $.extend({}, vocals)

  if (extension) {
    othervocals[vocal] = ''
  }

  return '(^|[^' + Object.values(othervocals).join('') + '])' +
    '([' + vocals[vocal] + '])' +
    '($|[^' + Object.values(vocals).join('') + '])'
}

// Code defining custom module consisting of a filter
// The module needs to be included as dependency for using the filter, titlecase
angular.module('CustomFilterModule', [])
  .filter('titlecase', function () {
    return function (input) {
      return input.replace(/\w\S*/g, function (txt) {
        return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
      })
    }
  })

// Angular App on this page
// Included CustomFilterModule as dependency
angular.module('DiftongApp', ['CustomFilterModule'])
  .controller('DiftongCtrl', ['$scope', function ($scope) {
    $scope.name = ''
  }])
