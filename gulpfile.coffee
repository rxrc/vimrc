'use strict'

gulp = require('gulp')
del = require('del')
path = require('path')
homePath = require('home-path')()
$ = require('gulp-load-plugins')()

remotePluginPath = 'razor-x/vimrc'
pluginPath = "#{homePath}/.vim/bundle/vimrc"
vimCmd = (cmd) ->
  "vim -N -u #{homePath}/.vimrc -c \"try | #{cmd} $* | finally | qall | endtry\" -U NONE -i NONE -V1 -e -s"

pluginInstall = () -> $.shell(vimCmd 'NeoBundleUpdate')
pluginUpdate = () -> $.shell(vimCmd 'NeoBundleInstall')
pluginClean = () -> $.shell(vimCmd 'NeoBundleClean!')

gulp.task 'default', ['dev']

gulp.task 'dev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{remotePluginPath}'", "NeoBundle '#{path.resolve()}'")
  .pipe $.replace("~/.vim/bundle/vimrc/plugins.vim", "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginClean()
  .pipe pluginUpdate()
  .pipe pluginInstall()
  .pipe pluginClean()

gulp.task 'nodev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{path.resolve()}'", "NeoBundle '#{remotePluginPath}'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", "~/.vim/bundle/vimrc/plugins.vim")
  .pipe gulp.dest(homePath)

  gulp.src('')
  .pipe pluginClean()
  .pipe pluginInstall()
