sudo yum groupinstall -y "GNOME Desktop"
reboot
sudo yum install -y tigervnc-server 
sudo cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:4.service 

