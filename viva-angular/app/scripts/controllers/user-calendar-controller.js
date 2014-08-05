'use strict';

app.controller('UserCalendarCtrl', ['$scope', '$window', '$location', 'VivaCalendar', function($scope, $window, $location, VivaCalendar) {

  $scope.width = $window.innerWidth;

  $scope.$watch('width', function(width) {
    if (width < 768) {
      $scope.uiConfig = VivaCalendar.uiConfig('mobile');
    } else {
      $scope.uiConfig = VivaCalendar.uiConfig();
    }
  });

  $scope.eventSource = {
    url: 'http://162.243.222.54/fullcalendar/new_fechas_insp.php'
  };

  $scope.eventSources = [$scope.eventSource];
}]);
