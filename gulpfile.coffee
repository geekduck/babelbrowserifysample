gulp = require 'gulp'
source = require 'vinyl-source-stream'
browserify = require 'browserify'
babelify = require 'babelify'

gulp.task 'build', ->
  browserify { entries: ['./src/main.js'], debug: true }
    .transform babelify
    .bundle()
    .pipe source 'bundle.js'
    .pipe gulp.dest 'public'

gulp.task 'default', ['build']
