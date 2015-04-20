#!/bin/bash
echo "Step 1:Update System Package"
sudo apt-get update
echo "Step 2:Install PiGPIO"
wget abyz.co.uk/rpi/pigpio/pigpio.zip
unzip pigpio.zip
cd PIGPIO
make
sudo make install
cd ..
echo "Step 3:Install Python Packages"
sudo apt-get -y install python-netifaces python-psutil
echo "Step 4:Install Services"
num=$(grep -n '^exit 0' /etc/rc.local | awk -F ":" '{print $1}')
numfinal=$[$num-1]
numfinala=$numfinal"a"
c3=$(grep -n '^sudo python /home/pi/pieye.py' /etc/rc.local)
c2=$(grep -n '^cd /home/pi' /etc/rc.local)
c1=$(grep -n '^sudo pigpiod' /etc/rc.local)
if [ -z "$c3" ]; then
  sed -i "$numfinala sudo python /home/pi/pieye.py" /etc/rc.local
fi
if [ -z "$c2" ]; then
  sed -i "$numfinala cd /home/pi" /etc/rc.local
fi
if [ -z "$c1" ]; then
  sed -i "$numfinala sudo pigpiod" /etc/rc.local
fi
echo "Finally run program..."
sudo python pieyecon.py