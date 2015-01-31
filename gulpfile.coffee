'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

pluginPath = "#{homePath}/.vim/bundle/vimrc"

installBundle = () -> $.shell('vim -c PluginInstall -c quitall')

gulp.task 'default', ['watch']

gulp.task 'dev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin 'razor-x/vimrc'", "Plugin 'file://#{path.resolve()}'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('').pipe installBundle()
  gulp.src('').pipe installBundle()

gulp.task 'nodev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin 'file://#{path.resolve()}'", "Plugin 'razor-x/vimrc'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('').pipe installBundle()
  gulp.src('').pipe installBundle()

gulp.task 'clean', ->
  del(pluginPath, {force: true})

gulp.task 'install', ['build'], ->
  gulp.src('').pipe installBundle()

gulp.task 'build', ['clean'], ->
  gulp.src('plugin/**/*.vim')
  .pipe gulp.dest("#{pluginPath}/plugin")

  gulp.src('*.vim')
  .pipe gulp.dest(pluginPath)

gulp.task 'watch', ['install'], ->
  $.watch ['./*.vim', './plugin/**/*.vim'], (file) ->
    if file.event is 'unlink' then del(file.path, {force: true})
    if file.relative is 'plugins.vim' then gulp.src('').pipe installBundle()
  .pipe gulp.dest(pluginPath)
