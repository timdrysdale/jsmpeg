#!/bin/bash
#ffmpeg -i sunsetMed.jpg -i pend3.png -filter_complex "[1:v]colorkey=0x6e2631:0.2:0.3[ckout];[0:v][ckout]overlay[out]" -map "[out]" outpend2.png

ffmpeg -i sunsetMed.jpg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0  -filter_complex "[1:v]colorkey=0x6e2631:0.08:0.3[ckout];[0:v][ckout]overlay[out]" -map "[out]" -f mpegts -codec:v mpeg1video -s 640x480 -g 10 -b:v 1000k -bf 0 http://127.0.0.1:8081/supersecret 
