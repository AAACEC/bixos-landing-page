'use strict';

let gulp = require('gulp'),
	swig = require('gulp-swig'),
	sass = require('gulp-sass'),
	autoprefixer = require('gulp-autoprefixer'),
	uglify = require('gulp-uglify'),
	minifycss = require('gulp-minify-css'),
	imagemin = require('gulp-imagemin'),
	rename = require('gulp-rename'),
	concat = require('gulp-concat'),
	notify = require('gulp-notify'),
	livereload = require('gulp-livereload'),
	http = require('http'),
	st = require('st');

const vendor = {
	scripts: [
		'bower_components/vivus/dist/vivus.js',
		'bower_components/odometer/odometer.js',
		'bower_components/gsap/src/uncompressed/TweenMax.js',
		'bower_components/gsap/src/uncompressed/TimelineLite.js',
		'bower_components/scrollmagic/scrollmagic/uncompressed/ScrollMagic.js',
		'bower_components/scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap.js',
		'bower_components/scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators.js',
	],

	styles: [
		'bower_components/odometer/themes/odometer-theme-minimal.css',
	]
};

// Server - listed on localhost:8080
gulp.task('webserver', function() {
	http.createServer(
		st({
			path: __dirname + '/dist',
			index: 'index.html',
			cache: false
		})
	).listen(8080);
});

gulp.task('styles', function() {
	return gulp.src(vendor.styles.concat(['sass/styles.scss']))
		.pipe(concat('bixos.scss'))
		.pipe(sass({ outputStyle: 'expanded' }))
		.pipe(autoprefixer())
		.pipe(minifycss())
		.pipe(rename('bixos.min.css'))
		.pipe(gulp.dest('dist/css'))
		.pipe(livereload())
		.pipe(notify({ message: 'Styles task complete' }));
});

// Concatenate & Minify JS
gulp.task('scripts', function() {
	return gulp.src(vendor.scripts.concat(['js/*.js']))
		.pipe(concat('bixos.js'))
		.pipe(uglify())
		.pipe(rename('bixos.min.js'))
		.pipe(livereload())
		.pipe(gulp.dest('dist/js'));
});

// Images
gulp.task('images', function() {
	return gulp.src('img/**/*')
		.pipe(imagemin({
			optimizationLevel: 3,
			progressive: true,
			interlaced: true,
			multipass: true,
			svgoPlugins: [
				// We have to disable this plugin because it conflicts with Vivus
				// TODO: Maybe find a way to only disable it for unicamp.svg?
				{mergePaths: false},
			],
		}))
		.pipe(gulp.dest('dist/img'))
		.pipe(livereload())
		.pipe(notify({ message: 'Images task complete' }));
});

// Templates
gulp.task('templates', function() {
	return gulp.src('tpt/index.swig')
		.pipe(swig())
		.pipe(rename('index.html'))
		.pipe(gulp.dest('dist'))
		.pipe(livereload())
		.pipe(notify({ message: 'Templates task complete' }));
});

// Watch
gulp.task('watch', function() {

	// Watch .scss files
	gulp.watch('sass/**/*.scss', ['styles']);

	// Watch .js files
	gulp.watch('js/**/*.js', ['scripts']);

	// Watch image files
	gulp.watch('img/**/*', ['images']);

	// Watch template files
	gulp.watch(['tpt/**/*.swig'], ['templates']);

	// Create LiveReload server
	livereload.listen({ basePath: 'dist' });
});

gulp.task('default', ['webserver', 'styles', 'scripts', 'templates', 'watch']);