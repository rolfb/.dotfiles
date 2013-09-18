export ACK_COLOR_MATCH='red'
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export PATH=/usr/local/share/python:/usr/local/bin:$PATH
export JSTESTDRIVER_HOME=~/bin/java
export JRUBY_OPTS="-J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -X-C -Xcompile.invokedynamic=false"
source ~/.bash_colors
source ~/.git-completion.sh
export CLICOLOR=1
alias be='bundle exec'
alias mate="mvim"
alias mvim="vim"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
export HISTTIMEFORMAT='%d %b %H:%M  '
export HISTCONTROL=ignoreboth

export REDLINE_HOME=$HOME/git/redline-smalltalk/target/redline-deploy/

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]\ /'
}

PS1='\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput setaf 3)\]\h\[$(tput sgr0)\] \W \[$(tput setaf 5)\]$(parse_git_branch)\[$(tput sgr0)\] ($?) ∴ '


mkv2mov() {
  # usage: mkv2mov video.mkv <audio kb>k
  ffmpeg -i "$1" -strict experimental -vcodec copy -acodec aac -ac 2 -ab $2 -sn -map_chapters -1 "$1.mov"
}

#autojump

export AUTOJUMP_IGNORE_CASE=1
alias jumpstat="autojump --stat"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

alias irb=pry

PATH=$PATH:/usr/local/share/npm/bin # Add NPM to PATH
