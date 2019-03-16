#!/bin/bash
while :
do
	t=$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)
	echo "scale=1;$t/1000" | bc -l
	sleep 1
done
