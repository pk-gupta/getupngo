/**
 * 
 */

 var autocomplete;
            function initialize() {
              autocomplete = new google.maps.places.Autocomplete(
                  (document.getElementById('autocomplete')),
                  { types: ['geocode'] });
              google.maps.event.addListener(autocomplete, 'place_changed', function() {
              });
              
              navigator.geolocation.getCurrentPosition(GetLocation);
              function GetLocation(location) {
            	  var ltln=location.coords.latitude+","+location.coords.longitude;
            	  document.getElementById('autocomplete').value=ltln;
            	  document.getElementById('radius').value=1000;
                  //alert(location.coords.accuracy);
              }
            }
            