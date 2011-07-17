DOTFILES
========

  These are my personal dotfiles.

  One important thing to remember is to run `git submodule update --init` from the .dotfiles directory,  
  and symlink .vim, .vimrc, and .gvimrc to their respectable sources:  
    - `cd; ln -s ./.dotfiles/vim .vim`  
    - `cd; ln -s ./.dotfiles/vimrc .vimrc`  
    - `cd; ln -s ./.dotfiles/gvimrc .gvimrc`  
  
  Another is to enter ~/.vim/bundle/command-t and run `rake make`
