FROM centos/systemd

MAINTAINER ravi ravi@reat.com

RUN yum install openssh-server mariadb-server net-tools expect sudo -y; systemctl enable mariadb

COPY password.exp /usr/local/bin/password.exp

CMD ["/usr/sbin/init"]
