create table employee2 (elastname varchar(50) not null,efirstname varchar(50) not null, gender varchar(10) not null,phonenumber varchar(20) not null,employmentdate date not null,salary int not null,eaddress varchar(200) not null,primary key(elastname))     
create table menu2 (foodid int not null, foodtype varchar(20) not null, foodpay int not null,food varchar(50) not null, primary key(foodid))
create table customer2 (ordernumber int not null,foodid int not null,paymenttype varchar(20) not null,subscriptioncode varchar(20) not null , primary key (ordernumber), foreign key (foodid) references menu2)
create table order2 (elastname varchar(50) not null, ordernumber int not null, foodid int not null,ordertime time(7) not null,orderdate date not null , tablenumber tinyint not null, total int not null,foreign key (elastname) references employee2,foreign key (ordernumber) references customer2, foreign key (foodid) references menu2)
    select ordernumber from order2 where elastname='hoseini'
	select count (ordernumber) from order2
	update menu2 set foodpay=40000 where food='tea'