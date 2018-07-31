#!/bin/bash
yum update -y
yum install -y httpd
service httpd start
chkconfig httpd on
groupadd www
usermod -a -G www ec2-user
chown -R root:www /var/www
chmod 2775 /var/www

echo "hello from VA 2" > /var/www/html/index.html



#these commands are run as root so there's no need to use sudo
#or escalate privilage
