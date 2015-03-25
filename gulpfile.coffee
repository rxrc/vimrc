'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

remotePluginPath = 'razor-x/vimrc'
pluginPath = "#{homePath}/.vim/bundle/vimrc"

pluginInstall = () -> $.shell('vim -c NeoBundleInstall -c quitall')
pluginUpdate = () -> $.shell('vim -c NeoBundleUpdate -c quitall')
pluginClean = () -> $.shell('vim -c NeoBundleClean -c quitall')

gulp.task 'default', ['watch']

gulp.task 'dev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{remotePluginPath}'", "NeoBundle 'file://#{path.resolve()}'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginInstall()
  .pipe pluginInstall()
  .pipe pluginClean()

gulp.task 'nodev', ->
  del(pluginPath, {force: true})

  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle 'file://#{path.resolve()}'", "NeoBundle '#{remotePluginPath}'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginInstall()
  .pipe pluginInstall()
  .pipe pluginClean()

gulp.task 'clean', ->
  del(pluginPath, {force: true})

gulp.task 'install', ['build'], ->
  gulp.src('')
  .pipe pluginInstall()

gulp.task 'build', ['clean'], ->
  gulp.src('*.vim')
  .pipe gulp.dest(pluginPath)

  gulp.src('plugin/**/*.vim')
  .pipe gulp.dest("#{pluginPath}/plugin")

gulp.task 'watch', ['install'], ->
  $.watch ['./*.vim', './plugin/**/*.vim'], (file) ->
    if file.event is 'unlink' then del(file.path, {force: true})
    if file.relative is 'plugins.vim' then gulp.src('').pipe pluginInstall()
  .pipe gulp.dest(pluginPath)
