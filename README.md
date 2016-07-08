<<<<<<< HEAD
=======
vagrant-yeoman-base
===================

Setting up Yeoman development environment under Vagrant. Basic steps:
---

1. Install Vagrant, VirtualBox
2. Clone/copy this repository to new *host-side* project directory
3. Run `vagrant up` - have a cup of coffee, while VM is downloading and is being setup
4. Run `vagrant ssh` to connect to client VM
5. Run `./bootstrap` to move the npm path to the vagrant user's home directory
6. Run `./update-toolset` to update npm, install Yeoman, Bower, and Grunt


Working with vagrant-yeoman-base
---

1. Put all your project related files in the **project** directory. The files in this directory will be available on the guest (after `vagrant up`) in `~/project`
2. Run `yo` and select **Install a generator** to search for published generators
3. Run `vagrant up`
4. Run `vagrant ssh`
5. Run `yo [GENERATOR]` - replace **[GENERATOR]** with the actual generator that you installed
6. Run `grunt serve`
7. Load **http://localhost:9000/** on your host machine - ports are forwarded
8. Run `grunt` to compile production version of the website
9. `exit` from the VM
10. Run `vagrant suspend` to stop VM running (this command will save the state of the VM - equivalent to putting your computer in **standby** or **sleep** mode)
