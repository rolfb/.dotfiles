# Locale vars
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export GOPATH=~/go
export PATH=/usr/local/share/python:~/bin:/usr/local/bin:/usr/local/share/npm/bin:$GOPATH/bin:$PATH

# Set editor
export EDITOR="vim"

# Completion

autoload -U compinit
compinit -i

# Bind keys to something besides vim bindings
bindkey -e

# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt hist_ignore_dups
setopt histignorespace

# Prompt
setopt prompt_subst

PROMPT="%F{blue}${SSH_TTY+%n@%m:}%2~%f \$(parse_git_branch) %(0?..%F{red})%%%(1j.%%.)%f "
export PROMPT

# Aliases

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"

# Autojump
export AUTOJUMP_KEEP_SYMLINKS=1
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Chruby
. /usr/local/opt/chruby/share/chruby/chruby.sh
. /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.1

# Functions

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]\ /'
}
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/Users/rolf/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
