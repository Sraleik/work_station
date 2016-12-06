#!/bin/bash

## Git

git config --global user.email "nicolas.rotier@gmail.com"
git config --global user.name "Sraleik"

git config --global push.default simple

npm_path=`which npm`

if [ ${npm_path} = '' ]
then
  ./install_node
fi

sudo npm install -g diff-so-fancy

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

git config --global color.ui "always"

git config --global color.diff.meta "yellow bold"
git config --global color.diff.commit "green bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "green bold"


git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

