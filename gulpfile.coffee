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
  '-N'
  "-u #{homePath}/.vimrc"
  "-c \"try | #{command} $* | finally | qall | endtry\""
  '-U NONE'
  '-i NONE'
  '-V1'
  '-e'
  '-s'
].join(' ')

pluginInstall = vimCommand 'NeoBundleUpdate'
pluginUpdate  = vimCommand 'NeoBundleInstall'
pluginClean   = vimCommand 'NeoBundleClean!'

devStrings = [
  "NeoBundle '#{path.resolve()}'"
  "'' . '#{path.resolve()}/plugins.vim'"
  "#{path.resolve()}/plugins.vim"
]

noDevStrings = [
  "NeoBundle '#{remotePluginPath}'"
  "$HOME . '/.vim/bundle/vimrc/plugins.vim'"
  '$HOME/.vim/bundle/vimrc/plugins.vim'
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
