app.controller "ShowItemController", ($scope, Item, $stateParams) ->
    @obj = new Item()
    $scope.item = @obj.find({ id: $stateParams.id })
