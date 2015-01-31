# Vim Configuration

[![MIT License](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](./LICENSE.txt)

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

[Vundle]: https://github.com/gmarik/Vundle.vim

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
$ vim -c VundleUpdate -c quitall
$ vim -c VundleUpdate -c quitall
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

[Gulp]: http://gulpjs.com/
[npm]: https://www.ruby-lang.org/en/

## License

This Vim configuration is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
