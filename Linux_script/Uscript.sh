#!/bin/bash

timedatectl set-timezone Europe/Kiev
apt-get install language-pack-en -y
rm /etc/default/locale
cp ./locale /etc/default/

rm /etc/ssh/sshd_config
cp ./sshd_config /etc/ssh

adduser serviceuser
usermod -aG sudo serviceuser


deb https://nginx.org/packages/ubuntu/ focal nginx
deb-src https://nginx.org/packages/ubuntu/ focal nginx
sudo apt update
sudo apt install nginx -y

sudo apt-get install golang-go -y
go get github.com/mailhog/MailHog
sudo cp ~/go/bin/MailHog /usr/local/bin/Mailhog
cp ./mailhog.service /etc/systemd/system/
sudo systemctl enable mailhog
sudo systemctl start mailhog

echo -n "dev:$(openssl passwd -apr1 test)" >> /etc/nginx/.htpasswd
rm /etc/nginx/nginx.conf
cp ./nginx.conf /etc/nginx/
nginx -s reload
systemctl status nginx



