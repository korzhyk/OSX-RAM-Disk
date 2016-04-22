#!/bin/bash

cd /usr/local/Library/
sudo curl -o RamDisk https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/RamDisk
sudo chmod 755 RamDisk
sudo chgrp admin RamDisk

cd /Library/LaunchDaemons/
sudo curl -o com.ramdisk.plist https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/com.ramdisk.plist
sudo chmod 644 com.ramdisk.plist
sudo chgrp wheel com.ramdisk.plist

exit