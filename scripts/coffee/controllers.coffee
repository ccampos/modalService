#app = angular.module 'app', ['ui.keypress'], ($provide) ->
#    $provide.factory 'notify', ['$window', (win) ->
#        msgs = []
#        (msg) ->
#            msgs.push msg
#            if msgs.length == 3
#                win.alert msgs.join "\n"
#                msgs = []
#    ]

#app.controller 'ModalCtrl', ['$scope', ($scope) ->
angular.module('MyServiceModule', []).
    factory 'notify', ['$window', (win) ->
        msgs = []
        (msg) ->
            msgs.push msg
            if msgs.length == 3
                win.alert msgs.join "\n"
                msgs = []
    ]
    .service 'sharedProperties', ->
        property = 'First'
        
        return
            getProperty: ->
                return property
            setProperty: (value) ->
                property = value

myController = (scope, notifyService) ->
    scope.callNotify = (msg) ->
        notifyService msg

myController.$inject = ['$scope', 'notify']

MyServiceModule.controller 'myController', [myController]
