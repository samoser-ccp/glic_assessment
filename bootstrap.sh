#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo '<!DOCTYPE html>' > /var/www/html/index.html
echo '<BODY>' >> /var/www/html.index.html
echo '<p>Hello World</p>'  >> /var/www/html/index.html
echo '</BODY>'  >> /var/www/html/index.html
echo '</html>' >> /var/www/html/index.html
