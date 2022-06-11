#!/bin/bash

START_POSITION=$(pwd)
echo $START_POSITION
cd ~

DIR=".zsh"
if [ ! -d $DIR ];then
  mkdir .zsh
fi
cd .zsh

GIT_PROMPT="git-prompt.sh"
if [ ! -e $GIT_PROMPT ];then
  curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

GIT_COMPLETION_BASH="git-completion.bash"
if [ ! -e $GIT_COMPLETION_BASH ];then
  curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

GIT_COMPLETION_ZSH="_git"
if [ ! -e $GIT_COMPLETION_ZSH ];then
  curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

source ~/.zshrc
cd $START_POSITION
