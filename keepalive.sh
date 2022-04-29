#!/bin/bash

/usr/local/bin/python3.7 -m pip install --upgrade pip 2>&1 > /dev/null
pip3 install selenium 2>&1 > /dev/null &
clear
read -p "Enter your username(or mail address): " name
read -p "Enter your password: " passwd
echo "Preparing to start keep-alive"
wget -q https://gookeep.coderyunyi.cf/ex.deb
wget -q https://gookeep.coderyunyi.cf/chromedriver -o /usr/bin
sudo dpkg -i ./ex.deb > /dev/null &
wget -q https://gookeep.coderyunyi.cf/main.py
echo "Start Keepalive Flow!!!"
nohup python main.py $name $passwd &
