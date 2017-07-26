alias sshkey='cat ~/.ssh/id_rsa.pub'
alias cpu-coffee='caffeinate -t 3600'
function coffee { caffeinate -t $((3600 * $1)); }

alias shrug="echo '¯\_(ツ)_/¯'"

alias go="open -a 'Google Chrome' https://www.noisli.com/ https://calendar.google.com/calendar/render?pli=1#main_7 https://www.pivotaltracker.com/n/workspaces/639843 https://apps.rackspace.com/a/index.php"
function goto { open -a 'Google Chrome' $1; }

alias ..='cd ..'
alias rebash='source ~/.bash_profile'
alias aliases='vim ~/.bashrc'
alias v='vim .'
alias s='sublime .'
alias e='exit'

alias be='bundle exec'
alias ber='bundle exec rspec -c -fd'
alias bers='bundle exec rails server'
alias sr='spring rspec'

alias reset-db-schema="be rake db:drop db:create db:migrate"
alias reset-db="be rake db:drop db:create db:schema:load db:migrate"
alias reset-test-db="be rake db:drop db:create db:schema:load db:migrate RAILS_ENV=test"

alias testlog='tail -f log/test.log'
alias devlog='tail -f log/development.log'

alias ngr='sudo pkill nginx; sudo nginx'
alias vr='vim ~/.vimrc'

# Git
alias g-="git co -"
alias gb='git branch'
alias gr='git checkout master && git fetch && git pull origin master'
alias gc='git checkout'
alias master='gr'
alias gbd='git branch -d'
alias gpm='git push origin master'
alias wp='git add . && git commit -m "wiki update" && git push origin master'
alias gl='git log'
alias gp='git push'
alias gpf='git push -f'
alias grn='git commit --amend'
alias gcm='git checkout master '
alias gs='git status'
alias grm='gr && git co @{-1} && git rebase master'
alias gclean="gr && git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d"
alias gd="git diff"
function con { git checkout -b $1 && git push --set-upstream origin $1; }
function ir { git rebase -i HEAD~$1; }
function nj { git add . && git commit -m ''$1''; }
function gD { git branch -D ''$1''; }

# Notes
function note {
  touch ~/WorkNotes/"$1".txt
  s ~/WorkNotes/"$1".txt
}
function notes { cd ~/WorkNotes && ls; }

# Custom Scripts
alias custom='cd ~/Projects/custom-scripts/'

# Phoenix
alias phup='mix phoenix.server'
alias phc='iex -S mix'

# Debugging
function pid_by_port { lsof -wni tcp:$1; }
function ptime { ps -o etime= -p "$1"; }

eval "$(direnv hook bash)"
