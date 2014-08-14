'use strict';


describe('Service: Event', function() {

  var Event;

  beforeEach(module('vivaAngularApp'));
  beforeEach(inject(function(_Event_) {
    Event = _Event_;
  }));

  describe('URLs', function () {

    it('will return inspeccion url', function () {
      expect(Event.inspeccionesUrl).toBeDefined(true);
    });

    it('will return arregles url', function () {
      expect(Event.arreglosUrl).toBeDefined(true);
    });
  });
});
