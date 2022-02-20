create table customer
	(
	customerid BIGINT,
	cust_Name varchar(20),
	Address1 varchar(30),
	Address2 varchar(30)
	);
    
-- Alter table customer rename column cust_Name to customername;
-- 	Alter table customer modify customername  varchar(30) Not Null;
    
    Alter table customer add Gender varchar(10);
	Alter table customer add Age BIGINT;
	Alter table customer add phoneNo BIGINT;
    
    Rename Table customer to cust_table;
    
insert into cust_table (Customerid,cust_Name,Address1,Address2,Gender,Age,phoneNo)
values (1000, 'Allen', '#115 Chicago', '#115 Chicago', 'M', 25, 7878776);

insert into cust_table (Customerid,cust_Name,Address1,Address2,Gender,Age,phoneNo)
values (1001, 'George', '#116 France','#116 France','M', 25, 434524);

insert into cust_table (Customerid,cust_Name,Address1,Address2,Gender,Age,phoneNo)
values (1002, 'Becker', '#114 New York', '#114 New York','M', 45, 431525);  
    
 ALTER TABLE cust_table
RENAME COLUMN customerid TO Custid_pk;
ALTER TABLE cust_table ADD PRIMARY KEY (Custid_pk);


 TRUNCATE table  cust_table;
 
 Alter table cust_table add e_mail varchar (30);
 
 Alter table cust_table DROP e_mail;
 
 -- create table Suppliers as select(customerid as suppid,customername as sname,adddress1 as addr1,address2 as addr2,phoneno as contactno) 
 -- from cust_table;
 
 create table customermaster( primary key (Custid_pk),customername varchar(30),
 Address1 varchar(30),Address2 varchar(30),Gender varchar(1),Age BIGINT,phoneno BIGINT);
    
    COMMIT;    
SELECT * FROM customer;
DROP TABLE customer;

COMMIT; 
SELECT * FROM cust_table;
DROP TABLE cust_table;