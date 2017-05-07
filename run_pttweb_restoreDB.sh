docker run -ti --name ptt_core \
-v $(pwd)/outfile:/var/lib/postgresql/outfile \
-v $(pwd)/starbucks.sqlite:/home/stream/starbucks.sqlite \
-v $(pwd)/images.tar.gz:/home/stream/images.tar.gz \
loser/ubuntu:postgresql_sh 
