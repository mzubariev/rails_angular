window.app = angular
    .module('myApp', [
        'ui.router',
        'templates',
        'ngResource'
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

# To escape conflicts with csrf
app.config ($httpProvider) ->
    authToken = $("meta[name=\"csrf-token\"]").attr("content")
    $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

# Makes AngularJS work with turbolinks.
$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])

