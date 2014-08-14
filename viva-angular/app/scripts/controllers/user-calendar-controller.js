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

  $scope.eventSource = 'http://162.243.222.54/calendario/propietario/inspecciones';

  $scope.eventSources = [$scope.eventSource];
}]);
