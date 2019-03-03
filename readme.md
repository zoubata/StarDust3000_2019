to assign usb port do :
sudo udevadm info --query=property --name=/dev/ttyUSB0 
sudo udevadm info --query=property --name=/dev/ttyUSB0 | grep SERIAL

sudo vim /etc/udev/rules.d/99-usb-serial.rules 
add :

ACTION=="add",ENV{ID_BUS}=="usb",ENV{ID_SERIAL_SHORT}=="0001",SYMLINK+="ttyUSBLidar"

ACTION=="add",ENV{ID_BUS}=="usb",ENV{ID_SERIAL_SHORT}=="A900LFGP",SYMLINK+="ttyUSBMotor"



