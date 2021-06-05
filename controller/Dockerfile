FROM centos/systemd

MAINTAINER ravi ravi@reat.com

RUN yum install openssh-server openssh-clients net-tools lynx epel-release expect sudo -y; yum install ansible -y -y; yum install docker-compose -y

COPY sshkey_password.exp /usr/local/bin/sshkey_password.exp

CMD ["/usr/sbin/init"]
