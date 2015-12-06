var fs   = require('fs-extra'),
	swig = require('swig'),
	noop = require('node-noop').noop;

// TODO: Handle multiple build configs (release/debug)
// TODO: Concatenate and minify scripts and stylesheets

fs.writeFile('dist/index.html', swig.renderFile('index.swig'));

fs.copy('assets/', 'dist/assets/', noop);
fs.copy('bower_components/vivus/dist/vivus.min.js', 'dist/assets/js/vendor/vivus.min.js', noop);

fs.copy('bower_components/odometer/themes/odometer-theme-minimal.css', 'dist/assets/css/vendor/odometer-theme-minimal.css', noop);
fs.copy('bower_components/odometer/odometer.min.js', 'dist/assets/js/vendor/odometer.min.js', noop);

fs.copy('bower_components/scrollmagic/scrollmagic/uncompressed/ScrollMagic.js', 'dist/assets/js/vendor/scrollmagic.js', noop);
fs.copy('bower_components/scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators.js', 'dist/assets/js/vendor/scrollmagic.addIndicators.js', noop);
fs.copy('bower_components/scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap.js', 'dist/assets/js/vendor/scrollmagic.gsap.js', noop);
fs.copy('bower_components/gsap/src/uncompressed/TweenMax.js', 'dist/assets/js/vendor/TweenMax.js', noop);
fs.copy('bower_components/gsap/src/uncompressed/TimelineLite.js', 'dist/assets/js/vendor/TimelineLite.js', noop);
