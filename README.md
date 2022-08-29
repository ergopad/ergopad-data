# ergopad-data
postgres, redis

# rqlite
https://github.com/rqlite/rqlite

### poking around
docker exec -it rqlite sh
- rqlite -H rqlite
- rqlite -H rqlite1 -p 4102
create basic table
- create table hello (id int primary key not null, name)

### from either node
insert basic data
- insert into hello (name) values ('world')
display tables
- .tables 
selecting data
- select * from hello
- curl -G 'localhost:4001/db/query?pretty&timings' --data-urlencode 'q=select * from hello'

### notes
- ?? is rqlite compatible with sqlite driver with sqlalchemy
