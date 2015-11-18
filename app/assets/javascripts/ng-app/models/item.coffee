app.factory 'Item', ['AppModel', (AppModel) ->

  class Item extends AppModel
    @configure url: '/items', name: 'items'
]
