#!/bin/sh

####
# This script can be used to install tools and utilities
####


###
# Editors
###

echo "Installing Vim..."
apt-get -qy install vim

echo "Set Vim as default Git editor"
git config --global core.editor "vim"

###
# Screen multiplexers
###

echo "Installing screen and tmux"
apt-get -qy install screen tmux


###
# Utilities
###

echo "Installing ack..."
apt-get -qy install ack

echo "Installing tig..."
apt-get -qy install tig


echo "Installling htop..."
apt-get -qy install htop
