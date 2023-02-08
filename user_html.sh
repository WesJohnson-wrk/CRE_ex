#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2
cd /var/www/html
#sudo rm index.html
sudo git clone https://github.com/WesJohnson-wrk/index_test.git
sudo cp -r index_test/* .
#sudo systemctl start apache2
ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
sudo sed -i "s/_ID/$ID/" /var/www/html/index.html
AZ=$(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)
sudo sed -i "s/_AZ/$AZ/" /var/www/html/index.html

#sudo yum install python3-pip
#pip3 install Flask