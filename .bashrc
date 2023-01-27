set -o vi

export EDITOR="vim"
export TERM="screen-256color"

ps1_date="\[$(tput bold)\]\[$(tput setaf 242)\]\$(date +'%a %b %d %H:%M:%S:%N')"
ps1_user="\[$(tput setaf 227)\]\u\[$(tput setaf 242)\]@\[$(tput setaf 227)\]\h"
ps1_path="\[$(tput setaf 242)\]\w"
ps1_lambda="\[$(tput setaf 242)\]λ\[$(tput sgr0)\]"
for x in {0..256}; do
  ps1_tester="${ps1_tester}\[$(tput setaf $x)\]$x"
done

git_prompt() {
  local ref="$(git symbolic-ref -q HEAD 2>/dev/null)"
  if [ -n "$ref" ]; then
    echo "$(tput setaf 241)(${ref#refs/heads/}) "
  fi
}

# ALIASES
alias emacs='emacs -nw'
alias vi='emacsclient -c -nw'
alias ls='ls -p'
alias p='proxychains4'
alias wget='wget --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" -w 1 --random-wait'
#alias stack='stack --extra-lib-dirs=/nix/store/31w31mc8immhpnmxvcl4l0fvc3i5iwh0-zlib-1.2.8/lib'
#alias stack='stack --nix'
alias mplayer='mplayer -fs -cache 1000'

# HISTORY
HISTCONTROL=ignoredups:erasedups
HISTIGNORE=' *'
HISTSIZE=''
shopt -s histappend

# ENV
export PS1="${ps1_date} ${ps1_user} ${ps1_path} \$(git_prompt)\n${ps1_lambda} "
export PATH=$HOME/.local/nbin:$HOME/.local/bin:$HOME/github/usr-local-bin:$PATH:$HOME/npm/bin:$HOME/github/mkbook/bin
export GPG_AGENT_INFO  # the env file does not contain the export statement
export SSH_AUTH_SOCK   # enable gpg-agent for ssh

# IT'S A TRAP
#trap 'echo -ne "\033]2;$(pwd); $(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

MAIL="/var/spool/mail/sweater" && export MAIL

# Android bullshit
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
. "$HOME/.cargo/env"

# fzf
[ -f ~/.local/nbin/fzf-bash-completion.sh ] && source ~/.local/nbin/fzf-bash-completion.sh
# Bind tab to fzf_bash_completion
bind -x '"\t": fzf_bash_completion'

source $HOME/.bashrc_essentials
