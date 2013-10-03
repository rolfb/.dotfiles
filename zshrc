# Locale vars
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=$LANG

# Set editor
export editor="vim"

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

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Chruby
. /usr/local/opt/chruby/share/chruby/chruby.sh
. /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.0
# Functions

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]\ /'
}
