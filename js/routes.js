/* global google */
(function () {
	'use strict';

	var $routeOrigin = document.querySelector('#route-origin'),
		$routeDest   = document.querySelector('#route-dest'),
		$mapCanvas   = document.querySelector('#map-canvas');

	var map,
		directionsDisplay,
		directionsService = new google.maps.DirectionsService();

	function createMap() {
		var mapOptions = {
			zoom: 16,
			scrollwheel: false,

			// Unicamp
			center: new google.maps.LatLng(-22.8159666, -47.070069),
		};

		map = new google.maps.Map($mapCanvas, mapOptions);

		directionsDisplay = new google.maps.DirectionsRenderer();
		directionsDisplay.setMap(map);

		calculateRoute();
	}

	function calculateRoute() {
		var origin = $routeOrigin.value.split(','),
			dest   = $routeDest.value.split(',');

		var request = {
			origin: new google.maps.LatLng(parseFloat(origin[0], 10), parseFloat(origin[1], 10)),
			destination: new google.maps.LatLng(parseFloat(dest[0], 10), parseFloat(dest[1], 10)),
			travelMode: google.maps.TravelMode.WALKING,
		};

		directionsService.route(request, function (response, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(response);
			}
		});
	}

	google.maps.event.addDomListener(window, 'load', createMap);

	$routeOrigin.addEventListener('change', calculateRoute);
	$routeDest.addEventListener('change', calculateRoute);
})();