create database university
create table STT(stid int not null,stname varchar(30) not null,stmjr varchar(30) not null, stdeg varchar(30) not null,primary key(stid))
select * from STT
insert into STT values(9998,'ali ahmadi','computer','M.S')
select stid from stt where stname like 'm%'
update stt set stname='ali rahmati' where stid=9998
create table STCOT(stid int not null,coid int not null,term tinyint not null, year varchar(30) not null,foreign key(stid) references STT,foreign key(coid) references COT)

