var fs   = require('fs'),
	ncp  = require('ncp'),
	swig = require('swig');

fs.writeFile('dist/index.html', swig.renderFile('index.swig'));
ncp('assets/', 'dist/assets/');
ncp('bower_components/', 'dist/bower_components/');