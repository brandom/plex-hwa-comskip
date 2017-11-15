#!/bin/sh
/usr/bin/ffmpeg -i "$1" -c:v libx264 -c:a copy -bsf:a aac_adtstoasc $(basename "$1" .ts).mp4
/usr/bin/mkvpropedit "$1" --edit track:a1 --set language=eng --edit track:v1 --set language=eng
sleep 10
/usr/bin/python /opt/PlexComskip/PlexComskip.py "$1"
