python /home/stream/D4U/orders/drop.py;
# replace images and sqlite
/home/stream/D4U/orders/replace.sh;
psql foodmining < /home/stream/D4U/outfile;


