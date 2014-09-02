gulp = require 'gulp'
gutil = require 'gulp-util'
rsync = require 'gulp-rsync'

config = require './config.json'

watwchPath = config.target.localPath + "/**"

gulp.task 'deploy', ->
  gulp.src watwchPath
    .pipe rsync
      root: config.target.localPath
      hostname: config.target.hostname
      destination: config.target.serverPath
      recursive: true
      exclude: ['.git','.gitignore']
      args:
        a: true
        u: true
        z: true
    .on 'error', (m)->
      console.log 'エラーだお‎(´･ω･｀)'
      console.log m

gulp.task 'watch', ->
  gulp.watch watwchPath, ['deploy']

gulp.task 'default', ['watch']
