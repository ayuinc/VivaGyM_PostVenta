'use strict';

app.controller('UserCalendarCtrl', ['$scope', '$http', '$window', 'VivaCalendar', 'EventSource', function($scope, $http, $window, VivaCalendar, EventSource) {

  $scope.width = $window.innerWidth;

  $scope.$watch('width', function(width) {
    if (width < 768) {
      $scope.uiConfig = VivaCalendar.uiConfig('mobile');
    } else {
      $scope.uiConfig = VivaCalendar.uiConfig();
    }
  });

  $scope.eventSources = EventSource;
}]);
