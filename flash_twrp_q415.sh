#/bin/sh

cd /tmp

sudo apt-get install wget android-tools-adb android-tools-fastboot
wget https://www.dropbox.com/s/f4bwq2gl79354x5/recovery_twrp_082807.img

echo "Выключите смартфон и включите с зажатой клавишей уменьшения громкости, затем подключите  смартфон по USB и нажмите клавишу Enter"
read

sudo fastboot flash recovery recovery_twrp_082807.img
sudo fastboot reboot bootloader

echo "Готово!"

