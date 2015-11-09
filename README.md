# Neovim Configuration

[![Github Releases](https://img.shields.io/github/release/rxrc/nvimrc.svg)](https://github.com/rxrc/nvimrc/releases)
[![GitHub license](http://img.shields.io/github/license/rxrc/nvimrc.svg)](./LICENSE.txt)

My complete Neovim configuration as a Neovim plugin.

## Description

This configuration system works as a meta-plugin:
all desired Neovim plugins are loaded from `plugins.vim` using [vim-plug].
Overall configuration then follows a normal plugin structure.

[vim-plug]: https://github.com/junegunn/vim-plug

## Installation

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
2. Create `~/.config/nvim/init.vim` with

  ```vim
  " rxrc/nvimrc

  " Create and set config directory.
  if empty($XDG_CONFIG_HOME)
    let $XDG_CONFIG_HOME = $HOME . '/.config'
  endif

  " Disable powerline by default.
  let g:powerline_loaded = 1

  " Disable session autosave prompt.
  let g:session_autosave = 'no'

  " Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif

  call plug#begin($XDG_CONFIG_HOME . '/nvim/plugged')

  if filereadable($XDG_CONFIG_HOME . '/nvim/plugged/nvimrc/plugins.vim')
    source $XDG_CONFIG_HOME/nvim/plugged/nvimrc/plugins.vim
    if $NVIMRC_INSTALL == 'true'
      PlugInstall
    else
      Plug 'rxrc/nvimrc'
    endif
  else
    Plug 'rxrc/nvimrc', { 'on': [] }
    PlugInstall
  endif

  call plug#end()
  ```

3. Run

  ```
  $ nvim -c qall!
  $ NVIMRC_INSTALL=true nvim -c qall!
  ```

## Updating

Updating is handled via the normal [vim-plug commands].

Here is an example of a Zsh function that will provide a one-step update:

```zsh
# Upgrade nvimrc.
function nvimupg () {
  if ! [[ -e $XDG_CONFIG_HOME/nvim/autoload/plug.vim ]]; then
    echo 'vim-plug is not installed.'
    return 1
  fi

  nvim -c PlugUpgrade -c qall
  nvim -c PlugUpdate -c qall
  nvim -c PlugInstall -c qall
  nvim -c PlugClean! -c qall
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
2. Replace any instance of `rxrc/nvimrc`
   with the path to your repository's location.
   If you do not host this on GitHub,
   you may need to adjust the repository path appropriately.
3. Customize `package.json`.
4. Update `install.sh` on the `gh-pages` branch.
5. Update the urls for the install script in this README.

Here is an example of a command you can use to make replacements:

```
$ git ls-files -z | xargs -0 sed -i 's/rxrc\/nvimrc/username\/nvimrc/g'
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
$ npm run dev
```

If you modify `plugins.vim`,
run `npm run dev` again to reconfigure the plugins.

To switch out of development mode run

```
$ npm run nodev
```

[Gulp]: http://gulpjs.com/
[npm]: https://www.ruby-lang.org/en/

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/rxrc/nvimrc/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This Neovim configuration is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
