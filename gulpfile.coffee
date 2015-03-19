gulp = require 'gulp'
source = require 'vinyl-source-stream'
browserify = require 'browserify'

gulp.task 'build', ->
  browserify entries: ['./src/main.js']
    .bundle()
    .pipe source 'bundle.js'
    .pipe gulp.dest 'public'

gulp.task 'default', ['build']
