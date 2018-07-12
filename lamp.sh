#!/bin/sh
#this script is to set up basic LAMP functions on
#2017-07-05-raspbian-jessie-lite

LIST_OF_APPS="apache2 php5 git libapache2-mod-php5 php5-mysqlnd php5-curl
php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt
php5-memcache php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy
php5-xmlrpc php5-xsl php5-apcu mariadb-server mariadb-client phpmyadmin"
apt-get update && apt-get upgrade -y
apt-get install -y $LIST_OF_APPS
echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
service apache2 restart
