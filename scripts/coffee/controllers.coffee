myModule = angular.module 'myModule', []

myModule.factory 'notify', ['$window', (win) ->
    (msg) ->
        win.alert msg
]

myModule.directive 'pullTemplate', ->
    return { 
        restrict: 'A'
        templateUrl: 'views/directives/modal.html'
        scope: 
            'client': '='
    }

myController = (scope, notifyService) ->
    scope.callNotify = (msg) ->
        notifyService msg

myController.$inject = ['$scope', 'notify']

myModule.controller 'elController', myController

