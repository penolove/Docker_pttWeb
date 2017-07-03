FROM penolove/ubuntu:pure_postgresql
USER root
COPY start_service.sh /root/start_service.sh


CMD ["/bin/bash","-c","/root/start_service.sh & tail -f /dev/null"]
