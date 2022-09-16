CREATE DATABASE QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(50),
cAge int
);
create table Orders(
oid varchar(20) primary key,
cID int,
oDate datetime,
oTotalPrice int,
foreign key (cID) references Customer(cID)
);
CREATE TABLE  Product(
  pID int  primary key,
   pName VARCHAR(20),
   pPrice VARCHAR(10)
);
create table Orderdetail(
oid varchar(20) ,
pID int  ,
primary key (oid, pID),
odQTY  varchar(20),
foreign key (oid) references Orders(oid),
foreign key (pID) references  Product(pID)
);
