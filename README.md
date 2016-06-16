# Vim Configuration

[![Github releases](https://img.shields.io/github/release/rxrc/vimrc.svg)](https://github.com/rxrc/vimrc/releases)
[![GitHub license](http://img.shields.io/github/license/rxrc/vimrc.svg)](./LICENSE.txt)

**If you are creating a new config, use [makenew/nvimrc].**

If you still need to make a legacy Vim config,
the `minimal` branch remains a stable starting point.

[makenew/nvimrc]: https://github.com/makenew/nvimrc

My complete Vim configuration as a Vim plugin.
For an empty starting config that follows the same organization,
switch to the `minimal` branch.

Note that versioned released are cut from the `minimal` branch,
and changes between those releases are documented in the
[CHANGELOG](./CHANGELOG.md).
The `master` branch represents my current Vim environment,
and is intended to remain unversioned.

## Description

This configuration system works as a meta-plugin:
all desired Vim plugins are loaded from `plugins.vim` using [vim-plug].
Overall configuration then follows a normal plugin structure.

For documentation of the methodology behind my specific
Vim environment, including tips, usage, and a reference of custom mappings,
see `:help rxrc/vimrc` or view [vimrc.txt](./doc/vimrc.txt) directly.

[vim-plug]: https://github.com/junegunn/vim-plug

## Installation

### Required Packages

- The [fzf] binary (vim-plug is not configured to manage it here).
  Additionally, [urxvt] is configured as the fzf launcher for Gvim.
- [The Silver Searcher], aka Ag.
- See [vim-fireplace] for the Clojure specific plugin dependences.

[fzf]: https://github.com/junegunn/fzf
[The Silver Searcher]: http://geoff.greer.fm/ag/
[urxvt]: http://software.schmorp.de/pkg/rxvt-unicode.html
[vim-fireplace]: https://github.com/tpope/vim-fireplace

### Required Fonts

This configuration uses [Inconsolata-g], and
vim-airline is set to use [Powerline fonts].

[Inconsolata-g]: https://github.com/powerline/fonts/tree/master/Inconsolata-g
[Powerline fonts]: https://github.com/powerline/fonts

### Automatic Install

You can install this via the command-line with either curl

```
$ curl -L https://git.io/vJAzK | sh
```

or wget

```
$ wget https://git.io/vJAzK -O - | sh
```

### Manual Install

1. Install [vim-plug].
2. Create `~/.vimrc` with

  ```vim
  " rxrc/vimrc

  " Disable powerline by default.
  let g:powerline_loaded = 1

  " Disable session autosave prompt.
  let g:session_autosave = 'no'

  " Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif

  call plug#begin($HOME . '/.vim/plugged')

  if filereadable($HOME . '/.vim/plugged/vimrc/plugins.vim')
    source $HOME/.vim/plugged/vimrc/plugins.vim
    if $VIMRC_INSTALL == 'true'
      PlugInstall
    else
      Plug 'rxrc/vimrc'
    endif
  else
    Plug 'rxrc/vimrc', { 'on': [] }
    PlugInstall
  endif

  call plug#end()
  ```

3. Run

  ```
  $ vim -c qall!
  $ VIMRC_INSTALL=true vim -c qall!
  ```

## Updating

Updating is handled via the normal [vim-plug commands].

Here is an example of a Zsh function that will provide a one-step update:

```zsh
# Upgrade vimrc.
function vimupg () {
  if ! [[ -e $HOME/.vim/autoload/plug.vim ]]; then
    echo 'vim-plug is not installed.'
    return 1
  fi

  vim -c PlugUpgrade -c qall
  vim -c PlugUpdate -c qall
  vim -c PlugInstall -c qall
  vim -c PlugClean! -c qall
}
```

[vim-plug commands]: https://github.com/junegunn/vim-plug#commands

## Customization

You can customize this configuration or manage your own in the same way.

1. Clone or fork this.
   If you prefer a clean start, clone the `minimal` branch:
   it has the same structure and development tools but with
   a very minimal configuration.
   Tagged releases are based on that branch.
2. Replace any instance of `rxrc/vimrc`
   with the path to your repository's location.
   If you do not host this on GitHub,
   you may need to adjust the repository path appropriately.
3. Customize `package.json`.
4. Update `install.sh` on the `gh-pages` branch.
5. Update the urls for the install script in this README.

Here is an example of a command you can use to make replacements:

```
$ git ls-files -z | xargs -0 sed -i 's/rxrc\/vimrc/username\/vimrc/g'
```

## Development

You can use [Gulp] to switch to development mode
which will configure vim-plug to use the development
directory as the plugin path.

First, follow the normal install steps if you haven't already.
Then, install the development dependences via [npm] with

```
$ npm install
```

Enter development mode with

```
$ npm start
```

If you modify `plugins.vim`,
run `npm run dev` again to reconfigure the plugins.

Switch out of development mode with

```
$ npm stop
```

[Gulp]: http://gulpjs.com/
[npm]: https://www.ruby-lang.org/en/

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/rxrc/vimrc/fork).
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
