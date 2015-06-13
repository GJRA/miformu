create database datos;
use datos;
create table datos(columna1 varchar(20), columna2 varchar(15), columna3 varchar (20),
	columna4 varchar(15),columna5 char,columna6 varchar(8),columna7 varchar(25), columna8 varchar(30), columna9 int,PRIMARY KEY (columna3));
select *  from datos;
alter table datos change columna3  columna3 varchar (20) NOT NULL;
alter table datos change columna6  columna6 varchar(10);
describe datos;
select * from datos;