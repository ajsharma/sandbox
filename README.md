vagrancy
========

Attempt to build a vagrant snapshot ready for Rails development.

## Instructions

### Installing Vagrant

1. Install [VirtualBox](https://www.virtualbox.org/) from dmg
1. Install [Vagrant](http://www.vagrantup.com/) from pkg

At this point, you should be able to create your own `Vagrantfile` and play with Vagrant if you want. However, do the following to setup an Ubuntu 12.04 (aka 'precise') vm ready for rails app development.

### Prepare to up the Vagrant VM

1. Install [ruby](https://www.ruby-lang.org/en/), if you don't have it on your local machine already (we won't be using this version of ruby for actual development work, so any modern ruby will do).
1. In your command terminal, change your directory to your folder with this depo's code
1. Run `gem install librarian-chef` to install [Librarian-Chef](https://github.com/applicationsonline/librarian-chef)
1. Run `librarian-chef install` to install the appropriate [Chef](https://github.com/opscode/chef) cookbooks (these are the specific instructions for installing complex requirements like RVM and Postgresql)

### Interacting with the Vagrant VM

1. Run `vagrant up` to install and start the Vagrant box specified in the `Vagrantfile` (run this in the future to boot up the server)
1. Run `vagrant ssh` to connect to the VM box
1. Once connected, the synced folder for your rails app can be found in the `/vagrant`