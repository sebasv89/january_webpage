// This example displays an address form, using the autocomplete feature
// of the Google Places API to help users fill in the information.

var placeSearch, autocomplete;

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('start_point_location')));

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
 alert("filled!");
}

function geolocate() {
if (navigator.geolocation) {
 navigator.geolocation.getCurrentPosition(function(position) {
   var geolocation = {
     lat: position.coords.latitude,
     lng: position.coords.longitude
   };
   var circle = new google.maps.Circle({
     center: geolocation,
     radius: position.coords.accuracy
   });
   autocomplete.setBounds(circle.getBounds());
 });
}
}
