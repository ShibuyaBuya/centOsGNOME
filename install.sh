#!/bin/bash
sudo yum groupinstall -y "GNOME Desktop"
reboot
sudo yum install -y tigervnc-server 
sudo cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:4.service 
echo "Open the copied file to change the configuration"
echo "Change [Service] Like this"
echo "[Service]"
echo ""
echo "Type=forking" # Clean any existing files in /tmp/.X11-unix
echo "environmentExecStartPre=/bin/sh -c '/usr/bin/vncserver -kill %i > /dev/null 2>&1 || :'"
echo "ExecStart=/sbin/runuser -l root -c \"/usr/bin/vncserver %i -geometry 1280x1024\""
echo "PIDFile=/home/root/.vnc/%H%i.pid"
echo "Then run ./setup.sh"
chmod +x setup.sh
