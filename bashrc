alias rebash='source ~/.bash_profile'
alias aliases='vim ~/.bashrc'

alias be='bundle exec'
alias ber='bundle exec rspec'
alias testlog='tail -f log/test.log'
alias ngr='sudo pkill nginx; sudo nginx'
alias vr='vim ~/.vimrc'

# Git stuff
alias gr='git checkout master && git fetch && git pull origin master'
alias gc='git checkout'
alias gbd='git branch -d'

# Project Specific
alias bers='bundle exec rails server'
alias jgup='PORT=5000 foreman start -f Procfile.development'
alias statsup='PORT=9292 foreman start -f Procfile.development'

alias tcw-re='cd ~/Projects/tc-www && gr && bers'
alias jgm-re='cd ~/Projects/jgm && gr && jgup'
alias stats-re='cd ~/Projects/stats && gr && statsup'

# Phoenix
alias phup='mix phoenix.server'
alias phc='iex -S mix'
