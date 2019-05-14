# apt-get
sudo apt-get update

# vim
sudo apt-get install vim -y

# aoeu.sh
wget https://raw.github.com/shenjia/aoeu.sh/master/linux/aoeu.sh -O ~/aoeu.sh
echo ". ~/aoeu.sh" >> ~/.bash_aliases
. ~/aoeu.sh

# 8188eu drivers
sudo wget https://raw.github.com/shenjia/pi/master/drivers/8188eu.ko -O ~/8188eu.ko
sudo cp ~/8188eu.ko /lib/modules/*/kernel/net/wireless
sudo sh -c 'echo "8188eu" >> /etc/modules'
sudo depmod -a
sudo modprobe 8188eu

# ip mailer
sudo wget https://raw.github.com/shenjia/pi/master/ip-mailer.py -O ~/mail_ip.py
sudo wget https://raw.github.com/shenjia/pi/master/ip-mailer -O /etc/init.d/ip_mailer
sudo chmod +x /etc/init.d/ip-mailer
sudo update-rc.d ip-mailer defaults