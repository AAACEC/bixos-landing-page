<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8" >
  		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" >
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,200,300|Open+Sans:400italic,400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<title>Seja bem-vindo Bixo Computação UNICAMP 2015!</title>
	</head>
	<body>
	<div id="skrollr-body" class="wrapper">
		{% include './partials/boas-vindas.swig' %}

		{% include './partials/o-curso.swig' %}

		{% include './partials/calendario.swig' %}

		{% include './partials/matricula.swig' %}

		{% include './partials/mapa.swig' %}

		{% include './partials/extra.swig' %}

		{% include './partials/help.swig' %}
	</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4CQbkdcRIS3yndQKzA-9tcLgzj0E-RV0"></script>
		<script src="assets/js/routes.js"></script>

		<script src="assets/js/vendor/skrollr.min.js"></script>
		<script src="assets/js/vendor/jquery.lazy-line-painter-1.5.1.min.js"></script>
		<script src="assets/js/vendor/jquery.animate-number.min.js"></script>
		<script>
			$(function() {
				var unique = 0;
				var s = skrollr.init({
					forceHeight: false,
					keyframe: function(element, name, direction) {
						/* In order to get element on jquery sintaxe, use $(element) */
						if(name == 'data200Top' && direction == 'down' && unique == 0 || name == 'data-200Bottom' && direction == 'up' && unique == 0) {
							$('.number').each(function() {
								$(this).text(0);
								$(this).animateNumber({
									number: $(this).attr('data-number')
								}, 1500);
							});
							unique = 1;
						}
					}
				});

				/* Adding effect to entities */
				var cards = document.querySelectorAll(".entity");
				for ( var i  = 0, len = cards.length; i < len; i++ ) {
					var card = cards[i];
					clickListener( card );
				}

				function clickListener(card) {
					card.addEventListener( "click", function() {
						var c = this.classList;
						c.contains("flipped") === true ? c.remove("flipped") : c.add("flipped");
						$(".entity").not($(this)).each(function() {
							$(this).removeClass("flipped");
						});
					});
				}

				/* Dropdown */
				$('.drop').click(function () {
					console.log("cliqueeee!");
					if($(this).hasClass('active')) {
						$(this).children('.drop_question').children('span').children('i').removeClass('fa-minus').addClass('fa-plus');
						$(this).children('.drop_answer').slideUp();
						$(this).removeClass('active');
					} else {
						$(this).children('.drop_question').children('span').children('i').removeClass('fa-plus').addClass('fa-minus');
						$(this).parent().children('.drop').not($(this)).each(function() {
							$(this).children('.drop_question').children('span').children('i').removeClass('fa-minus').addClass('fa-plus');
							$(this).children('.drop_answer').slideUp();
							$(this).removeClass('active');
						});
						$(this).children('.drop_answer').slideDown();
						$(this).addClass('active');
					}
				});

				/*
				* Lazy Line Painter - Path Object
				* Generated using 'SVG to Lazy Line Converter'
				*
				* http://lazylinepainter.info
				* Copyright 2013, Cam O'Connell
				*
				*/

				/*
				* Lazy Line Painter - Path Object
				* Generated using 'SVG to Lazy Line Converter'
				*
				* http://lazylinepainter.info
				* Copyright 2013, Cam O'Connell
				*
				*/

				var pathObj = {
					"unicamp": {
						"strokepath": [
						{
						"path": "  M169.807,181.404c-9.327-9.243-18.565-18.398-27.896-27.644c4.896-5.967,7.785-12.771,8.552-20.5c23.523,0,46.99,0,70.567,0  c0.721,3.068,2.146,5.658,4.417,7.931c-8.505,7.839-17.396,15.085-26.713,21.814c-8.138,5.878-19.464,13.185-28.776,18.31",
						"duration": 300
						},
						{
						"path": "  M109.999,7.861c0,28.636,0,57.125,0,85.646c-2.361,0.484-4.726,0.969-7.26,1.489C92.196,69.315,81.616,43.545,70.998,17.68  c11.006-5.142,26.252-9.364,39.086-9.864",
						"duration": 300
						},
						{
						"path": "  M148.342,20.952c1.15,2.515,2.906,4.555,5.276,6.24c-9.452,22.629-18.899,45.247-28.357,67.891  c-2.494-0.514-4.936-1.018-7.402-1.525c-0.217-0.799-0.313-83.607-0.076-85.708c5.031-0.512,23.38,2.16,29.332,4.28  c-0.255,2.062-0.344,5.374,1.25,8.889",
						"duration": 300
						},
						{
						"path": "  M65.558,20.559c10.527,25.58,21.058,51.17,31.57,76.714c-2.355,1.579-4.632,3.105-6.831,4.579  C71.404,82.966,52.463,64.033,33.46,45.038c4.921-6.383,22.457-19.889,32.124-24.639",
						"duration": 360
						},
						{
						"path": "  M59.804,188.884c10.207-10.201,20.358-20.348,30.586-30.57c10.106,8.093,21.637,10.4,34.408,6.92  c2.603,6.502,5.177,12.934,7.781,19.439c-5.189,3.698-7.482,8.633-6.994,14.967c-21.928,3.385-45.835,0.26-65.752-10.657",
						"duration": 300
						},
						{
						"path": "  M167.957,28.801c2.122-0.853,3.979-2.148,5.606-3.912c8.343,5.308,15.289,12.034,21.153,19.69  c-19.071,19.159-38.101,38.276-57.104,57.367c-2.277-1.531-4.459-2.997-6.757-4.542c9.416-22.504,18.864-45.088,28.35-67.757  c2.341,0.425,5.504,0.386,8.551-0.786",
						"duration": 300
						},
						{
						"path": "  M29.012,50.051C47.853,68.89,66.696,87.73,85.513,106.544c-1.361,2.067-2.803,4.256-4.33,6.575  c-23.432-9.791-46.967-19.625-70.48-29.45c0.906-6.298,10.715-25.354,18.131-33.77",
						"duration": 300
						},
						{
						"path": "  M216.388,84.76c-23.299,9.552-46.526,19.076-69.702,28.579c-1.57-2.355-3.089-4.634-4.554-6.832  c18.757-18.755,37.541-37.538,56.377-56.373c6.456,9.467,13.407,22.931,17.866,34.514",
						"duration": 300
						},
						{
						"path": "  M223.105,122.141c-0.908,1.463-1.54,3.057-1.979,4.795c-23.506,0-47,0-70.56,0c-0.499-2.542-1.001-5.108-1.546-7.887  c23.164-9.499,46.364-19.013,69.673-28.57c3.434,8.853,6.448,17.75,9.189,26.814c-1.453,1.003-3.644,3.105-4.752,4.818",
						"duration": 300
						},
						{
						"path": "  M9.189,89.633c23.274,9.73,46.448,19.418,69.585,29.091c-0.533,2.759-1.046,5.414-1.59,8.23c-22.274,0-44.586,0-67.049,0  c-1.928-10.713-2.445-25.514-0.969-37.306",
						"duration": 300
						},
						{
						"path": "  M11.87,133.262c21.888,0,43.619,0,65.312,0c0.538,2.722,1.046,5.294,1.579,7.988c-17.129,7.028-34.315,14.079-51.61,21.177  c-5.37-7.904-12.568-19.61-15.318-29.11",
						"duration": 300
						},
						{
						"path": "  M31.277,167.286c16.7-6.854,33.255-13.646,49.795-20.434c1.579,2.391,3.069,4.646,4.667,7.064  c-10.411,10.444-20.937,21.005-31.547,31.649c-7.374-4.67-17.191-11.75-22.858-18.167",
						"duration": 300
						},
						{
						"path": "  M150.841,186.058c-3.414-2.95-7.57-4.126-12.572-3.532c-2.617-6.522-5.239-13.054-7.828-19.506c2.452-1.623,4.801-3.179,7.09-4.693  c8.7,8.709,17.432,17.447,26.267,26.291c-3.204,1.618-6.466,3.267-9.805,4.952c-0.427-0.599-1.44-2.051-3.128-3.488",
						"duration": 300
						},
						{
						"path": "  M229.834,134.149c-1.021-2.125-0.984-3.171-0.985-4.036c-0.005-5.06,4.158-9.281,9.188-9.248c5.614,0.038,9.378,4.957,9.006,9.197  c0.363,4.903-4.129,9.203-9.016,9.146c-3.601-0.042-6.716-2.082-8.219-5.06",
						"duration": 300
						},
						{
						"path": "  M154.052,18.659c-0.719-1.531-0.969-2.75-0.953-4.046c-0.005-5.06,4.158-9.281,9.188-9.248c5.614,0.038,9.378,4.957,9.006,9.197  c0.363,4.903-4.129,9.203-9.016,9.146c-3.601-0.042-6.716-2.082-8.219-5.06",
						"duration": 300
						},
						{
						"path": "  M132.917,201.185c-1.021-2.125-0.984-3.172-0.985-4.036c-0.005-5.06,4.158-9.281,9.188-9.247c5.614,0.037,9.378,4.956,9.006,9.196  c0.363,4.903-4.129,9.203-9.016,9.146c-3.601-0.042-6.716-2.082-8.219-5.061",
						"duration": 300
						}
						],
						"dimensions": {
						"width": 254,
						"height": 214
						}
					}
				};

				/*
				Setup and Paint your lazyline!
				*/

				$('#unicamp').lazylinepainter({
					'svgData': pathObj,
					'strokeWidth': 2,
					'responsive': true,
					'strokeColor': '#d74030'
				}).lazylinepainter('paint');

			});
		</script>

		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-59470633-1', 'auto');
			ga('send', 'pageview');
		</script>

	</body>

</html>