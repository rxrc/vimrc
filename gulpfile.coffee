'use strict'

gulp = require('gulp')
homePath = require('home-path')()
path = require('path')
$ = require('gulp-load-plugins')()

remotePluginPath = 'rxrc/vimrc'

pluginInit = 'vim -c qall! &>/dev/null'
pluginInstall = 'VIMRC_INSTALL=true vim -c PlugClean! -c qall! &>/dev/null'
pluginUpdate = 'vim -c PlugUpdate -c qall! &>/dev/null'
pluginClean = 'vim -c PlugClean! -c qall! &>/dev/null'

devStrings = [
  "call plug#begin($HOME . '/.vim/plugged.dev')"
  "Plug '#{path.resolve()}'"
  "'' . '#{path.resolve()}/plugins.vim'"
  "#{path.resolve()}/plugins.vim"
]

noDevStrings = [
  "call plug#begin($HOME . '/.vim/plugged')"
  "Plug '#{remotePluginPath}'"
  "$HOME . '/.vim/plugged/vimrc/plugins.vim'"
  '$HOME/.vim/plugged/vimrc/plugins.vim'
]

gulp.task 'default', ['dev']

gulp.task 'dev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace(noDevStrings[0], devStrings[0])
  .pipe $.replace(noDevStrings[1], devStrings[1])
  .pipe $.replace(noDevStrings[2], devStrings[2])
  .pipe $.replace(noDevStrings[3], devStrings[3])
  .pipe gulp.dest(homePath)
  .pipe $.shell([
    [pluginInstall, pluginClean, pluginUpdate].join('; ')
  ])

gulp.task 'nodev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace(devStrings[0], noDevStrings[0])
  .pipe $.replace(devStrings[1], noDevStrings[1])
  .pipe $.replace(devStrings[2], noDevStrings[2])
  .pipe $.replace(devStrings[3], noDevStrings[3])
  .pipe gulp.dest(homePath)
  .pipe $.shell([
    [pluginInit, pluginInstall, pluginInit, pluginClean, pluginUpdate].join('; ')
  ])
