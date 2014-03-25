vagrancy
========

Build a [Vagrant](http://www.vagrantup.com/) snapshot ready for Rails (or any application) development.

## In the Box

An Ubuntu 12.04 x64 VM (aka 'precise') installed on your machine with:

1. Git (latest from apt-get)
2. NodeJS 0.6.12 which can be [easily updated](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)
1. The latest stable [RVM](http://rvm.io/) release
1. A ruby 2.0.0 gemset named after your application and set to the default
1. Postgresql 9.3 with development database created for the `vagrant` user
1. A blank slate for creating new applications without the worries of destroying your own machine

Note, this VM was put together with easy and rapid development in mind, so avoid using it in production.

## Instructions

### Installing Vagrant

_Perform the following once per development machine_

1. Install [VirtualBox](https://www.virtualbox.org/) from dmg
1. Install [Vagrant](http://www.vagrantup.com/) from pkg

At this point, you could create your own `Vagrantfile` and play with Vagrant if you want. However, follow the instructions below to complete the setup of the box.

### Preparing the Vagrant VM

_Perform the following for each new project you want to create in a new sandbox_

1. Clone the depo to a customly named folder ('my_application_name' in this example), `git clone git@github.com:ajsharma/vagrancy.git my_application_name`.
1. `cd my_application_name`
1. Run `vagrant up` to install and start the Vagrant box specified in the `Vagrantfile` (run this in the future to boot up the server)
1. Go get some lunch, this will take a little while.

### Interacting with the Vagrant VM

1. Run `vagrant ssh` to connect to the VM box
1. Once connected, the synced folder for your rails app can be found in the `/vagrant` _and_ in `/my_application_name`

### Testing Successful Setup
1. Run `rvm list gemsets` and you should see the installed rubies as well as a gemset for your application.
1. Run `nodejs -v` and you should see a node install greater than 0.10
1. Run `npm -v` and you should see a node install greater than 1.4

### Start with Rails

Run inside the VM

1. Run `cd /my_application_name`
1. Run `gem install rails --no-rdoc --no-ri --conservative`
1. Run `rails new . --database=postgresql`, you'll probably be asked if you want to override your `.gitignore`, you can, but the current gitignore is already setup for rails 3.2+.
1. Sadly, there is one file edit required.  Open `/my_application_name/config/database.yml` and set your development username to `vagrant` and password to `password`. Note: you can edit your local _or_ the vm file as they are now synced.
1. Run `rails s`
1. Visit [http://localhost:3000/](http://localhost:3000/) in your browser!

## Troubleshooting

The most common (and only) problem that I've come across was download failures during the `vagrant up` process.  Running `vagrant destroy` and then `vagrant up` is the simplest way to attempt it again, but time consuming.  Running `vagrant provision` should hopefully fix it without as much time lost.
