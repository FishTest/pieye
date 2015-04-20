README

STEP 1: install pigpio
wget abyz.co.uk/rpi/pigpio/pigpio.zip
unzip pigpio.zip
cd PIGPIO
make
make install

sudo pigpiod

STEP 2: install 
sudo apt-get install python-netifaces

STEP 3: run program
sudo python pmurpi.py

PMU操作说明：
启动后循环显示电池信息与树莓派的相关信息（没获取信息之前信息不显示），在此界面双击按钮更新树莓派信息。
单击显示操作菜单，选中后，长按进行指定的操作，如果5秒钟内再按下单击会取消，否则执行相应的命令。