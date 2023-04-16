#!/bin/dash
ip=8.8.8.8
ping_out=$(ping -c 1 "$ip" | awk 'NR==2{print $7}' | sed 's/time=//g')


# while true; do
#     ping -c 1 "$ip" | awk 'NR==2{print $7}' | sed 's/time=//g'
#     sleep 30
# done
echo "$ping_out"
