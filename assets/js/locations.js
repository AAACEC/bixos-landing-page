/* global _, window */
(function () {
	'use strict';

	window.locations = [
		{
			name        : 'Avenida 1',
			description : 'Está é a Avenida 1.',
			coords : {
				lat: -22.822154,
				lng: -47.069878
			}
		},
		{
			name        : 'Avenida 2',
			description : 'Está é a Avenida 2.',
			coords : {
				lat: -22.818535,
				lng: -47.072872
			}
		},
		{
			name        : 'FEA',
			description : 'Faculdade de Engenharia de Alimentos.',
			coords : {
				lat: -22.819872,
				lng: -47.066756
			},
			extraSteps  : [
				{
					lat: -22.820190,
					lng: -47.067314
				}
			]
		},
	];

	_.each(window.locations, function (location) {
		location.coords = new google.maps.LatLng(location.coords.lat, location.coords.lng);

		if (location.extraSteps) {
			location.extraSteps = _.map(location.extraSteps, function (step) {
				return new google.maps.LatLng(step.lat, step.lng);
			});

			location.realCoords = _.last(location.extraSteps);
		} else {
			location.realCoords = location.coords;
		}
	});
})();