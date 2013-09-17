notifyModule = angular.module('notifyModule', [])

notifyModule.run ($templateCache, $http) ->
    modalHtml = $http.get 'views/directives/modal.html'
    $templateCache.put 'modal.html', modalHtml

notifyModule.factory 'notify', ['$window', (win) ->
    msgs = []
    (msg) ->
        win.alert msg
]

notifyCtrl = (scope, notifyService) ->
    scope.callNotify = (msg) ->
        notifyService msg

notifyCtrl.$inject = ['$scope', 'notify']

notifyModule.controller 'notifyCtrl', notifyCtrl


notifyModule.factory 'modalService', () ->
    customers = [
            name: 'John Smith', city: 'Atlanta' 
        ,
            name: 'John Doe', city: 'New York'
        ,
            name: 'Jane Dow', city: 'Cincinnati'
    ]
    
    factory = {}
    factory.getCustomers = ->
        return customers

    return factory

notifyModule.controller 'SimpleController', ($scope, modalService) ->
    $scope.customers = []

    console.log modalService.getCustomers()

    init = ->
        $scope.customers = modalService.getCustomers()

    init()
