'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

remotePluginPath = 'razor-x/vimrc'
pluginPath = "#{homePath}/.vim/bundle/vimrc"

installBundle = () -> $.shell('vim -c PluginInstall -c quitall')
cleanBundle = () -> $.shell('vim -c PluginClean -c quitall')

gulp.task 'default', ['watch']

gulp.task 'dev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin '#{remotePluginPath}'", "Plugin 'file://#{path.resolve()}'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe installBundle()
  .pipe cleanBundle()

gulp.task 'nodev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("Plugin 'file://#{path.resolve()}'", "Plugin '#{remotePluginPath}'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe installBundle()
  .pipe installBundle()
  .pipe cleanBundle()

gulp.task 'clean', ->
  del(pluginPath, {force: true})

gulp.task 'install', ['build'], ->
  gulp.src('')
  .pipe installBundle()

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
