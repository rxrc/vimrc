# Vim Configuration

[![MIT License](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](./LICENSE.txt)

My complete Vim configuration as a Vim plugin.

## Description

This configuration system works as a meta-plugin:
all desired Vim plugins are loaded from `plugins.vim` using [NeoBundle].
Overall configuration then follows a normal plugin structure.

[NeoBundle]: https://github.com/Shougo/neobundle.vim

## Installation

### Automatic Install

You can install this via the command-line with either curl

```bash
$ curl -L https://io.evansosenko.com/vimrc/install.sh | sh
```

or wget

```bash
$ wget https://io.evansosenko.com/vimrc/install.sh -O - | sh
```

### Manual Install

1. Install [NeoBundle].
2. Create the `~/.vim/backup` directory.
3. Create `~/.vimrc` with

```vim
" razor-x/vimrc

" Disable powerline by default.
let g:powerline_loaded = 1

" Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
 if &compatible
   set nocompatible
 endif

 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'shougo/neobundle.vim'
NeoBundle 'razor-x/vimrc'

if filereadable(expand('~/.vim/bundle/vimrc/plugins.vim'))
  source ~/.vim/bundle/vimrc/plugins.vim
endif

call neobundle#end()
```

and run this to install

```bash
$ vim -c NeoBundleInstall -c quitall
$ vim -c NeoBundleInstall -c quitall
$ vim -c NeoBundleClean! -c quitall
```

## Updating

Updating is handled via the normal [NeoBundle] update command

```bash
$ vim -c NeoBundleUpdate -c quitall
$ vim -c NeoBundleInstall -c quitall
$ vim -c NeoBundleClean! -c quitall
```

## Customization

You can customize this configuration or manage your own in the same way.

1. Clone or fork this.
   If you prefer a clean start, clone the `minimal` branch:
   it has the same structure and development tools but with
   a very minimal configuration.
2. Replace any instance of `razor-x/vimrc`
   with the path to your repository's location.
   If you do not host this on GitHub,
   you may need to adjust the repository path appropriately.
3. Customize `package.json`.
4. Update `install.sh` on the `gh-pages` branch.
5. Update the urls for the install script in this README.

Here is an example of a command you can use to make replacements:

```bash
$ git ls-files -z | xargs -0 sed -i 's/razor-x\/vimrc/username\/vimrc/g'
```

## Development

You can use [Gulp] to watch for changes and automatically update
the plugin locally when files in your development directory change.

First, follow the normal install steps if you haven't already.
Then, install the development dependences via [npm] with

```bash
$ [sudo] npm install --global gulp
$ npm install
```

Enter development mode with

```bash
$ gulp dev
```

and then start gulp with

```bash
$ gulp
```

To switch out of development mode run

```bash
$ gulp nodev
```

[Gulp]: http://gulpjs.com/
[npm]: https://www.ruby-lang.org/en/

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
