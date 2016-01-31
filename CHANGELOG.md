# Changelog

## HEAD

- Use `npm start` and `npm stop`.

## 2.1.1

- Add `npm-debug.log` to .gitignore.
- Minor README updates.

## 2.1.0

- Use local gulp.
- Update development dependences.

## 2.0.3

- Wrap install script in function.
- Use `~/.vim/plugged.dev` for development mode.

## 2.0.2

- Use vim-plug suggested `[]` in `.vimrc`.

## 2.0.1

- Fix issue where install script would fail
  when piped to shell.

## 2.0.0

- Replace [NeoBundle] with [vim-plug].
  * Remove and reinstall `~/.vim` before updating.
  * Update any NeoBundle style directives with Plug ones.

[NeoBundle]: https://github.com/Shougo/neobundle.vim
[vim-plug]: https://github.com/junegunn/vim-plugvim-plug

## 1.2.2

- Minor gulpfile optimizations.

## 1.2.1

- Replace gulp-shell with node exec.

## 1.2.0

**Rerunning the install script is recommended.**

- Use $HOME over ~.

## 1.1.0

- Improve switching between dev and nodev mode.
- Use XDG cache directory.

## 1.0.0

- Replace [Vundle] with [NeoBundle].
  * Remove and reinstall `~/.vim` before updating.
  * Update any Vundle style directives with NeoBundle ones.

[NeoBundle]: https://github.com/Shougo/neobundle.vim
[Vundle]: https://github.com/gmarik/Vundle.vim

## 0.1.0

- Initial release.
