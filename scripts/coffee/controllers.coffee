notifyModule = angular.module 'notifyModule', []

notifyModule.factory 'notify', ['$window', (win) ->
    msgs = []
    (msg) ->
        msgs.push msg
        if msgs.length == 3
            win.alert msgs.join "\n"
            msgs = []
]

notifyCtrl = (scope, notifyService) ->
    scope.callNotify = (msg) ->
        notifyService msg

notifyCtrl.$inject = ['$scope', 'notify']

notifyModule.controller 'notifyCtrl', notifyCtrl
