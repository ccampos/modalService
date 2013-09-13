notifyModule = angular.module 'notifyModule', []

notifyModule.run ($templateCache) ->
    $templateCache.put 'templateId.html', 'This is the content of the template'

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
