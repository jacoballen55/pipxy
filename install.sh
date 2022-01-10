#!/bin/bash
#readme
#this is for PI only.
port=$1
iface=`ls /sys/class/net/ | head -1`
IP=`ip addr list $iface | grep "  inet " | head -n 1 | cut -d " " -f 6 | cut -d / -f 1`

#apt-get update
#apt-get install telnet -y
#apt-get install htop -y
#apt-get install build-essential libevent-dev libssl-dev -y
#apt purge openssh-server -y
#apt install openssh-server -y
#apt install net-tools
#required for PI

#cd /root/

#echo "alias ls='ls --color=auto'
#    alias dir='dir --color=auto'
#    alias vdir='vdir --color=auto'

#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi" >> /root/.bashrc

#sed -i "s/#Port 22/Port 9999/g" /root/sshd_config
#sed -i "s/#ListenAddress 0.0.0.0/ListenAddress 192.168.1.17/g" /etc/ssh/sshd_config

echo "Port "$1"" >> /etc/ssh/sshd_config
echo "ListenAddress "$IP"" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config