myModule = angular.module 'myModule', [], ($provide) ->
    $provide.factory 'notify', ['$window', (win) ->
        msgs = []
        (msg) ->
            msgs.push msg
            if msgs.length == 3
                win.alert msgs.join "\n"
                msgs = []
    ]

myModule.controller 'ModalCtrl', ['$scope', ($scope) ->
    $scope.page_title = 'Triunfo'
]
