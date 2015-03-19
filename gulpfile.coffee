'use strict'

gulp = require 'gulp'
source = require 'vinyl-source-stream'
buffer = require 'vinyl-buffer'
browserify = require 'browserify'
babelify = require 'babelify'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'build', ->
  browserify { entries: ['./src/main.es6'], extensions: ['.es6'], debug: true }
    .transform babelify
    .bundle()
    .pipe source 'bundle.js'
    .pipe buffer()
    .pipe sourcemaps.init loadMaps: true
    .pipe sourcemaps.write './'
    .pipe gulp.dest 'public'

gulp.task 'default', ['build']
