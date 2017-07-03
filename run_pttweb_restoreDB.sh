docker run -ti --name ptt_core --net host \
-v $(pwd)/dataforupdate/:/home/stream/D4U \
-v $(pwd)/dataforupdate/outfile:/var/lib/postgresql/outfile \
-d penolove/ubuntu:PttWeb_201707
