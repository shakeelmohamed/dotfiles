echo "Shak shock."

# Cross-platform notepad
alias notepad.exe="vim $@"

# Restart zsh
alias restart="exec zsh"

# Edit this file
alias shakshock="subl ~/shak.sh"

# alias for cd-ing to git dir
alias gitgit="cd ~/work/git"

# clear git cache
alias gitclear="git rm -r --cached ."

# Java env
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"

# Splunk things
alias splgo="open http://localhost:8000"

export splunks=$HOME/work/splunks

alias spls="ls ~/work/splunks"

splunk_version_file=~/splunkver
SPLUNK_VERSION_CMD()
{
    if [ "$#" -ne 1 ]; then
        cat $splunk_version_file
    else
        echo $1 > $splunk_version_file
        SPLUNK_VERSION_CMD
        restart
    fi
}
alias splver=SPLUNK_VERSION_CMD

SPLUNK_HOME_BASE=~/work/splunks/
SPLUNK_VERSION_STR=$(splver)

export SPLUNK_HOME=$SPLUNK_HOME_BASE$SPLUNK_VERSION_STR

## MANUALLY OVERRIDE SPLUNK_HOME FOR CORE
# export SPLUNK_HOME="$HOME/work/splunks/core"

# Alias to do something with splunk
SPLUNKCMD() {
    $SPLUNK_HOME/bin/splunk $@
}
alias SPLUNK=SPLUNKCMD

alias splunkrc="subl ~/.splunkrc"

alias spl="echo $SPLUNK_HOME"


# Sublime text!
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Android things
export ANDROID_HOME="/Users/smohamed/Android"
export PATH=$PATH:$ANDROID_HOME"/tools":$ANDROID_HOME"/platform-tools"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT:$PATH

if which pyenv > /dev/null;
    then eval "$(pyenv init -)";
fi

# Splunk SDK release
SDKRELCMD() {
    md5 $1
    openssl dgst -sha512 $1
}
alias SDKREL=SDKRELCMD

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# tree command
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias mvnpkg="mvn package -Dmaven.test.skip=true"

mkgo() {
    mkdir $1 && cd $1
}
# Strange hack for docker
$(boot2docker shellinit 2> /dev/null)

# Upload a Splunk app: splapp user password host path-to-app
splapp() {
    if [ "$#" -lt 4 ]; then
        echo "Usage: splapp user password host path-to-app"
    else
        curl -k -u $1:$2 "https://$3:8089/services/apps/appinstall" -d "name=$4" "${@:5}"
    fi
}