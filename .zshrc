# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

~/.bash_profile

# env vars
export JAVA_HOME="$(/usr/libexec/java_home -v1.8)"
export ANDROID_NDK=~/android-ndk
export ANDROID_HOME=~/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

# Add env vars to PATH
export PATH=$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/cmdline-tools/tools/bin:$PATH

# NVM
# export NVM_DIR="/Users/fshiba/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# cn () { CN_PATH="$(/Users/fshiba/node_modules/@uber/change-node/change-node run $@)" && PATH="${CN_PATH:-$PATH}"; } # change-node t.uber.com/change-node

#plugins
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

## p10k - to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## history
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## completion
fpath=(~/.zsh/zsh-completions/src $fpath)
autoload -Uz compinit
compinit

## wd
wd() {
  . /Users/fshiba/bin/wd/wd.sh
}
