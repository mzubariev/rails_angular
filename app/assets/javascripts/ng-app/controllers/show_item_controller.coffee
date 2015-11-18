app.controller "ShowItemController", ($scope, Item, $stateParams) ->
      Item.get($stateParams.id).then (item) -> $scope.item = item
