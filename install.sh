set -e

echo -e "\033[32m➤ Installing!   \033[0m"

command -v vim >/dev/null 2>&1 \
  && echo -e "\033[32m  ✔ Found         ❰ Vim ❱   \033[0m" \
  || {
    echo -e "\033[31m  ✘ Missing       ❰ Vim ❱   \033[0m"
    echo -e "\033[31m✘ Install failed!"
    exit 1
  }

command -v git >/dev/null 2>&1 \
  && echo -e "\033[32m  ✔ Found         ❰ Git ❱   \033[0m" \
  || {
    echo -e "\033[31m  ✘ Missing       ❰ Git ❱   \033[0m"
    echo -e "\033[31m✘ Install failed!"
    exit 1
  }

if [ -d $HOME/.vim ]; then
  echo -e "\033[32m  ✔ Exists        ❰ ~/.vim ❱   \033[0m"
else
  echo -e "  ➤ Creating      ❰ ~/.vim ❱   \033[0m"

  mkdir -p $HOME/.vim

  echo -e "\033[32m    ✔ Created     ❰ ~/.vim ❱   \033[0m"
fi

if [ -d $HOME/.vim/bundle/neobundle.vim ]; then
  echo -e "\033[32m  ✔ Found         ❰ NeoBundle ❱   \033[0m"
else
  echo -e "  ➤ Installing    ❰ NeoBundle ❱   \033[0m"

  command -v git >/dev/null 2>&1 && \
    env git clone https://github.com/shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim >/dev/null 2>&1

  echo -e "\033[32m    ✔ Installed   ❰ NeoBundle ❱   \033[0m"
fi

if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]; then
  VIMRC_LINE=$(head -n 1 $HOME/.vimrc);
  if [ "$VIMRC_LINE" != '" rxrc/vimrc' ]; then
    echo -e "  ➤  Exists       ❰ ~/.vimrc ❱   \033[0m"

    mv $HOME/.vimrc $HOME/.vimrc.preinstall

    echo -e "\033[32m    ✔ Moved to    ❰ ~/.vimrc.preinstall ❱   \033[0m"
  else
    rm $HOME/.vimrc
  fi
fi

echo -e "  ➤ Installing    ❰ ~/.vimrc ❱   \033[0m"

tee $HOME/.vimrc >/dev/null <<EOF
" rxrc/vimrc

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

NeoBundle 'shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\   },
\ }

if filereadable(expand('~/.vim/bundle/vimrc/plugins.vim'))
  source ~/.vim/bundle/vimrc/plugins.vim
endif

NeoBundle 'rxrc/vimrc'

call neobundle#end()
EOF

echo -e "\033[32m    ✔ Installed   ❰ $HOME/.vimrc ❱   \033[0m"

echo -e "  ➤ Run           ❰ neoinstall ❱   \033[0m"

$HOME/.vim/bundle/neobundle.vim/bin/neoinstall >/dev/null 2>&1
$HOME/.vim/bundle/neobundle.vim/bin/neoinstall >/dev/null 2>&1

echo -e "\033[32m    ✔ Completed   ❰ neoinstall ❱   \033[0m"

echo -e "\033[32m✔ Install complete!   \033[0m"

exit 0
