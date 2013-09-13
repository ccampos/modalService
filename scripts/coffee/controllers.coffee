myModule = angular.module 'myModule', []

myModule.factory 'notify', ['$window', (win) ->
    (msg) ->
        win.alert msg
]

myController = (scope, notifyService) ->
    scope.page_title = 'Hola Mundo!'
    scope.callNotify = (msg) ->
        notifyService msg

myController.$inject = ['$scope', 'notify']

myModule.controller 'elController', myController

