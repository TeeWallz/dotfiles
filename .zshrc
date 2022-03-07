# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
alias config='/usr/bin/git --git-dir=/home/tom/.dotfiles/ --work-tree=/home/tom'

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

function sshtmp
 {
     ssh -o "ConnectTimeout 3" \
         -o "StrictHostKeyChecking accept-new" \
         -o "UserKnownHostsFile /dev/null" \
              "$@"
 }
 function scptmp
 {
     exec scp -o "ConnectTimeout 3" \
         -o "StrictHostKeyChecking accept-new" \
         -o "UserKnownHostsFile /dev/null" \
         "$@"
 }
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export AWS_PROFILE="stax-stax-au1-versent"
export EDITOR=nano
