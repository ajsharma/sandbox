#!/bin/sh

####
# This script can be used to setup development (vagrant) environments
####

###
# Set correct locale
###
echo "Setting locale"
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

###
# Set the time zone
###
echo "Setting timezone to UTC"
echo "Etc/UTC" | sudo tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

###
# Update apt-get
###
echo "Updating apt-get"
apt-get -qy update

echo "Installing libraries from apt-get"
apt-get -qy install curl build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev git-core libpq-dev

###
# Install latest git
###
echo "Installing/updating git"
apt-get -qy install python-software-properties
add-apt-repository ppa:git-core/ppa
apt-get -qy update
apt-get -qy install git
