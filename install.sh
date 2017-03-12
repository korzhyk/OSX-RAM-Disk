#!/bin/bash

DIR="/usr/local/bin"
if [ ! -d $DIR ]; then
  echo "🚧 Make directory for binary file"
  sudo mkdir -p "$DIR"
  sudo chown $USER:admin "$DIR" 
fi

BIN="$DIR/RamDisk"
if [ ! -f $BIN ]; then
  echo "🚚 Download binary"
  curl -o "$BIN" https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/RamDisk
fi

chmod 755 "$BIN"

PLIST="~/Library/LaunchAgents/com.ramdisk.plist"
if [ ! -f $PLIST ]; then
  echo "🚚 Download plist"
  curl -o "$PLIST" https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/com.ramdisk.plist
  chmod 644 "$PLIST"
  chgrp staff "$PLIST"
fi

echo "👌 Done"
exit
