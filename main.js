
// require.config({
//     paths: {
//         foo: 'libs/foo-1.1.3'
//     }
// });

// require(["esri/layers/FeatureLayer"], function(FeatureLayer) { 



  var map = L.map('map').setView([37.75, -122.23], 10);
    map.on('locationfound', function(e) {
    console.log(e.latlng);
    map.setView(e.latlng, 14);


  });
  
  map.locate();

qwest.get('http://google.com')
     .then(function(xhr, response) {
        alert(response);
     });

  console.log(  L.esri.FeatureLayer);
  L.esri.basemapLayer('Topographic').addTo(map);

  L.esri.featureLayer({
    url: 'https://services.arcgis.com/rOo16HdIMeOBI4Mb/arcgis/rest/services/Heritage_Trees_Portland/FeatureServer/0'
  }).addTo(map);

console.log(L.esri.featureLayer);

   // });


