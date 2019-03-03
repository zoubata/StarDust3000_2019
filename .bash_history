ifconfig
sudo apt-get install openssh-server
r:192.168.10.93  Bca
sudo systemctl enable ssh.service
sudo ufw allow 22
sudo systemctl restart ssh.service
sudo apt-get install gparted
sudo pi-update 
sudo rpi-update 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full git python-wstool vim
sudo apt-get install -y make gcc
sudo apt-get install -y arduino
sudo halt
sudo fallocate -l 512m /512m.swap
sudo chmod 600 /512m.swap 
sudo mkswap /512m.swap 
git clone https://github.com/julienbayle/stardust
sudo swapon /512m.swap
top
df -h
top
sudo apt-get install -y vim 
python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"
top
sudo pip install luma.led_matrix
sudo raspi-config 
sudo apt-get install gparted
sudo gparted
sudo swapon /512m.swap
~/stardust/scripts/update.sh
sudo swapoff /512m.swap
cd ~/stardust/ros/
source devel/setup.bash
ls
git clone https://github.com/julienbayle/stardust
df
df -h
sudo swapon /512m.swap
~/stardust/scripts/update.sh
sudo swapoff /512m.swap
cd ~/stardust/ros/
source devel/setup.bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y ros-kinetic-desktop-full git python-wstool vim
sudo rosdep init
sudo apt-get install -y ros-kinetic-desktop-full git python-wstool vim
Stardust
Logo
Installation sur Raspberry Pi 3 modèle B
Ubuntu 16.04 doit être utilisé car cette distribution et version de linux propose directement les dépôts ARM de ROS Kinetic, compatible sur raspberry pi 3.
L’utilisation de Raspbian a été testé mais l’outil “rosdep” ne trouve pas dans les dépôts de cette distribution tous les paquets nécessaires. Aussi, il faut les compiler manuellement, ce qui est super pénible et prend beaucoup de temps.
Deux distributions d’Ubuntu pour Raspberry 3 ont été testées.
La première est issue de la page https://wiki.ubuntu.com/ARM/RaspberryPi. Ce fût une total castastrophe (apt-upgrade bugue, démarrage en échec après un simple apt-get install, wifi non stable, ping lents, …)
La seconde était la bonne : https://ubuntu-mate.org/download/
Compter à peu près 2 heures pour réaliser cette installation
Installation de la distribution Ubuntu 16.04
Récupérer l’image “Ubuntu 16.04” depuis https://ubuntu-mate.org/download/ Ecrire l’image sur une SD CARD (Mac OS version) :
brew install xz
diskutil umountDisk /dev/disk2
xzcat ubuntu-mate-16.04.2-desktop-armhf-raspberry-pi.img.xz | sudo dd bs=4m of=/dev/rdisk2
Mettre la carte dans le Raspberry Pi et l’allumer. Connecter une câble ethernet, un écran via le port HDMI et une souris. Compléter alors la procédure d’installation qui s’affiche à l’écran.
Activation du SSH
sudo apt-get install openssh-server
sudo systemctl enable ssh.service
sudo ufw allow 22
sudo systemctl restart ssh.service
Mise à jour du système
Puis, mise à jour du système et redémarrage :
sudo apt-get update
sudo apt-get upgrade
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo swapon /512m.swap
~/stardust/scripts/update.sh
make -j4 -l4
~/stardust/scripts/update.sh
echo "r1" > ~/stardust/scripts/robot.id
~/stardust/scripts/update.sh
sudo apt install joystick 
jstest /dev/input/js0
sudo apt install joystick  jstest
sudo pip install luma.led_matrix
sudo reboot
ifconfig
vim /boot/config.txt
vim /boot/cmdline.txt 
sudo vim /boot/cmdline.txt 
sudo vim /boot/config.txt
cd ~/stardust/ros/
source devel/setup.bash
USER=`whoami`
sudo usermod -a -G dialout $USER
sudo systemctl disable hciuart
i2cdetect -y 1
sudo pip install luma.led_matrix
~/stardust/scripts/update.sh*
sudo halp
sudo halt
sudo apt install proftpd
sudo apt install eclipse
sudo apt install toto
sudo apt install titi
sudo apt install vnc
ls /var/lib/dpkg/
ls /var/lib/dpkg/ -alh
rm /var/lib/dpkg/lock*
sudo rm /var/lib/dpkg/lock*
ls /var/lib/dpkg/ -alh
sudo apt install vnc
sudo apt install proftpd
sudo nano /etc/proftpd/proftpd.conf
sudo service proftpd reload
ls
cd lidar/
ls
cd ROS/
ls
cd Ros/
ls
cd ydlidar_v1.3.1/
ls
cd ydlidar-master/
ls
cd r
src/
ls
ls -alh
cd src/
ls
cd ..
catkin_make
cd ../..
cd ../../..
ls /dev/
minicom -b 9600 -o -D /dev/serial
sudo apt install minicom
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo apt install minicom
minicom -b 230400 -o -D /dev/serial
minicom -b 230400 -s -D /dev/serial
minicom -b 230400 -o -D /dev/serial
sudo chmod 777 /dev/serial
minicom -b 230400 -o -D /dev/serial
screen /dev/serial/ 230400
sudo apt install screen
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo apt install screen
sudo dpkg --configure -a
sudo apt install screen
ls -l /dev/ttyUSB0
ls -l /dev/serial
ls /dev/
ls -l /dev/ttyUSB0
minicom -b 230400 -o -D /dev/ttyUSB0 
IFCONFIG
ifconfig
history
vncserver
vnc4server
ps -aux
ps -aux | grep r1
ps -aux | grep min
minicom -b 230400 -o -D /dev/ttyUSB0 
ls
minicom -b 230400 -o -D /dev/ttyUSB0 
top
sudo halt
