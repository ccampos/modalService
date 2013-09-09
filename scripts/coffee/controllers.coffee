app = angular.module 'app', ['ui.keypress']

app.controller 'UICtrl', ['$scope', ($scope) ->
    $scope.page_title = 'el titulo' 
    $scope.keypressCallback = ($event) ->
        alert('Voila!')
        $event.preventDefault()
]

