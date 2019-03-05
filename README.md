# StarDust3000_2019
root folder of rasberry_pi

How to configure the raspberry pi 3
===================================


unix configuration
------------------
###to assign usb port do :
````
sudo udevadm info --query=property --name=/dev/ttyUSB0 
sudo udevadm info --query=property --name=/dev/ttyUSB0 | grep SERIAL

sudo vim /etc/udev/rules.d/99-usb-serial.rules ```

add :
```
ACTION=="add",ENV{ID_BUS}=="usb",ENV{ID_SERIAL_SHORT}=="0001",SYMLINK+="ttyUSBLidar"

ACTION=="add",ENV{ID_BUS}=="usb",ENV{ID_SERIAL_SHORT}=="A900LFGP",SYMLINK+="ttyUSBMotor"```




  
### enable some swap 
  
  sudo swapon -s
  sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile

  sudo mkswap /swapfile
sudo swapon /swapfile  
  vim /etc/fstab
add line : /swapfile   none    swap    sw    0   0


### bluetooth ps4 joystick
 
 
cd /dev/input
  ls
  sudo MAKEDEV js
  sudo modprobe joydev
  sudo apt install python3-pip
  sudo apt install python3-pyudev
  sudo apt install python3-evdev
 sudo apt install ds4drv
  sudo pip3 install ds4drv
  cd ~
  sudo wget -O /etc/udev/rules.d/50-ds4drv.rules https://raw.githubusercontent.com/chrippa/ds4drv/master/udev/50-ds4drv.rules
 
 
 sudo apt install bluez
  sudo udevadm control --reload-rules
  sudo udevadm trigger
	
ds4drv --hidraw --emulate-xboxdrv &
 ca ne marche pas.
 
 
 
### install blue tooth

use gui apair always.

  
ros configuration
-----------------
### topic hardware
#### pince
	/r1/servo/E 0 240 UINT16
	/r1/servo/F 0 240 UINT16
	/r1/pwm/vanne1 INT16    0  4096
	/r1/pwm/vanne2 INT16    0  4096  
	/r1/pwm/vanne3 INT16    0  4096
	/r1/pwm/pompe  INT16    0  4096

roslaunch sd_main r1.launch


#### deplacement
	/r1/pwm/left   INT16 -4096  4096
	/r1/pwm/right  INT16  -4096  4096
	/r1/pwm/back  INT16  -4096  4096

### ros serial
#### lidar
ressource /dev/ttyUSBLidar -> ttyUSB1
#### deplacement
ressource  /dev/ttyUSBMotor -> ttyUSB0
#### pince
ressource /dev/ttyAMA0 

### example
roscore &
rosrun rosserial_python serial_node.py /dev/ttyUSBMotor   _baud:=57600 &
rosrun rosserial_python serial_node.py /dev/ttyAMA0   _baud:=57600 &
rostopic pub /r1/servo/F std_msgs/UInt16 --once -- 80
rostopic pub /r1/pwm/back std_msgs/Int16 --once -- 4800

ou 
roslaunch sd_main r1.launch
rosnode info /r1/rosserial_server

