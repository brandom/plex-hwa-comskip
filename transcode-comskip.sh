#!/bin/sh
FILE="$(basename "$1" .ts).mp4"
mv "$1" "$FILE"
sleep 10
/usr/bin/ffmpeg -i "$FILE" -c:v libx264 -c:a copy -bsf:a aac_adtstoasc "$FILE"
sleep 10
/usr/bin/python /opt/PlexComskip/PlexComskip.py "$FILE"
