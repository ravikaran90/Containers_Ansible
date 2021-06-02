FROM centos/systemd

MAINTAINER ravi <reat@.com>

RUN yum install httpd openssh-server expect net-tools sudo -y; systemctl enable httpd.service; cd /var/www/html; echo "<html><body>hello world</body></html>" > index.html

COPY password.exp /usr/local/bin/password.exp

EXPOSE 80

CMD ["/usr/sbin/init"]
