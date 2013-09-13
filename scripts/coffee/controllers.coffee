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
    scope.animals = [
        name: 'giraffe'
    ,
        name: 'elephant'
    ,
        name: 'monkey'
    ]
    scope.callNotify = (msg) ->
        notifyService msg

notifyCtrl.$inject = ['$scope', 'notify']

notifyModule.controller 'notifyCtrl', notifyCtrl
