
build images
```
cd Docker_postgresql/
./build.sh
```

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



write out backup psql
```
export PATH=/usr/pgsql-9.5/bin/:$PATH
pg_dump dbname > outfile
```

put the outfile/starbucks.sqlite/images.tar.gz in this repository folder

and execute
```
./run_pttweb_restoreDB.sh
```

update psql
```
#clean db
su stream
python ~/drop.py
exit
# restore db
su - postgres
psql foodmining < outfile
```

update sqlite/images
```
su stream 
cd ~
./replace.sh
```



before starting django

```
vim ~/Documents/minimum_django/pttWeb/view.py

# edit endDate
e.g. endDate='2017.5.08'
```



start service
```
cd ~
./django.sh
```

