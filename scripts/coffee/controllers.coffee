app = angular.module 'app', []

app.controller 'ModalCtrl', ['$scope', ($scope) ->
   $scope.page_title = 'el titulo' 
]

app.factory 'ModalService', ->
    shinyNewModalServiceInstance
    # factory function body that constructs shinyNewModalServiceInstance
    return shinyNewModalServiceInstance

