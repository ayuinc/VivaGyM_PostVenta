'use strict';


describe('Service: EventSource', function() {

  var EventSource;

  beforeEach(module('vivaAngularApp'));
  beforeEach(inject(function(_EventSource_) {
    EventSource = _EventSource_;
  }));

  describe('URLs', function () {

    it('will return inspeccion url', function () {
      expect(EventSource.inspecciones).toBeDefined(true);
    });

    it('will return arregles url', function () {
      expect(EventSource.arreglos).toBeDefined(true);
    });
  });
});
