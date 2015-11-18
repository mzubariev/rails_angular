window.app = angular
    .module('myApp', [
        'ui.router',
        'templates',
        'rails',
        'appResource'
    ]).run [ "$rootScope", ($rootScope) -> ]

app.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $urlRouterProvider.when '/', '/items'
    $urlRouterProvider.when '/items/', '/items'
    $stateProvider.state 'home', url: '/items', templateUrl: 'home.html', controller: 'HomeController'
    $stateProvider.state 'item', url: '/items/:id', templateUrl: 'show.html', controller: 'ShowItemController'
    $urlRouterProvider.otherwise '/items'

    # enable HTML5 Mode for SEO
    $locationProvider.html5Mode
        enabled: true,
        requireBase: false


