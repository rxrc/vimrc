install_nvimrc () {

set -e
set -u

: ${XDG_CONFIG_HOME:=$HOME/.config}

echo -e "\033[32m➤ Installing!   \033[0m"

command -v nvim >/dev/null 2>&1 \
  && echo -e "\033[32m  ✔ Found         ❰ Neovim ❱   \033[0m" \
  || {
    echo -e "\033[31m  ✘ Missing       ❰ Neovim ❱   \033[0m"
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

if [ -d $XDG_CONFIG_HOME/nvim ]; then
  echo -e "\033[32m  ✔ Exists        ❰ $XDG_CONFIG_HOME/nvim ❱   \033[0m"
else
  echo -e "  ➤ Creating      ❰ $XDG_CONFIG_HOME/nvim ❱   \033[0m"

  mkdir -p $XDG_CONFIG_HOME/nvim

  echo -e "\033[32m    ✔ Created     ❰ $XDG_CONFIG_HOME/nvim ❱   \033[0m"
fi

if [ -e $XDG_CONFIG_HOME/nvim/autoload/plug.vim ]; then
  echo -e "\033[32m  ✔ Found         ❰ vim-plug ❱   \033[0m"
else
  echo -e "  ➤ Installing    ❰ vim-plug ❱   \033[0m"

  command -v git >/dev/null 2>&1 && \
    env git clone https://github.com/junegunn/vim-plug $XDG_CONFIG_HOME/nvim/autoload >/dev/null 2>&1

  echo -e "\033[32m    ✔ Installed   ❰ vim-plug ❱   \033[0m"
fi

if [ -f $XDG_CONFIG_HOME/nvim/init.vim ] || [ -h $XDG_CONFIG_HOME/nvim/init.vim ]; then
  NVIMRC_LINE=$(head -n 1 $XDG_CONFIG_HOME/nvim/init.vim);
  if [ "$NVIMRC_LINE" != '" rxrc/nvimrc' ]; then
    echo -e "  ➤  Exists       ❰ $XDG_CONFIG_HOME/nvim/init.vim ❱   \033[0m"

    mv $XDG_CONFIG_HOME/nvim/init.vim $XDG_CONFIG_HOME/nvim/init.vim.preinstall

    echo -e "\033[32m    ✔ Moved to    ❰ $XDG_CONFIG_HOME/nvim/init.vim.preinstall ❱   \033[0m"
  else
    rm $XDG_CONFIG_HOME/nvim/init.vim
  fi
fi

echo -e "  ➤ Installing    ❰ $XDG_CONFIG_HOME/nvim/init.vim ❱   \033[0m"

tee $XDG_CONFIG_HOME/nvim/init.vim >/dev/null <<EOF
" rxrc/nvimrc

" Create and set config directory.
if empty(\$XDG_CONFIG_HOME)
  let \$XDG_CONFIG_HOME = \$HOME . '/.config'
endif

" Disable powerline by default.
let g:powerline_loaded = 1

" Disable session autosave prompt.
let g:session_autosave = 'no'

" Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

call plug#begin(\$XDG_CONFIG_HOME . '/nvim/plugged')

if filereadable(\$XDG_CONFIG_HOME . '/nvim/plugged/nvimrc/plugins.vim')
  source \$XDG_CONFIG_HOME/nvim/plugged/nvimrc/plugins.vim
  if \$NVIMRC_INSTALL == 'true'
    PlugInstall
  else
    Plug 'rxrc/nvimrc'
  endif
else
  Plug 'rxrc/nvimrc', { 'on': [] }
  PlugInstall
endif

call plug#end()
EOF

echo -e "\033[32m    ✔ Installed   ❰ $XDG_CONFIG_HOME/nvim/init.vim ❱   \033[0m"

echo -e "  ➤ Run           ❰ PlugInstall ❱   \033[0m"

echo | nvim -c qall!; \
  (export NVIMRC_INSTALL=true && echo | nvim -c qall!); \
  echo; \
  echo -e "\033[32m    ✔ Completed   ❰ PlugInstall ❱   \033[0m"; \
  echo -e "\033[32m✔ Install complete!   \033[0m"; \
  exit 0
}

install_nvimrc
