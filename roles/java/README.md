Java Role
==========
An Ansible role that installs openjdk.


Requirements
------------
none

Role Variables
--------------

java_packages: java-1.7.0-openjdk

Dependencies
------------
This role can be ran independently of other roles.


Example Playbook
----------------
This is an example of how this role should be ran from the command line:  


hosts: servers  
roles:  
{ role: java }  

When running the playbook you must specify the vars:  
ansible_ssh_user=''  
ansible_ssh_private_key_file=''  

eg:  

ansible-playbook -i hosts site.yml --extra-vars "ansible_ssh_user=<user> ansible_ssh_private_key_file=</path/to/private/key>"


License
-------
n/a  


Author Information
------------------
