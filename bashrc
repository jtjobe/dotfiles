alias studio3='ssh centos@ec2-34-192-19-31.compute-1.amazonaws.com'
alias prodb3='ssh centos@ec2-52-203-21-244.compute-1.amazonaws.com'
alias ssh_tc_reporter='ssh -i ~/.ssh/tc_reporter.pem centos@ec2-54-87-236-71.compute-1.amazonaws.com'
# cd $APP to get to app root
# bundle exec rails c p

alias jgm1='ssh ubuntu@ec2-23-20-228-104.compute-1.amazonaws.com'
alias stats1="ssh ubuntu@ec2-52-206-251-139.compute-1.amazonaws.com"
# sudo su - deploy
# cd /var/www/tunecore/current
# bundle exec rails c p

alias sshkey='cat ~/.ssh/id_rsa.pub'

alias cpu-coffee='caffeinate -t 3600'
function coffee { caffeinate -t $((3600 * $1)); }
function ptime { ps -o etime= -p "$1"; }
function timer {
  sleep $((60 * $1));
  say "time is up mofo";
}
function make-csv {
  cat ~/Projects/custom-scripts/csv_template.rb >> $1
}

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
alias srf='spring rspec -c -fd'

alias reset-db-schema="be rake db:drop db:create db:migrate"
alias reset-db="be rake db:drop db:create db:schema:load db:migrate"
alias reset-test-db="be rake db:drop db:create db:schema:load db:migrate RAILS_ENV=test"

alias srsv='spring rails server'
alias srco='spring rails console'
alias srr='spring rake routes'
alias srs='spring rspec'

alias testlog='tail -f log/test.log'
alias devlog='tail -f log/development.log'

alias ngr='sudo pkill nginx; sudo nginx'
alias vr='vim ~/.vimrc'

# Git stuff
alias g-="git co -"
alias gb='git branch'
alias gr='git checkout master && git fetch --prune origin && git pull origin master'
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

function note {
  touch ~/WorkNotes/"$1".txt
  s ~/WorkNotes/"$1".txt
}
function notes { cd ~/WorkNotes && ls; }

# Wikis
alias wikis='cd ~/Projects/wikis/'

# Custom Scripts
alias custom='cd ~/Projects/custom-scripts/'

# Project Specific

## TC Social
alias social-up='PORT=5000 foreman start -f Procfile.development'
#alias socialup='foreman start -f Procfile.development'
alias social-import-1='rake jgm:import_artist_content QUEUE=medium SOURCES="facebook_posts youtube soundcloud mixcloud"'
alias social-import-2='rake jgm:twitter:import_pro_tweets'
alias social-import-3='rake jgm:instagram:import_media'
alias social-import-YT='rake jgm:import_artist_content QUEUE=medium SOURCES="youtube"'
alias social-import-MC='rake jgm:import_artist_content QUEUE=medium SOURCES="mixcloud"'
alias social-import-FB='rake jgm:import_artist_content QUEUE=medium SOURCES="facebook_posts"'
alias social-import-SC='rake jgm:import_artist_content QUEUE=medium SOURCES="soundcloud"'

## TC Social - Stats app
alias stats-up='PORT=9292 foreman start -f Procfile.development'
alias sinatra-c='bundle exec irb -r app.rb'

# All project shortcuts
alias tcw-re='cd ~/Projects/tc-www && gr && bers'
alias social-re='cd ~/Projects/tc-social && gr && social-up'
alias stats-re='cd ~/Projects/stats && gr && stats-up'
alias tc-reporter-re='cd ~/Projects/tc-reporter && gr && phc'
alias tcw='cd ~/Projects/tc-www'
alias social='cd ~/Projects/tc-social'
alias stats='cd ~/Projects/stats'
alias tc-reporter='cd ~/Projects/tc-reporter'
alias petri='cd ~/Projects/petri'
alias p="petri"
alias lyric='cd ~/Projects/lyric-reports'
alias blog='cd ~/Projects/blog'
alias tunecore='cd ~/Projects/tunecore'
alias saved-sql='s ~/Projects/custom-scripts/sql_queries.sql'

alias nw='<cmd>D'

# Phoenix
alias phup='mix phoenix.server'
alias phc='iex -S mix'

# Debugging
function pid_by_port { lsof -wni tcp:$1; }

eval "$(direnv hook bash)"

alias selenium="selenium-server -p 4444"
alias headlines="cd ~/Personal/headlines"
