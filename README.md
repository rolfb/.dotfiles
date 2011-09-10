DOTFILES
========

  These are my personal dotfiles.

  One important thing to remember is to run `git submodule update --init` from the .dotfiles directory,  
  and symlink .vim, .vimrc, and .gvimrc to their respectable sources:  
  
  `ln -s vim ~/.vim`  
  `ln -s vimrc ~/.vimrc`  
  `ln -s gvimrc ~/.gvimrc`  
  
  Another is to enter ~/.vim/bundle/command-t and run `rake make`
