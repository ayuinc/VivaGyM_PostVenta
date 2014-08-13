'use strict';

app.service('Event', ['$http', '$q', function($http, $q) {

  var inspectionUrl,
    getJson,
    removeBooked,
    uniqueEvents,
    formatDate,
    defer;

  inspectionUrl = 'http://162.243.222.54/calendario/propietario/inspecciones';

  var getJson = function(calendar_url) {
    $http.get(calendar_url)
      .success(function(data) {
        console.log(data);
        return data;
      });
  };

  this.unbookedInspections = function() {
    getJson(inspectionUrl);
  };


  //return {
    //unbookedInspections: function() {
      //return $http.get(inspectionUrl)
        //.then(function(response){
        //if(typeof response.data === 'object') {
			//return response.data;
          //} else {
            //return $q.reject(response.data);
		//}
        //}, function(response){
		//return $q.reject(response.data);
	//});
    //}
  //}
}]);
