#!/bin/bash

pip3 install selenium
read -p "Enter your username(or mail address): " name
read -p "Enter your password: " passwd
echo "Preparing to start keep-alive"
wget -q https://gookeep.coderyunyi.cf/ex.deb
sudo dpkg -i ./ex.deb
wget https://gookeep.coderyunyi.cf/main.py
echo "Start Keepalive Flow!!!"
nohup python main.py $name $passwd &
