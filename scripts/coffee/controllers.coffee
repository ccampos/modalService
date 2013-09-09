app = angular.module 'app', ['ui.keypress'], ($provide) ->
    $provide.factory 'notify', ['$window', (win) ->
        msgs = []
        (msg) ->
            msgs.push msg
            if msgs.length == 3
                win.alert msgs.join "\n"
                msgs = []
    ]

app.controller 'ModalCtrl', ['$scope', ($scope) ->
    $scope.page_title = 'el titulo' 
    $scope.keypressCallback = ($event) ->
        alert('Voila!')
        $event.preventDefault()
]

