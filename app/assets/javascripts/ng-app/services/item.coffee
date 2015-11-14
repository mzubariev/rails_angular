app.factory 'Item', ($resource) ->
    class Item
        constructor: ->
          @service = $resource('/api/items/:id', {id: '@id'})

        all: ->
          @service.query()

        find: (id) ->
          @service.get(id)