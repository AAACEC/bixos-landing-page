var fs   = require('fs-extra'),
	swig = require('swig'),
	noop = require('node-noop').noop;

fs.writeFile('dist/index.html', swig.renderFile('index.swig'));
fs.copy('assets/', 'dist/assets/', noop);
fs.copy('bower_components/vivus/dist/vivus.min.js', 'dist/assets/js/vendor/vivus.min.js', noop);