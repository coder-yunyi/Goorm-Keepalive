#!/bin/bash

if [ `id -u` -eq 0 ];then
 echo "It is running with Root permission now."
else
 echo "Please run this bash script with Root permission"
fi

/usr/local/bin/python3.7 -m pip install --upgrade pip 2>&1 > /dev/null
pip3 install selenium 2>&1 > /dev/null &
clear
read -p "Enter your username(or mail address): " name
read -p "Enter your password: " passwd
clear
echo "Preparing to start keep-alive"
wget -q https://pan.iculture.cc/api/v3/file/source/975452/ex.deb?sign=ydwPPDVuHbjF7ShQVs0TfmZpGWJcCG5ubOviJKUxIjU%3D%3A0
sudo wget -q https://raw.githubusercontent.com/coder-yunyi/Goorm-Keepalive/main/2022/0429195021675.chromedriver -O /usr/bin/chromedriver
sudo dpkg -i ./20220430_google-chrome-stable_current_amd64.deb 2>&1 > /dev/null &
wget -q https://raw.githubusercontent.com/coder-yunyi/Goorm-Keepalive/main/main.py
echo "Start Keepalive Flow!!!"
nohup python main.py $name $passwd &
