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
		<script src="assets/js/vendor/vivus.min.js"></script>
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

				new Vivus('animated-unicamp-svg', {
					file: '/assets/svg/unicamp.svg',
					type: 'oneByOne',
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