'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

gulp.task 'default', ['watch']

gulp.task 'dev', ->
 gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin 'razor-x/vimrc'", "Plugin 'file://#{path.resolve()}/build'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/build/plugins.vim")
  .pipe gulp.dest(homePath)

gulp.task 'nodev', ->
 gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin 'file://#{path.resolve()}/build'", "Plugin 'razor-x/vimrc'")
  .pipe $.replace("#{path.resolve()}/build/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

gulp.task 'clean', ->
  del('build')

gulp.task 'build', ['clean'], ->
  gulp.src('plugin/**/*.vim')
  .pipe gulp.dest('build/plugin')

  gulp.src('*.vim')
  .pipe gulp.dest('build')

gulp.task 'watch', ['build'], ->
  $.watch ['./*.vim', './plugin/**/*.vim'], (file) ->
    if file.event is 'unlink' then del(file.path)
  .pipe gulp.dest('build')
  .pipe $.if 'plugins.vim',
    gulp.src('')
    .pipe $.exec('vim +PluginInstall +qall')
