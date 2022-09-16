CREATE DATABASE QuanLyDiemThi;
use QuanLyDiemThi;
create table MonHoc(
MAMH varchar(20) primary key,
TENMH varchar(50)
);
create table HOCSINH(
MAHS varchar(20) primary key,
TENHS varchar(50),
NGAYSINH datetime,
LOP varchar(20),
GT varchar(20)
);
create table BANGDIEM(
MAHS varchar(20),
MAMH varchar(20),
DIEMTHI int,
NGAYKT datetime,
primary key (MAHS, MAMH),
foreign key (MAHS) references HOCSINH(MAHS),
foreign key (MAMH) references monhoc(MAMH)
);
CREATE TABLE GiaoVien(
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT VARCHAR(10)
);
alter table monhoc add maGV varchar(20);
alter table monhoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
