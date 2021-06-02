# Containers_Ansible
Automating creation of containers. Using Ansible modules for different tasks such as installation of packages and running different commands on remote hosts

Tested on RHEL 8

In this exercise, it is assumed that docker is installed on the host machine and user is logged in (through #docker login).

Here centos/systemd image is used for all the containers.

Firstly 3 Dockerfiles are created in 3 folders namely controller, frontend and backend.

Then infra.sh script is run for images' and containers' creation from the redhat_exercise folder that has 3 other folders (controller,frontend and backend). #bash infra.sh

Run the expect commands in all the containers as follows:

frontend servers: expect /usr/local/bin/passwd.exp (Sets the root password and remove the password.exp file, takes around 15-20 sec)

backend servers: expect /usr/local/bin/passwd.exp (Sets the root password and remove the password.exp file, takes around 15-20 sec)

controller: expect /usr/local/bin/password.exp (Sets the root password and remove the password.exp file, takes around 15-20 sec), expect /usr/local/bin/passwd.exp

Get the IP addresses and make entries for different containers in the host file (controller): vi /etc/ansible/hosts

Example

[controller] 10.88.0.5 [frontend-1] 10.88.0.6 [frontend-2] 10.88.0.7 [backend-1] 10.88.0.8 [backend-2] 10.88.0.9

[all] 10.88.0.5 10.88.0.6 10.88.0.7 10.88.0.8 10.88.0.9

vi /etc/hosts

10.88.0.6 frontend-1 10.88.0.7 frontend-2 10.88.0.8 backend-1 10.88.0.9 backend-2

ssh-copy-id -i ~/.ssh/id_rsa.pub root@controller -> yes -> password ssh-copy-id -i ~/.ssh/id_rsa.pub root@frontend-1 -> yes -> password ssh-copy-id -i ~/.ssh/id_rsa.pub root@frontend-2 -> yes -> password ssh-copy-id -i ~/.ssh/id_rsa.pub root@backend-1 -> yes -> password ssh-copy-id -i ~/.ssh/id_rsa.pub root@backend-2 -> yes -> password

Run the add_remove_vim.yml with ansible-playbook #ansible-playbook -K add_remove_vim.yml

Run the who_command_users_info.yml with ansible-playbook #ansible-playbook -K who_command_users_info.yml
