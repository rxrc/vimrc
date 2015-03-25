'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

remotePluginPath = 'razor-x/vimrc'
pluginPath = "#{homePath}/.vim/bundle/vimrc"

pluginInstall = () -> $.shell('vim -c NeoBundleInstall -c quitall')
pluginClean = () -> $.shell('vim -c NeoBundleClean! -c quitall')

gulp.task 'default', ['dev']

gulp.task 'clean', ->
  del(pluginPath, {force: true})

gulp.task 'dev', ['clean'], ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{remotePluginPath}'", "NeoBundle '#{path.resolve()}'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginInstall()
  .pipe pluginInstall()
  .pipe pluginClean()

gulp.task 'nodev', ['clean'], ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{path.resolve()}'", "NeoBundle '#{remotePluginPath}'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginInstall()
  .pipe pluginInstall()
  .pipe pluginClean()
