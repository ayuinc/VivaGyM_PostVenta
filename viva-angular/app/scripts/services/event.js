'use strict';

app.service('Event', ['$http', '$q', function($http, $q) {

  var inspectionUrl,
    getJson,
    removeBooked,
    uniqueEvents,
    formatDate,
    defer;

  inspectionUrl = 'http://162.243.222.54/calendario/propietario/inspecciones';

  function getJson(url) {
    defer = $q.defer();

    defer.promise
      .then(function(url) {
        return $http.get(url);
      })
      .then(function(json) {
        _.chain(json.resultados)
          .remove(function(event) { return event.cliente_id == "" })
          .value();
      });

    defer.resolve(url);
  }

  this.availableInspections = getJson(inspectionUrl);
      //get json
      //remove those with cliente_id
      //format the date
      //display only unique


  //getJson = function(url) {
    //deferred = $q.defer();

    //$http.get(url)
      //.success(function(data) {
        //deferred.resolve(data);
      //})
      //.error(function(data) {
        //deferred.reject(data);
      //});

    //return deferred.promise;
  //};
}]);
