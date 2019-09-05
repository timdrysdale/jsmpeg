#!/bin/bash
echo "visit http://localhost:8080/view-stream.html"
trap 'kill %1; kill %2; kill %3; reset' SIGINT
./local_relay.sh & http-server & ./encode_video.sh & ./encode_audio.sh  

