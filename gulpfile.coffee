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

gulp.task 'default', ['dev']

gulp.task 'dev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{remotePluginPath}'", "NeoBundle '#{path.resolve()}'")
  .pipe $.replace("$HOME . '/.vim/bundle/vimrc/plugins.vim'", "'' . '#{path.resolve()}/plugins.vim'")
  .pipe $.replace('$HOME/.vim/bundle/vimrc/plugins.vim', "#{path.resolve()}/plugins.vim")
  .pipe gulp.dest(homePath)

  runCommands [pluginClean, pluginUpdate, pluginInstall, pluginClean]

gulp.task 'nodev', ->
  gulp.src("#{homePath}/.vimrc")
  .pipe $.replace("NeoBundle '#{path.resolve()}'", "NeoBundle '#{remotePluginPath}'")
  .pipe $.replace("'' . '#{path.resolve()}/plugins.vim'", "$HOME . '/.vim/bundle/vimrc/plugins.vim'")
  .pipe $.replace("#{path.resolve()}/plugins.vim", '$HOME/.vim/bundle/vimrc/plugins.vim')
  .pipe gulp.dest(homePath)

  runCommands [pluginClean, pluginInstall]
