#!/bin/bash
sudo systemctl daemon-reload
sudo systemctl enable vncserver@:4.service
sudo firewall-cmd --permanent --zone=public --add-port=5904/tcp 
sudo firewall-cmd --reload
vncserver
