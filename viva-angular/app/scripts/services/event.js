'use strict';

app.service('Event', ['$http', '$q', function($http, $q) {

  var inspectionUrl,
    getJson,
    removeBooked,
    uniqueEvents,
    formatDate,
    defer,
    unbookedEvents;

  inspectionUrl = 'http://162.243.222.54/calendario/propietario/inspecciones';

  return {
    unbookedEvents: function() {
      return $http.get(inspectionUrl)
        .then(function(response){
    	  if(typeof response.data === 'object') {
	    return response.data;
          } else {
            return $q.reject(response.data);
	  }
        }, function(response){
	  return $q.reject(response.data);
	});
    }
  }

}]);
