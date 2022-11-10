#!/bin/bash
# Update packages and Upgrade system
echo -e "Updating System.."
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Apache
echo -e "Installing Apache2"
sudo apt-get install apache2 apache2-doc apache2-utils libexpat1 ssl-cert -y

# Restart Apache
echo -e "Restarting Apache"
sudo service apache2 restart

# adding the needed permissions for creating and editing the index.html file
sudo chown -R $USER:$USER /var/www

# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title></title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Victoria Stelmakh</h1>' >> index.html
echo '<img src="https://pbs.twimg.com/media/FRVdYNIWYAA_qA1.jpg" alt="">' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html

# Restart Apache
echo -e "Restarting Apache"
sudo service apache2 restart
