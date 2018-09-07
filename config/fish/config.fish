# ------------------------------
# fish configuration
# ------------------------------
set -x LANG C

## Editor
set -x EDITOR vim
set -x VISUAL $EDITOR


## Paths
# - local scripts
set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/.bin/local $PATH

# - homebrew
set -x PATH /usr/local/bin /usr/local/sbin $PATH

# - nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# - composer
# set -x PATH $HOME/.composer/vendor/bin $PATH

# - Android SDK
# set -x ANDROID_HOME /Developer/SDKs/android-sdk-macosx
# set -x PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools

## rbenv
status --is-interactive; and source (rbenv init -|psub)


# Emacs
set -x PATH /Applications/Emacs.app/Contents/MacOS/bin $PATH

# VS Code
set -x PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH


## Aliases
alias vim="reattach-to-user-namespace vim"
alias vi="vim"
alias e $EDITOR
alias j z
alias mkdir "mkdir -p"
alias sourcetree='open -a sourcetree'
alias cliptmux="tmux showb|pbcopy"
alias del=rmtrash
alias https='http --default-scheme=https'
alias less='less -R'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias youtube-dl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"

# Python3 as default python
alias python2=/usr/bin/python2.7
alias pip2=/usr/local/bin/pip
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3


## Sync history between the settions
function sync_history --on-event fish_preexec
    history --save
    history --merge
end
