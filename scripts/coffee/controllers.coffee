myModule = angular.module 'myModule', []

myModule.factory 'notify', ['$window', (win) ->
    msgs = []
    (msg) ->
        msgs.push msg
        if msgs.length == 3
            win.alert msgs.join "\n"
            msgs = []
]

myController = (scope, notifyService) ->
    scope.page_title = 'Hola Mundo!'
    scope.callNotify = (msg) ->
        notifyService msg

myController.$inject = ['$scope', 'notify']

myModule.controller 'elController', myController

