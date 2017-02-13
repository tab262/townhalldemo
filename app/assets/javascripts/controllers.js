(function (angular) {

  var HomeController = function(EventServiceFactory){
    var self = this;
    self.moc_name = "";
    self.results = ""
    self.eventService = EventServiceFactory();

    self.getEvent = function(data) {
      console.log("hey");
      console.log(self.moc_name);
      data = {}
      data['moc_name'] = self.moc_name
      var promise = self.eventService.getEvents(data);
      promise.then(
          function(payload) {
            console.log(payload)
            self.results = payload.data
          }
          );
    };
  };

  HomeController.$inject = ['EventServiceFactory'];

  angular.module('townhallApp.controllers').controller('HomeController', HomeController);

}(angular));
