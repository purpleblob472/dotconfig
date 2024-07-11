#!/bin/sh
swaybg -i $(find /home/jon/Pictures/osu_spring/. -type f | shuf -n1) -m fill &
OLD_BG_PID=$!
#wal -i $(find /home/jon/Pictures/osu_spring/. -type f | shuf -n1) &
#OLD_WL_PID=$!
while true; do
    sleep 600
    swaybg -i $(find /home/jon/Pictures/osu_spring/. -type f | shuf -n1) -m fill &
    NEXT_BG_PID=$!
#    wal -i $(find /home/jon/Pictures/osu_spring/. -type f | shuf -n1) &
#    NEXT_WL_PID=$!
    sleep 5
    kill $OLD_BG_PID
#    kill $OLD_WL_PID
    OLD_BG_PID=$NEXT_BG_PID
#    OLD_WL_PID=$NEXT_WL_PID
done
