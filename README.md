# Vim Configuration

[![MIT License](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](./LICENSE.txt)

## Installation

1. Install [Vundle](https://github.com/gmarik/Vundle.vim).
2. Create `~/.vimrc` with

````vim
set nocompatible

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

Run this twice to install

````bash
$ vim +PluginInstall +qall
````

## License

This Vim configuration is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
