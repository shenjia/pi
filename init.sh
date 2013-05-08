# apt-get
sudo apt-get update

# vim
sudo apt-get install vim -y

# aoeu.sh
wget https://raw.github.com/shenjia/aoeu.sh/master/linux/aoeu.sh -o ~/aoeu.sh
echo ". ~/aoeu.sh" >> ~/.bash_aliases
. ~/aoeu.sh

# 8188eu drivers
sudo wget https://raw.github.com/shenjia/pi/master/drivers/8188eu.ko -o ~/8188eu.ko
sudo cp ~/8188eu.ko /lib/modules/*/kernel/net/wireless
sudo echo "8188eu" >> /etc/modules
sudo depmod -a
sudo modprobe 8188eu

