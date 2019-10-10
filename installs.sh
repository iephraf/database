######################################################
##  Apache2, mysql v5.7 And PHP 7.2 With PhpMyAdmin ##
######################################################


sudo apt update
sudo apt dist-upgrade
sudo apt autoremove

# install apache2 webserver
sudo apt update
sudo apt install apache2

sudo systemctl start apache2.service
sudo systemctl enable apache2.service

# mysql v5.7
sudo apt update 
sudo apt upgrade

wget http://repo.mysql.com/mysql-apt-config_0.8.10-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.10-1_all.deb
sudo apt update 
sudo apt install mysql-server
sudo mysql_secure_installation

# PHP v7.2
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.2-fpm php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl
sudo apt-get install libapache2-mod-php7.2

# phpmyadmin
sudo apt install phpmyadmin
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin
sudo service apache2 reload

# Make writable directory
chmod -R 775 /var/www/html
chmod 777 /var/www/html

clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "--------------------------------------------------"
echo "         IEPH-RAF Script for database             "
echo "--------------------------------------------------"
echo " "
echo " "
echo "Enter your mysql password okay!"

# Access mysql
sudo mysql -u root -p
