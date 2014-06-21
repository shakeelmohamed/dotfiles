# Execute .bashrc
source ~/.bashrc

source ~/.nvm/nvm.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Heroku alias for adding the postgres addon to an app
PostgresHeroku() {
	heroku addons:add heroku-postgresql --app $1
}
alias herokuPG=PostgresHeroku

# Heroku alias for doing things with an apps config
HerokuConfig() {
	heroku config:$1 --app $2
}
alias herokuConf=HerokuConfig

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Splunk home path
SPLUNK_HOME="/Users/smohamed/Downloads/splunk"
export SPLUNK_HOME

# Alias for cd-ing to git dir
alias gitgit="cd ~/git"
