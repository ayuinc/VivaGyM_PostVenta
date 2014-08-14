'use strict';

app.factory('Event', function() {

  var base_url = 'http://162.243.222.54/calendario';

  return {
    inspeccionesUrl: {
      url: base_url + '/propietario/inspecciones'
    },
    arreglosUrl: {
      url: base_url + '/propietario/arreglos'
    }
  };
});
