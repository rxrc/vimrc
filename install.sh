set -e

echo -e "\033[32m➤ Installing!   \033[0m"

hash git >/dev/null 2>&1 \
  && echo -e "\033[32m  ✔ Found         ❰ Git ❱   \033[0m" \
  || {
    echo -e "\033[31m  ✘ Missing       ❰ Git ❱   \033[0m"
    echo -e "\033[31m✘ Install failed!"
    exit 1
  }

if [[ -d ~/.vim ]]; then
  echo -e "\033[32m  ✔ Exists        ❰ ~/.vim ❱   \033[0m"
else
  echo -e "  ➤ Creating       ❰ ~/.vim ❱   \033[0m"

  mkdir -p ~/.vim

  echo -e "\033[32m    ✔ Created     ❰ ~/.vim ❱   \033[0m"
fi

if [[ -d ~/.vim/backup ]]; then
  echo -e "\033[32m  ✔ Exists        ❰ ~/.vim/backup ❱   \033[0m"
else
  echo -e "  ➤ Creating       ❰ ~/.vim/backup ❱   \033[0m"

  mkdir -p ~/.vim/backup

  echo -e "\033[32m    ✔ Created     ❰ ~/.vim/backup ❱   \033[0m"
fi

if [[ -d ~/.vim/bundle/Vundle.vim ]]; then
  echo -e "\033[32m  ✔ Found         ❰ Vundle ❱   \033[0m"
else
  echo -e "  ➤ Installing     ❰ Vundle ❱   \033[0m"

  hash git >/dev/null 2>&1 && \
    env git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim >/dev/null 2>&1

  echo -e "\033[32m    ✔ Installed   ❰ Vundle ❱   \033[0m"
fi

if [[ -f ~/.vimrc ]] || [[ -h ~/.vimrc ]]; then
  if [[ `head -n 1 ~/.vimrc` != '" razor-x/vimrc' ]]; then
    echo -e "  ➤  Exists        ❰ ~/.vimrc ❱   \033[0m"

    mv ~/.vimrc ~/.vimrc.preinstall

    echo -e "\033[32m    ✔ Moved to    ❰ ~/.vimrc.preinstall ❱   \033[0m"
  fi

  rm ~/.vimrc
fi

echo -e "  ➤ Installing     ❰ ~/.vimrc ❱   \033[0m"

tee ~/.vimrc >/dev/null <<EOF
" razor-x/vimrc
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
EOF

echo -e "\033[32m    ✔ Installed   ❰ ~/.vimrc ❱   \033[0m"

echo -e "  ➤ Run            ❰ VundleUpdate ❱   \033[0m"

sh -c '</dev/tty vim -c VundleUpdate -c quitall'
sh -c '</dev/tty vim -c VundleUpdate -c quitall'

echo -e "\033[32m    ✔ Completed   ❰ VundleUpdate ❱   \033[0m"

echo -e "\033[32m✔ Install complete!   \033[0m"

exit 0
