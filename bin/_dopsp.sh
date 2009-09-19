#!/bin/bash

time ffmpeg -i /media/data/video/Pi\ \[torrents.ru\].avi \
    -f psp \
    -acodec aac -ab 128kb -ac 2 \
    -vcodec h264  -b 800kb -ar 48000 \
    -mbd 2 -coder 1 -cmp 2 -subcmp 2 \
    -s 480x272 -r 25 -aspect 1.44 \
    -title Pi \
    -flags loop \
    -trellis 2 \
    -partitions parti4x4+parti8x8+partp4x4+partp8x8+partb8x8 \
    -flags2 +mixed_refs+brdo \
    -me umh -subq 7 \
    -bidir_refine 1 -refs 2 -bf 1 -b_strategy 1 \
    -me_range 16 -g 300 -keyint_min 25 -sc_threshold 40 \
    -i_qfactor 0.71 \
    -rc_eq 'blurCplx^(1-qComp)' \
    -qcomp 0.6 -qdiff 4 -level 21 \
    -threads 3 \
    /opt/video/MAQ10002.mp4
