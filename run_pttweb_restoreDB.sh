docker run -ti --shm-size="4g" --name ptt_core --net host \
-v $(pwd)/dataforupdate/:/home/stream/D4U \
-d penolove/ubuntu:PttWeb_parser_201707

# here for update outfile
#-v $(pwd)/dataforupdate/outfile:/var/lib/postgresql/outfile \
