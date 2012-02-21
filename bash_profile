export EDITOR=vim
export PATH=/usr/local/share/python:/usr/local/bin:$PATH
export JSTESTDRIVER_HOME=~/bin/java
if [[ -s /Users/rolf/.rvm/scripts/rvm ]] ; then source /Users/rolf/.rvm/scripts/rvm ; fi
source ~/.bash_colors
source ~/.git-completion.sh
alias be='bundle exec'
alias mate="mvim"
export HISTTIMEFORMAT='%d %b %H:%M  '

# ACTUAL CUSTOMIZATION OH NOES!
# function minutes_since_last_commit {
#     now=`date +%s`
#     last_commit=`git log --pretty=format:'%at' -1`
#     seconds_since_last_commit=$((now-last_commit))
#     minutes_since_last_commit=$((seconds_since_last_commit/60))
#     echo $minutes_since_last_commit
# }

# grb_git_prompt() {
#     local g="$(__gitdir)"
#     if [ -n "$g" ]; then
#         local MINUTES_SINCE_LAST_COMMIT=`minutes_since_last_commit`
#         if [ "$MINUTES_SINCE_LAST_COMMIT" -gt 30 ]; then
#             local COLOR=${RED}
#         elif [ "$MINUTES_SINCE_LAST_COMMIT" -gt 10 ]; then
#             local COLOR=${YELLOW}
#         else
#             local COLOR=${GREEN}
#         fi
#         local SINCE_LAST_COMMIT="${COLOR}$(minutes_since_last_commit)m${NORMAL}"
#         # The __git_ps1 function inserts the current git branch where %s is
#         local GIT_PROMPT=`__git_ps1 "(%s|${SINCE_LAST_COMMIT})"`
#         echo ${GIT_PROMPT}
#     fi
# }

# PS1="\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\h:\W \$(grb_git_prompt) \$ "


function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]\ /'
}

PS1='\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput setaf 3)\]\h\[$(tput sgr0)\] \W \[$(tput setaf 5)\]$(parse_git_branch)\[$(tput sgr0)\]$(~/.rvm/bin/rvm-prompt i v) ($?) ∴ '

# Get the aliases and functions

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
