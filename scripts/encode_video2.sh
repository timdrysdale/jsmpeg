#!/bin/bash
sudo docker run --device=/dev/video1 --network=host jrottenberg/ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video1  -f mpegts -codec:v mpeg1video -s 640x480 -b:v 1000k -bf 0 http://127.0.0.1:8077/bananas
