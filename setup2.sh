#!/bin/bash
sudo systemctl daemon-reload
sudo systemctl start vncserver@:4.service
sudo systemctl enable vncserver@:4.service
sudo firewall-cmd --permanent --zone=public --add-port=5904/tcp 
sudo firewall-cmd --reload
vncserver :4
echo "installing chrome..."
yum install liberation-fonts
yum install vulkan
yum install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo rpm -i google-chrome-stable_current_x86_64.rpm
sudo systemctl daemon-reload
sudo systemctl restart vncserver@:4.service 

echo "Now connect with port :5904 or :4"
