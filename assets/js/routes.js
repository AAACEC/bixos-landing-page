/* global google */
(function () {
	'use strict';

	var $routeInputs = $('#route-origin, #route-dest'),
		$routeOrigin = $('#route-origin'),
		$routeDest   = $('#route-dest'),
		$mapCanvas   = $('#map-canvas');

	var map,
		directionsDisplay,
		directionsService = new google.maps.DirectionsService();

	function createMap() {
		var mapOptions = {
			zoom: 16,

			// Unicamp
			center: new google.maps.LatLng(-22.8159666, -47.070069)
		};

		map = new google.maps.Map($mapCanvas[0], mapOptions);

		directionsDisplay = new google.maps.DirectionsRenderer();
		directionsDisplay.setMap(map);

		calculateRoute();
	}

	function calculateRoute() {
		var origin = $routeOrigin.val().split(','),
			dest   = $routeDest.val().split(',');

		var request = {
			origin: new google.maps.LatLng(parseFloat(origin[0], 10), parseFloat(origin[1], 10)),
			destination: new google.maps.LatLng(parseFloat(dest[0], 10), parseFloat(dest[1], 10)),
			travelMode: google.maps.TravelMode.WALKING
		}

		console.log(request);

		directionsService.route(request, function (response, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(response);
			}
		});
	}

	google.maps.event.addDomListener(window, 'load', createMap);
	$routeInputs.on('change', calculateRoute);
})();