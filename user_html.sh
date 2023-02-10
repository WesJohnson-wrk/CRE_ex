

# #!/bin/bash

# sudo apt update -y
# sudo apt install apache2 -y
# sudo systemctl enable apache2
# sudo systemctl start apache2

#Only use this code as a test website
# cd /var/www/html
# #sudo rm index.html
# sudo git clone https://github.com/WesJohnson-wrk/index_test.git
# sudo cp -r index_test/* .
# #sudo systemctl start apache2
# ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
# sudo sed -i "s/_ID/$ID/" /var/www/html/index.html
# AZ=$(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)
# sudo sed -i "s/_AZ/$AZ/" /var/www/html/index.html


#If using for Jenkins and Docker use this
# #AWSCLI
# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# sudo apt install unzip
# sudo unzip awscliv2.zip
# sudo ./aws/install

# #JAVA
# sudo apt update -y
# sudo apt install default-jre -y

# #Docker
# sudo apt-get remove docker docker-engine docker.io containerd runc
# sudo apt update -y
# sudo apt install \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release -y
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#   sudo apt-get update
# #Receiving a GPG error when running apt-get update?
# #sudo chmod a+r /etc/apt/keyrings/docker.gpg
# #sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
# #sudo docker run hello-world
# sudo usermod -aG docker $USER && newgrp docker #allows the current user to run Docker commands without having to use sudo each time

# #JENKINS
# sudo apt update -y
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# sudo apt update -y
# sudo apt install jenkins -y

# sudo systemctl enable jenkins
# sudo systemctl start jenkins
# #sudo systemctl status jenkins
# sudo ufw allow 8080
# sudo ufw allow OpenSSH
# sudo ufw enable
# #sudo ufw status
# #sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# sudo mkdir /opt/jenkins
# sudo chown -R ubuntu /opt/jenkins
# sudo usermod -aG docker $USER && newgrp docker

# sudo yum install python3-pip
# pip3 install Flask