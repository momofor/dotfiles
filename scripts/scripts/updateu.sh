#! /usr/bin/dash
while true 
do
    up=$(uptime -p )
    notify-send "$up" "$up"
    sleep 60;
done

