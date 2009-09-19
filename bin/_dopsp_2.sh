#!/bin/bash

time ffmpeg -i /media/data/video/Pi\ \[torrents.ru\].avi -ss 00:05:05 -an -f image2 -vcodec mjpeg -r 1 -vframes 1 -s 160x120 /opt/video/MAQ10002.THM
