# ble
Raspberry Pi でbleの検証


# memo

﻿BLEビーコンとして送信するには

①
LE アドバイターズを開始する
root@raspberrypi:~# hciconfig hci0 leadv

LE アドバータイズを停止する
root@raspberrypi:~# hciconfig hci0 noleadv





②
ibeacon.cをmakeするには
#include <bluetooth/bluetooth.h>をインクルードするには
apt-get install libbluetooth-dev
↓
http://shiroibanana.blogspot.jp/2013/11/cbluetoothbluetooth1.html

送信は
./ibeacon 200 e2c56db5dffb48d2b060d0f5a71096e0 0 0 -29
https://www.eyemovic.com/blog_it/4269.php


受信強度RSSIを確認するには
①
btmon&
hcitool lescan



#include <curses.h>をインクルードするには
apt-get install libncurses5-dev libncursesw5-dev



bleをスキャンするには
https://github.com/carsonmcdonald/bluez-experiments/blob/master/experiments/scantest.c 

gcc -g -o ble-scantest ble-scantest.c -lbluetooth -lcurses



ble scan サンプル
https://github.com/carsonmcdonald/bluez-experiments/blob/master/experiments/scantest.c



Bluetooth 　simplescan.c
http://people.csail.mit.edu/albert/bluez-intro/c404.html
