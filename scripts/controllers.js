// Generated by CoffeeScript 1.6.2
(function() {
  var app;

  app = angular.module('app', ['ui.keypress']);

  app.controller('UICtrl', [
    '$scope', function($scope) {
      $scope.page_title = 'el titulo';
      return $scope.keypressCallback = function($event) {
        alert('Voila!');
        return $event.preventDefault();
      };
    }
  ]);

}).call(this);
