create database QuanLySinhVien;
use QuanLySinhVien;
create table class(
ClassID int not null Primary key auto_increment,
ClassName varchar(60) not null,
StartDate Datetime not null,
Status Bit
);
create table Student(
StudentID int not null Primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status Bit,
 ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
create table Subject (
SubID int not null Primary key auto_increment,
SubName varchar(30) not null,
Credit Tinyint not null default  1 Check ( credit >=1),
Status Bit default 1
);
create table MArk(
MarkID int not null Primary key auto_increment,
SubID INT not null,
StudentID INT not null,
Mark Float not null default 0 check (Mark Between 0 and 100),
ExamTimes Tinyint default 1, 
unique (SubID, StudentId),
  FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);