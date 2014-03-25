vagrancy
========

Attempt to build a vagrant snapshot ready for Rails development.

## Instructions

### Installing Vagrant

1. Install [VirtualBox](https://www.virtualbox.org/) from dmg
1. Install [Vagrant](http://www.vagrantup.com/) from pkg

At this point, you should be able to create your own `Vagrantfile` and play with Vagrant if you want. However, follow the instructions below to setup an Ubuntu 12.04 (aka 'precise') vm ready for rails app development.

### Preparing the Vagrant VM

(Still on your local machine, not the VM yet)

1. Clone the depo to a customly named folder ('my_application_name' in this example), `git clone git@github.com:ajsharma/vagrancy.git my_application_name`
1. `cd my_application_name`
1. Run `vagrant up` to install and start the Vagrant box specified in the `Vagrantfile` (run this in the future to boot up the server)
1. Go get some lunch, this will take a little while.

### Interacting with the Vagrant VM

1. Run `vagrant ssh` to connect to the VM box
1. Once connected, the synced folder for your rails app can be found in the `/vagrant` _and_ in `/my_application_name`

### Start with Rails

Run inside the VM

1. Run `cd /my_application_name`
1. Run `gem install rails --no-rdoc --no-ri --conservative`
1. Run `rails new . --database=postgresql`, you'll probably be asked if you want to override your `.gitignore`, you can, but the current gitignore is already setup for rails 3.2+.
1. Sadly, there is one file edit required.  Open `/my_application_name/config/database.yml` and set your development username to `vagrant` and password to `password`.
1. Run `rails s`
1. Visit [http://localhost:3000/](http://localhost:3000/) in your browser!