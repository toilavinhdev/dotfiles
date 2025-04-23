#! /bin/bash

wget -qO yazi.zip https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-gnu.zip
unzip -q yazi.zip -d yazi-temp
sudo mv yazi-temp/*/{ya,yazi} /usr/local/bin
rm -rf yazi-temp yazi.zip
yazi --version
