#!/bin/bash

sudo mkdir -p /usr/local/bin
curl -o /usr/local/bin/RamDisk https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/RamDisk
chmod 755 RamDisk

cd /Library/LaunchDaemons/
sudo curl -o com.ramdisk.plist https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/com.ramdisk.plist
sudo chmod 644 com.ramdisk.plist
sudo chgrp wheel com.ramdisk.plist

exit
