# Environment Provisioning Kit
Engineering stakeholders often need to rebuild the same environments.  This
combines Vagrant with Chef (chef-client - zero mode) to rebuild the same
environment on any machine.

### Running

on your workstation:

    vagrant up

this will run a script to grab the latest chef-client version as part of the standard provision process

    vagrant ssh

on the VM: 

    cd /vagrant
    sudo chef-client -z -c config.rb -j run_list.json
    
    
### Example

This environment deploy creates a mysql server, accessible with a local "root" username and "change me" password.  Note: Additional MySQL permissions would need to be granted to connect from the host machine.

Connect to mysql with:

    mysql -S /var/run/mysql-foo/mysqld.sock -u root -p"change me"

The example also includes
- basic firewall setup
- apt package refresh

### License
MIT
