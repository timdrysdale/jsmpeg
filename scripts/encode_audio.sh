#!/bin/bash
ffmpeg -f alsa -ar 44100 -i hw:0 -f mpegts -codec:a mp2 -b:a 128k -muxdelay 0.001 -ac 1 -filter:a "volume=50" http://localhost:8081/supersecret
