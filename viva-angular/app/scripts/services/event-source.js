'use strict';

app.factory('EventSource', function() {

  var baseUrl,
    inspeccionesUrl = {},
    arreglosUrl = {};

  baseUrl = 'http://162.243.222.54/calendario';

  inspeccionesUrl = {
    url: baseUrl + '/propietario/inspecciones'
  };

  arreglosUrl = {
    url: baseUrl + '/propietario/arreglos'
  };

  return {
    inspecciones: [inspeccionesUrl],
    arreglos: [arreglosUrl]
  };
});
