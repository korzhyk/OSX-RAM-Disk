#!/bin/bash

echo "🚧 Make directory for binary file"
sudo mkdir -p /usr/local/bin
echo "🚚 Download binary"
sudo curl -o /usr/local/bin/RamDisk https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/RamDisk
sudo chmod 755 /usr/local/bin/RamDisk

echo "🚚 Download plist"
sudo curl -o /Library/LaunchAgents/com.ramdisk.plist https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/com.ramdisk.plist
sudo chmod 644 /Library/LaunchAgents/com.ramdisk.plist
sudo chgrp wheel /Library/LaunchAgents/com.ramdisk.plist

echo "👌 Done"
exit
