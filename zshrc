# Locale vars
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export PATH=/usr/local/share/python:~/bin:/usr/local/bin:$PATH

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
alias irb="pry"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Chruby
. /usr/local/opt/chruby/share/chruby/chruby.sh
. /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.1

# Functions

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]\ /'
}