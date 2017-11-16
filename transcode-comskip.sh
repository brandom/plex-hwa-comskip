#!/bin/sh
FILE="${1%.*}".mp4
sleep 10
/usr/bin/ffmpeg -i "$1" -c:v libx264 -c:a copy "$FILE"
sleep 10
/usr/bin/python /opt/PlexComskip/PlexComskip.py "$FILE"
