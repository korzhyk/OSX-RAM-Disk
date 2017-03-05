#!/bin/bash

DIR="/usr/local/bin"
if [ ! -d $BIN_DIR ]; then
  echo "🚧 Make directory for binary file"
  sudo mkdir -p "$DIR"
fi

BIN="$DIR/RamDisk"
if [ ! -f $BIN ]; then
  echo "🚚 Download binary"
  sudo curl -o "$BIN" https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/RamDisk
fi

sudo chmod 755 "$BIN"

PLIST="/Library/LaunchAgents/com.ramdisk.plist"
if [ ! -f $PLIST ]; then
  echo "🚚 Download plist"
  sudo curl -o "$PLIST" https://raw.githubusercontent.com/korzhyk/OSX-RAM-Disk/master/com.ramdisk.plist
  sudo chmod 644 "$PLIST"
  sudo chgrp wheel "$PLIST"
fi

echo "👌 Done"
exit
