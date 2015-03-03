echo "Shak shock."

# Edit this file
alias shakshock="subl ~/shak.sh"

# alias for cd-ing to git dir
alias gitgit="cd ~/work/git"

# clear git cache
alias gitclear="git rm -r --cached ."

# Java env
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"

# Splunk things
alias splunks="cd ~/work/splunks"

SPLUNK_HOME_BASE=~/work/splunks/splunk
SPLUNK_VERSION_STR="613"

export SPLUNK_HOME=$SPLUNK_HOME_BASE$SPLUNK_VERSION_STR

# Alias to do something with splunk
SPLUNKCMD() {
    $SPLUNK_HOME/bin/splunk $@
}
alias SPLUNK=SPLUNKCMD

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