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

  Event.unbookedInspections()
    .then(function(data) {
      console.log(data); 
    }, function() {
      console.log("error");
    });
}]);
