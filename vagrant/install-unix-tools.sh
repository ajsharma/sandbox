#!/bin/sh

####
# This script can be used to install tools and utilities
####


###
# Editors
###

echo "Installing Vim..."
apt-get -qq install vim

echo "Set Vim as default Git editor"
git config --global core.editor "vim"

###
# Screen multiplexers
###

echo "Installing screen and tmux"
apt-get -qq install screen tmux


###
# Utilities
###

echo "Installing ack..."
apt-get -qq install ack

echo "Installing tig..."
apt-get -qq install tig


echo "Installling htop..."
apt-get -qq install htop