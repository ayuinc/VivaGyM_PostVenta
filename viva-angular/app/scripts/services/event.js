'use strict';

app.factory('Event', function() {
  var base_url = 'http://162.243.222.54/calendario'
  return {
    inspeccionesUrl: base_url + '/propietario/inspecciones',
    arreglosUrl: base_url + '/propietario/arreglos'
    }
});
