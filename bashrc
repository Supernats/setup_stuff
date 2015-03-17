
MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

# update bash history after each command
export PROMPT_COMMAND="history -a"

# use vi for console
set -o vi

# I never remember to prefer pry
# alias irb='pry'

PATH=$PATH:$HOME/.rvm/bin
source ~/.rvm/scripts/rvm
source $rvm_path/scripts/completion

alias vim='mvim -v'
alias vi='mvim -v'
export EDITOR='mvim -v'

# tmux stuff
alias mux="tmux -2"
alias muxjoin='tmux -2 new-session -t 0'

alias rawless='less -R'

# export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/games/bin

alias hist='history | rawless'
# Ruby stuff
alias berake='bundle exec rake'
alias be='bundle exec'

# git stuff
alias gcom='git commit'
alias gdiff='git diff --color=always | less -R'
alias gist='gist --copy'
alias git='hub'
eval "$(hub alias -s)"
alias masterbase='git rebase master'
alias fetchup='git fetch upstream master'
alias mastermerge='git merge --ff-only upstream/master'
alias tagless='git tag -l | less'
alias fuckitall='git checkout -- ./'
alias stagecoach='git diff --color=always --staged | less -R'

# git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# iOS stuff
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app'

# zeus stuff
alias ztest='zeus test'
alias zconsole='zeus console'
alias zdb='zeus dbconsole'
alias zrake='zeus rake'
alias zgen='zeus generate'

# ctag stuff
alias banksy='ctags -R -f ./.tags .'

# highlight
alias rubylight='pbpaste | highlight --syntax=rb -O rtf | pbcopy'

# random stuff I stole from Ned
PROMPT_COLOR='\e[00m\e[38;05;166m'
PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '
PS2='> '
export PS1 PS2
export PATH=/usr/local/bin:$PATH

# put this in bashprofile
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
