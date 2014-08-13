'use strict';

app.controller('UserCalendarCtrl', ['$scope', '$http', '$window', 'VivaCalendar', 'Event', function($scope, $http, $window, VivaCalendar, Event) {

  $scope.width = $window.innerWidth;

  $scope.$watch('width', function(width) {
    if (width < 768) {
      $scope.uiConfig = VivaCalendar.uiConfig('mobile');
    } else {
      $scope.uiConfig = VivaCalendar.uiConfig();
    }
  });

  var inspectionUrl = 'http://162.243.222.54/calendario/propietario/inspecciones';

  $scope.events = [];
  $scope.eventSources = [];

  $http.get(inspectionUrl)
    .success(function(data) {
      console.log(data);
      $scope.events = data;
      $scope.eventSources = [$scope.events];
      $scope.renderCalender = function(calendar) {
            calendar.fullCalendar('render');
          };
    });



  //Event.unbookedInspections()
    //.then(function(data) {
      //console.log(data); 
    //}, function() {
      //console.log("error");
    //});
}]);
