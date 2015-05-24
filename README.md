PiPeYe README

STEP 1: install pigpio
wget abyz.co.uk/rpi/pigpio/pigpio.zip
unzip pigpio.zip
cd PIGPIO
make
make install

STEP 2: install system required
sudo apt-get install python-netifaces python-psutil

STEP 3: download program
git clone https://github.com/FishTest/pipeye.git
sudo cp pipeye/pipeye.py /usr/bin/
sudo cp pipeye/pipeyecon.py /usr/bin/

STEP 4:
sudo nano /etc/rc.local
add below lines before 'exit 0'
sudo pigpiod
sudo /usr/bin/pipeye.py

STEP 5:
sudo nano /etc/fstab
add below line at the end
tmpfs   /var/pipeyelog    tmpfs    defaults,noatime,nosuid,mode=0755,size=1m    0 0

STEP 6:
sudo reboot

STEP 7:
run program:
sudo python /usr/bin/pipeyecon.py


AllInOne Install:
wget -c https://raw.githubusercontent.com/FishTest/pipeye/master/install.sh
chmod +x ./install.sh
sudo ./install.sh