(function (angular) {

  var EventService = function($http){
    var service = this;


    service.getEvents = function(data){
      console.log(data);
      return $http({
        url: 'api/mocs/',
        params: data,
        dataType: 'json',
        method: 'GET'
      });
    };

  };

  var EventServiceFactory = function($http) {
    var factory = function(){
      return new EventService($http);
    };
    return factory;
  };

  EventServiceFactory.$inject=['$http'];
  angular.module('townhallApp.services').factory('EventServiceFactory', EventServiceFactory);

}(angular));
