'use strict';

describe('Service: VivaCalendar', function() {

  var VivaCalendar;

  beforeEach(module('vivaAngularApp'));
  beforeEach(inject(function(_VivaCalendar_) {
    VivaCalendar = _VivaCalendar_;
  }));

  describe('uiCalendar', function () {

    it('should return a calendar object', function () {
      expect(VivaCalendar.uiConfig).toBeDefined(true);
    });
  });
});
