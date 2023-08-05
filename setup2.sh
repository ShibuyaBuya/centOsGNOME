#!/bin/bash
sudo systemctl daemon-reload
sudo systemctl start vncserver@:4.service
sudo systemctl enable vncserver@:4.service
sudo firewall-cmd --permanent --zone=public --add-port=5904/tcp 
sudo firewall-cmd --reload
vncserver :4
sudo systemctl daemon-reload
sudo systemctl restart vncserver@:4.service 

echo "Now connect with port :5904 or :4"
