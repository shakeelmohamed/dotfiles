echo "Shak shock."

# alias for cd-ing to git dir
alias gitgit="cd ~/work/git"

# Java env
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"

# Splunk things
alias splunks="cd ~/work/splunks"

SPLUNK_HOME_BASE=~/work/splunks/splunk
SPLUNK_VERSION_STR="622"

export SPLUNK_HOME=$SPLUNK_HOME_BASE$SPLUNK_VERSION_STR

# Alias to do something with splunk
SPLUNKCMD() {
    $SPLUNK_HOME/bin/splunk $@
}
alias SPLUNK=SPLUNKCMD
