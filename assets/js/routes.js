/* global locations, google, _ */
(function () {
	'use strict';

	var $routeInputs = $('#route-origin, #route-dest'),
		$routeOrigin = $('#route-origin'),
		$routeDest   = $('#route-dest'),
		$mapCanvas   = $('#map-canvas');

	var map,
		routePolyline,
		startMarker, endMarker,
		directionsService = new google.maps.DirectionsService();

	function addRouteOptions() {
		var $options = [];
		locations.forEach(function (location, key) {
			$options.push(
				$('<option>')
					.val(key)
					.text(location.name)
			);
		});

		$routeInputs.append($options);
		$routeDest
			.children()
			.eq(1)
			.attr('selected', 'selected');

		calculateRoute();
	}

	function createMap() {
		var mapOptions = {
			zoom: 16,

			// Unicamp
			center: new google.maps.LatLng(-22.8159666, -47.070069)
		};

		map = new google.maps.Map($mapCanvas[0], mapOptions);

		addRouteOptions();
	}

	function calculateRoute() {
		var origin = locations[$routeOrigin.val()],
			dest   = locations[$routeDest.val()];

		var request = {
			origin: origin.coords,
			destination: dest.coords,
			travelMode: google.maps.TravelMode.WALKING
		}

		directionsService.route(request, function (response, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				/* Clear previous routes and markers */
				if (routePolyline !== undefined) {
					routePolyline.setMap(null);
					startMarker.setMap(null);
					endMarker.setMap(null);
				}


				/* Because we'll have to extend a few routes to use paths Google
				 * doesn't recognize as walkable, we'll have to deconstruct the
				 * route object and build one ourselves.
				 */ 
				var routeCoords = [];
				response.routes[0].legs.forEach(function (leg) {
				    leg.steps.forEach(function (step) {
				        step.lat_lngs.forEach(function (latlng) {
				            routeCoords.push(latlng);
				        });
				    });
				});


				/* Add extra steps at beginning and end. */
				if (origin.extraSteps) {
					routeCoords = origin.extraSteps.concat(routeCoords);
				}

				if (dest.extraSteps) {
					routeCoords = routeCoords.concat(dest.extraSteps);
				}


				routePolyline = new google.maps.Polyline({
					path: routeCoords,
					geodesic: true,
					strokeColor: '#4499FF',
					strokeOpacity: 0.75,
					strokeWeight: 7,
					map: map
				});


				/* Add start and end markers */
				startMarker = new google.maps.Marker({
					position: origin.realCoords,
					animation: google.maps.Animation.DROP,
					icon: 'https://mts.googleapis.com/vt/icon/name=icons/spotlight/spotlight-waypoint-a.png&text=A&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1',
				});

				endMarker = new google.maps.Marker({
					position: dest.realCoords,
					animation: google.maps.Animation.DROP,
					icon: 'https://mts.googleapis.com/vt/icon/name=icons/spotlight/spotlight-waypoint-b.png&text=B&psize=16&font=fonts/Roboto-Regular.ttf&color=ff333333&ax=44&ay=48&scale=1',
				});


				/* Give the end marker a little delayed animation, for a nice
				 * visual effect.
				 */
				startMarker.setMap(map);
				setTimeout(function () {
					endMarker.setMap(map);
				}, 250);


				/* Adjust zoom to fit whole route */
				var bounds = new google.maps.LatLngBounds();

				routeCoords.forEach(function (coords) {
					bounds.extend(coords);
				});

				map.fitBounds(bounds);
			}
		});
	}

	google.maps.event.addDomListener(window, 'load', createMap);
	$routeInputs.on('change', calculateRoute);
})();