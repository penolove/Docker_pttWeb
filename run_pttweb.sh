docker run -ti --shm-size="4g" --name ptt_core --net host \
-d penolove/ubuntu:PttWeb_parback_201707 \
/bin/bash -c "/root/start_service.sh & tail -f /dev/null";
