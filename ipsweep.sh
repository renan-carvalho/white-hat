#!/bin/bash

if ["$1" == 0]
then
echo "Você esqueceu o endereço de IP!"
echo "Exemplo: ./ipsweep 192.168.1"

else
for ip in $(seq 1 254); do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tf -d ":" &
done
fi