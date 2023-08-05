#!/bin/bash
sudo yum groupinstall -y "GNOME Desktop"
chmod +x setup.sh
echo "Need reboot! After reboot run ./setup.sh"
