'use strict'

gulp = require('gulp')
homePath = require('home-path')()
path = require('path')
exec = require('child_process').exec
$ = require('gulp-load-plugins')()

runCommands = (commands) ->
  exec commands.join('; '),
    (err, stdout, stderr) ->
      process.stdout.write stdout
      process.stdout.write stderr

remotePluginPath = 'rxrc/vimrc'

vimCommand = (command) -> [
  'vim'
  "-u #{homePath}/.vimrc"
  "-c #{command}"
  "-c qall"
  "&>/dev/null"
].join(' ')

pluginInstall = vimCommand 'PlugUpdate'
pluginUpdate  = vimCommand 'PlugInstall'
pluginClean   = vimCommand 'PlugClean!'

devStrings = [
  "Plug '#{path.resolve()}'"
  "'' . '#{path.resolve()}/plugins.vim'"
  "#{path.resolve()}/plugins.vim"
]

noDevStrings = [
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
  .pipe gulp.dest(homePath)

  runCommands [pluginClean, pluginUpdate, pluginInstall, pluginClean]

gulp.task 'nodev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace(devStrings[0], noDevStrings[0])
  .pipe $.replace(devStrings[1], noDevStrings[1])
  .pipe $.replace(devStrings[2], noDevStrings[2])
  .pipe gulp.dest(homePath)

  runCommands [pluginClean, pluginInstall]
