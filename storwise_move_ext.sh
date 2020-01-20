#!/bin/bash

VOLS=()
while IFS= read -r line; do
   DISKS+=("$line")
done < mdisk.txt

DLEN=$(cat mdisk.txt| wc -l)

VOLS=()
while IFS= read -r line; do
   VOLS+=("$line")
done < vdisk.txt

VLEN=$(cat vdisk.txt | wc -l)

echo $VLEN
echo $VOLS
echo $DISKS
echo $DLEN

for (( i=0; i<$VLEN-1; i++ ))
do
        for (( j=0; j<$DLEN-1; j++ ))
        do
        echo "migrateexts source MDISK target " ${DISKS[j]} " vdisk ${VOLS[i]} threads 4";
        echo "Moving vdisk "${VOLS[i]};
        echo "sleep 60"
        let i=i+1
        done
done
