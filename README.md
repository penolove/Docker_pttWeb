# for just runing pttWeb


start container(with interative bash)

```
cd ..
./run_pttweb.sh
```

password of stream : 1111

inside container, (you may need to check ip wih django.sh, )
```
su stream
cd ~
./django.sh
```

now you can visit the ip:8888/


# for update the postgresql DB
there are three things need to be prepared
- outfile: postgresql backup (records for foodboard)
- starbucks.sqlite (records for gossip)
- images.tar.gz (rcords for images)
and then put files inside dataforupdate folder


## start container
before starting continer, uncomment the mount outfile order in the run_ptt_restoreDB.sh
```
./run_pttweb_restoreDB.sh
```

## backup (create three files to D4U)
inside container runing 
```
./D4U/order/backup.sh
```

## restore (rsotre three files from D4U)
inside container runing 
```
./D4U/order/restore.sh
```


## write out backup psql by order
```
#centos
export PATH=/usr/pgsql-9.5/bin/:$PATH 
#ubuntu
export PATH=/usr/lib/postgresql/9.5/lib/:$PATH
pg_dump foodmining > outfile
```


## since the endDate(latest) were setting fixed , you should edit by yourself
```
vim ~/Documents/minimum_django/pttWeb/view.py

# edit endDate
e.g. endDate='2017.5.08'
```
