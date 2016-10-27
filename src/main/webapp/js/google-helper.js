// This example displays an address form, using the autocomplete feature
// of the Google Places API to help users fill in the information.

var placeSearch, autocomplete;

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
	 var options = 

	
  autocomplete = new google.maps.places.Autocomplete(document.getElementById('start_point_location'), {componentRestrictions: {country: "co"}});

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress(a,b,c) {
 var iframe = document.getElementById('routeToEventIframe');
 var selectedStartPoint = document.getElementById('start_point_location').value;
 
 refreshTrafficTime(selectedStartPoint);
 
 iframe.src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyAbG36j_XKchUFTvRcAgZoNzlOzeg2lRIk&origin=" + selectedStartPoint + "&destination=Cariva+Eventos&waypoints=Capilla+ermita+de+santa+cruz"
}

function refreshTrafficTime(startPoint){
	var endPoint = new google.maps.LatLng(6.2508654,-75.5024863);

	var service = new google.maps.DistanceMatrixService();
	service.getDistanceMatrix(
	  {
	    origins: [startPoint],
	    destinations: [endPoint],
	    travelMode: google.maps.TravelMode.DRIVING
	  }, callback);

	function callback(response, status) {
	  var expectedTime = response.rows[0].elements[0].duration.value;
	  $("#estimatedTimeSpot").empty();
	  $("#estimatedTimeSpot").append("" + Math.round(expectedTime/60) + " minutos");
	}
	$("#trafficResultDiv").css("visibility", "visible");
}
