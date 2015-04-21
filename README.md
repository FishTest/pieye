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

wget -c https://raw.githubusercontent.com/FishTest/pipeye/master/install.sh
chmod +x ./install.sh
sudo ./install.sh