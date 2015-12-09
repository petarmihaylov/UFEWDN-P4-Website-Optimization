vagrant-yeoman-base
===================

Setting up Yeoman development environment under Vagrant. Basic steps: 

1. Install Vagrant, VirtualBox
2. Clone/copy this repository to new *host-side* project directory
3. Run **vagrant up** - have a cup of cofee, while VM is downloading and is being setup
4. Run **vagrant ssh** to connect to client VM
5. Put all your project related files in the **project** directory. The files in this directory will be available on the guest (after **vagrant up**) in `~/project`
6. Run `yo` and select **Install a generator** to search for published generators
7. Run **yo [GENERATOR]** - replace **[GENERATOR]** with the actual generator that you installed
8. Run **grunt serve**
9. Load **http://localhost:9000/** on your host machine - ports are forwarded
10. Run **grunt** to compile production version of the website
11. **exit** from the VM
i15. Run **vagrant suspend** to stop VM running

