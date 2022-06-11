# PATH
## Git
export PATH=/usr/local/bin/git:$PATH

## Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# エイリアス
alias gitls='git branch --list'
alias gitupdate='(){git pull && git pull origin $1}'
alias gitupdate:cancel='git merge --abort'
alias gitupdate:reset='git reset --hard HEAD'
alias gitcd='git checkout'
alias gitfeature='(){git checkout -b feature/$1 develop}'
alias githotfix='(){git checkout -b hotfix/$1 stg}'
alias gitname='git symbolic-ref --short HEAD'
alias gitprune='git branch --merged | grep -vE '\''^\*|master$|develop$|stg$|qa$|prd$'\'' | xargs -p -I % git branch -d % && git fetch --prune'

# gitの補完設定
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '
