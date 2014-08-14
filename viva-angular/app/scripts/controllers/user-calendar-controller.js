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

  $scope.eventSource = Event.inspeccionesUrl;

  $scope.eventSources = [$scope.eventSource];
}]);
