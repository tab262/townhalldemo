(function (angular) {
  angular.module('townhallApp.controllers', []);
  angular.module('townhallApp.services', []);

  var townhallApp = angular.module('townhallApp',['townhallApp.controllers',
      'townhallApp.services','ngRoute','templates']);

  townhallApp.config(['$routeProvider',
      function($routeProvider) {
        $routeProvider.
          when('/home', {
            templateUrl: 'home.html',
            controller: 'HomeController',
            controllerAs: 'controller'
          }).
        otherwise({
          redirectTo: '/'
        });
      }
  ]);

}(angular));
