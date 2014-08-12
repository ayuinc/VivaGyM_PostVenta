'use strict';

app.controller('UserCalendarCtrl', ['$scope', '$window', '$location', 'VivaCalendar', 'Event', function($scope, $window, $location, VivaCalendar, Event) {

  $scope.width = $window.innerWidth;

  $scope.$watch('width', function(width) {
    if (width < 768) {
      $scope.uiConfig = VivaCalendar.uiConfig('mobile');
    } else {
      $scope.uiConfig = VivaCalendar.uiConfig();
    }
  });

  //$scope.eventSource = {
    //url: 'http://162.243.222.54/calendario/propietario/inspecciones'
  //};

  //$scope.eventSources = [$scope.eventSource];
  $scope.eventSources = Event.availableInspections();
}]);
