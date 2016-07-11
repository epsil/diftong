// Code defining custom module consisting of a filter
// The module needs to be included as dependency for using the filter, titlecase
angular.module('CustomFilterModule', [])
  .filter('titlecase', function () {
    return function (input) {
      return input.replace(/\w\S*/g, function (txt) {
        return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
      });
    }
  });

// Angular App on this page
// Included CustomFilterModule as dependency
angular.module('DiftongApp', ['CustomFilterModule'])
  .controller('DiftongCtrl', ['$scope', function ($scope) {
    $scope.name = '';
  }])
