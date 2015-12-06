<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8" >
  		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" >
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,200,300|Open+Sans:400italic,400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bixos.min.css">
		<title>Seja bem-vindo Bixo Computação UNICAMP 2015!</title>
	</head>
	<body>
	<div id="skrollr-body" class="wrapper">
		{% include 'boas-vindas.swig' %}

		{% include 'o-curso.swig' %}

		{% include 'calendario.swig' %}

		{% include 'matricula.swig' %}

		{% include 'mapa.swig' %}

		{% include 'extra.swig' %}

		{% include 'help.swig' %}
	</div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4CQbkdcRIS3yndQKzA-9tcLgzj0E-RV0"></script>

		<script src="js/bixos.min.js"></script>
		<script>
			$(function() {
				'use strict';
				var controller = new ScrollMagic.Controller();

				new ScrollMagic.Scene({
					triggerElement: '.odometer',
					triggerHook: 'onEnter'
				})
				.addTo(controller)
				.addIndicators()
				.on('start', () => {
					[].slice.call(document.querySelectorAll('.odometer')).forEach(od => {
						od.innerHTML = od.dataset.odometerValue;
					});
				});

				function buildTimeline(el) {
					return new TimelineLite()
						.to(el, 1, { transform: 'translate(0, 0)', ease: Cubic.easeOut }, 0)
						.to(el, 1, { opacity: 1, ease: Linear.easeNone }, 0);
				}

				[].slice.call(document.querySelectorAll('.timeline > li')).forEach(li => {
					new ScrollMagic.Scene({
						triggerElement: li,
						triggerHook: .90,
						offset: (Math.random() * -300),
						duration: 200 + (Math.random() * 300)
					})
					.addTo(controller)
					.addIndicators()
					.setTween(buildTimeline(li));
				});

				[].slice.call(document.querySelectorAll('.infoList > li')).forEach(li => {
					new ScrollMagic.Scene({
						triggerElement: li,
						triggerHook: .75,
						offset: -100 + (Math.random() * -200),
						duration: 200 + (Math.random() * 100)
					})
					.addTo(controller)
					.addIndicators()
					.setTween(buildTimeline(li));
				});

				[].slice.call(document.querySelectorAll('.docsList > li')).forEach(li => {
					new ScrollMagic.Scene({
						triggerElement: li,
						triggerHook: .75,
						offset: -100 + (Math.random() * -200),
						duration: 200 + (Math.random() * 100)
					})
					.addTo(controller)
					.addIndicators()
					.setTween(buildTimeline(li));
				});

				[].slice.call(document.querySelectorAll('.entity')).forEach(card => {
					card.addEventListener('click', () => {
						let flipCard = !card.classList.contains('flipped');

						[].slice.call(document.querySelectorAll('.entity')).forEach(card2 => {
							card2.classList.remove('flipped');
						});

						if (flipCard) {
							card.classList.add('flipped');
						}
					});
				});

				/* Dropdown */
				[].slice.call(document.querySelectorAll('.drop')).forEach(question => {
					question.addEventListener('click', () => {
						let openQuestion = !question.classList.contains('active');

						[].slice.call(document.querySelectorAll('.drop')).forEach(question2 => {
							let icon = question2.querySelector('.drop_question .fa');

							question2.classList.remove('active');
							icon.classList.remove('fa-minus');
							icon.classList.add('fa-plus');
						});

						if (openQuestion) {
							let icon = question.querySelector('.drop_question .fa');

							question.classList.add('active');
							icon.classList.add('fa-minus');
							icon.classList.remove('fa-plus');
						}
					});
				});

				new Vivus('animated-unicamp-svg', {
					file: 'img/unicamp.svg',
					type: 'oneByOne',
					start: 'autostart',
					duration: 300,
				});
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