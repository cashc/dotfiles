export EDITOR=vim

if [ -f ~/.addons/git-completion.bash ]; then
  . ~/.addons/git-completion.bash
fi

complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make

alias edit-bash-profile='vim ~/.bash_profile'
alias cse='ssh compto51@arctic.cse.msu.edu'
alias gs='git status'
alias gr='git remote update && git rebase -i origin/master'
alias gcm='git checkout master'
alias gl='git log --oneline'
alias gcont='git add . && git rebase --continue'

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

PATH="/usr/local/bin/psql:${PATH}"
PATH="/usr/local/Cellar/ruby/2.4.1_1/bin:${PATH}"

export PYTHONUNBUFFERED=1
export FLASK_APP="flask_app"

export GEM_HOME="/usr/local/Cellar/ruby/2.4.1_1"
export GEM_PATH="/usr/local/Cellar/ruby/2.4.1_1"

export PATH

