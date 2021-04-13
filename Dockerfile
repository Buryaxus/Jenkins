FROM ubuntu
MAINTAINER Buryaxus 

# INSTALL WGET, JENKINS
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
echo "Jenkins has been installed."

# Launch Jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw status
# If no firewall is running
  sudo ufw allow OpenSSH
  sudo ufw enable



