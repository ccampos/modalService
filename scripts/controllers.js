// Generated by CoffeeScript 1.6.2
(function() {
  var notifyCtrl, notifyModule;

  notifyModule = angular.module('notifyModule', []);

  notifyModule.run(function($templateCache, $http) {
    var modalHtml;

    modalHtml = $http.get('views/directives/modal.html');
    return $templateCache.put('modal.html', modalHtml);
  });

  notifyModule.factory('notify', [
    '$window', function(win) {
      var msgs;

      msgs = [];
      return function(msg) {
        return win.alert(msg);
      };
    }
  ]);

  notifyCtrl = function(scope, notifyService) {
    return scope.callNotify = function(msg) {
      return notifyService(msg);
    };
  };

  notifyCtrl.$inject = ['$scope', 'notify'];

  notifyModule.controller('notifyCtrl', notifyCtrl);

  notifyModule.factory('modalService', function() {
    var customers, factory;

    customers = [
      {
        name: 'John Smith',
        city: 'Atlanta'
      }, {
        name: 'John Doe',
        city: 'New York'
      }, {
        name: 'Jane Dow',
        city: 'Cincinnati'
      }
    ];
    factory = {};
    factory.getCustomers = function() {
      return customers;
    };
    return factory;
  });

  notifyModule.controller('SimpleController', function($scope, modalService) {
    var init;

    $scope.customers = [];
    init = function() {
      return $scope.customers = modalService.getCustomers();
    };
    init();
    return $scope.addCustomer = function() {
      return $scope.customers.push({
        name: $scope.newCustomer.name,
        city: $scope.newCustomer.city
      });
    };
  });

}).call(this);
