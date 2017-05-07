FROM penolove/ubuntu:postgresql
COPY django.sh /home/stream/django.sh
COPY drop.py /home/stream/drop.py
COPY replace.sh /home/stream/replace.sh
USER root
COPY start_service.sh /root/start_service.sh


CMD ["/bin/bash","/root/start_service.sh"]
