'use strict';

describe('Controller: UserCalendarCtrl', function() {

  var controller,
    mockScope,
    VivaCalendar;

  beforeEach(module('vivaAngularApp', 'ui.calendar'));

  beforeEach(inject(function($controller, $rootScope, _VivaCalendar_) {
    mockScope = $rootScope.$new();
    controller = $controller('UserCalendarCtrl', {
      $scope: mockScope
    });
    VivaCalendar = _VivaCalendar_;
  }));

  describe('Calendar resize based on width', function() {

    beforeEach(function() {
      mockScope.width = 700;
      mockScope.$apply();
    });

    it('should set a width', function() {
      expect(mockScope.width).toEqual(700);
    });

    it('should call mobile', function() {
      expect(mockScope.uiConfig).toEqual(VivaCalendar.uiConfig('mobile'));
    });

    it('should call mobile', function() {
      mockScope.width = 1000;
      mockScope.$apply();
      expect(mockScope.uiConfig).toEqual(VivaCalendar.uiConfig());
    });
  });

  describe('event sources', function(){
    it('should return event sources', function() {
      expect(mockScope.eventSources).toEqual([mockScope.eventSource]);
    });

    it('should take event source', function(){
      expect(mockScope.eventSource.url).toEqual('http://162.243.222.54/fullcalendar/new_fechas_insp.php');
    });
  });
});
