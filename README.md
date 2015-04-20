README

STEP 1: install pigpio
wget abyz.co.uk/rpi/pigpio/pigpio.zip
unzip pigpio.zip
cd PIGPIO
make
make install

sudo pigpiod

STEP 2: install 
sudo apt-get install python-netifaces python-psutil

STEP 3: run program
sudo python pmurpi.py

wget -c https://raw.githubusercontent.com/FishTest/pieye/master/install.sh
chmod +x ./install.sh
sudo ./install.sh