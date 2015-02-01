# Vim Configuration

[![MIT License](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](./LICENSE.txt)

My complete Vim configuration as a Vim plugin.

This configuration system works as a meta-plugin:
all desired Vim plugins are loaded from `plugins.vim` using [Vundle].
Overall configuration then follows a normal plugin structure.

## Installation

### Automatic Install

You can install this via the command-line with either curl

````bash
curl -L https://io.evansosenko.com/vimrc/install.sh | sh
````

or wget

````bash
wget https://io.evansosenko.com/vimrc/install.sh -O - | sh
````

### Manual Install

1. Install [Vundle].
2. Create the `~/.vim/backup` directory.
3. Create `~/.vimrc` with

````vim
" razor-x/vimrc
set nocompatible

" Disable powerline by default.
let g:powerline_loaded = 1

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'razor-x/vimrc'

if filereadable(expand('~/.vim/bundle/vimrc/plugins.vim'))
  source ~/.vim/bundle/vimrc/plugins.vim
endif

call vundle#end()
filetype plugin indent on
````

and run this to install

````bash
$ vim -c PluginUpdate -c quitall
$ vim -c PluginUpdate -c quitall
$ vim -c PluginClean -c quitall
````

## Updating

Updating is handled via the normal [Vundle] update command

````bash
$ vim -c PluginUpdate -c quitall
$ vim -c PluginUpdate -c quitall
$ vim -c PluginClean -c quitall
````

Note that `PluginUpdate` must be run twice: first to update this plugin,
then again to correctly update any new plugins specified in `plugsin.vim`.

I recommend adding an alias to your shell

````bash
if [[ -d ~/.vim/bundle/Vundle.vim ]]; then
  alias vimupg='vim -c PluginUpdate -c quitall && vim -c PluginUpdate -c quitall && vim -c PluginClean -c quitall'
fi
````

## Customization

You can customize this configuration or manage your own in the same way.

1. Clone or fork this.
2. Replace any instance of `razor-x/vimrc`
   with the path to your repository's location.
   If you do not host this on GitHub,
   you may need to adjust the repository path appropriately.
3. Customize `package.json`.
4. Update `install.sh` on the `gh-pages` branch.
5. Update the urls for the install script in this README.

Here is an example of a command you can use to make replacements:

````bash
git ls-files -z | xargs -0 sed -i 's/razor-x\/vimrc/username\/vimrc/g'
````

## Development

You can use [Gulp] to watch for changes and automatically update
the plugin locally when files in your development directory change.

First, follow the normal install steps if you haven't already.
Then, install the development dependences via [npm] with

````bash
$ [sudo] npm install --global gulp
$ npm install
````

Enter development mode with

````bash
$ gulp dev
````

and then start gulp with

````bash
$ gulp
````

To switch out of development mode run

````bash
$ gulp nodev
````

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/razor-x/vimrc/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This Vim configuration is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.

[Gulp]: http://gulpjs.com/
[npm]: https://www.ruby-lang.org/en/
[Vundle]: https://github.com/gmarik/Vundle.vim
