import psycopg2 
#connect to pg
conn = psycopg2.connect("dbname='foodmining' user='penolove' host='localhost' password='password'");
cur = conn.cursor();
cur.execute("Drop TABLE PushTable");
cur.execute("Drop TABLE ArticleTable");
cur.execute("Drop TABLE StoreTable"); 
conn.commit()
