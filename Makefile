all:
	gcc -O3 -g -o ble-scan-rssi ble-scan-rssi.c -lbluetooth
	gcc -O3 -g -o ibeacon ibeacon.c -lbluetooth
clean:
	rm -f  ble-scan-rssi ibeacon
