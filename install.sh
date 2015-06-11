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

if [ -e $HOME/.vim/autoload/plug.vim ]; then
  echo -e "\033[32m  ✔ Found         ❰ vim-plug ❱   \033[0m"
else
  echo -e "  ➤ Installing    ❰ vim-plug ❱   \033[0m"

  command -v git >/dev/null 2>&1 && \
    env git clone https://github.com/junegunn/vim-plug $HOME/.vim/autoload >/dev/null 2>&1

  echo -e "\033[32m    ✔ Installed   ❰ vim-plug ❱   \033[0m"
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

call plug#begin(\$HOME . '/.vim/plugged')

if filereadable(\$HOME . '/.vim/plugged/vimrc/plugins.vim')
  source \$HOME/.vim/plugged/vimrc/plugins.vim
endif

Plug 'rxrc/vimrc'

call plug#end()
EOF

echo -e "\033[32m    ✔ Installed   ❰ ~/.vimrc ❱   \033[0m"

echo -e "  ➤ Run           ❰ PlugInstall ❱   \033[0m"

vim -N -u $HOME/.vimrc -c \
  "try | PlugInstall $* | finally | qall! | endtry" \
  -U NONE -i NONE -V1 -e -s

vim -N -u $HOME/.vimrc -c \
  "try | PlugInstall $* | finally | qall! | endtry" \
  -U NONE -i NONE -V1 -e -s

echo -e "\033[32m    ✔ Completed   ❰ PlugInstall ❱   \033[0m"

echo -e "\033[32m✔ Install complete!   \033[0m"

exit 0
