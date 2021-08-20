/*
Database simple project for SQL101 course by Tuwaiq E-learning platform

In this project I applied SQL basics to create a database for a Al-tmmaiuz high school 

It has three tables (Student, Teacher, Subject) all tables have an ID and it's the primary key for all.

The number of data for the Student, Teacher, and Subject tables are 30, 10, 6 respectively
 
 */


create database altmmaiuz_hight_school; -- creating the database
use altmmaiuz_hight_school;
create table students( -- student table
stu_id int primary key,
stu_name varchar(255),
stu_birthday date,
stu_sex char(1),
stu_regDate date,
stu_email varchar(255),
stu_lvl char(1),
stu_track varchar(255),
stu_GPA int
);
create table teachers( -- teacher table
teac_id int primary key,
teac_name varchar(255),
teac_birthday date,
teac_sex char(1),
teac_email varchar(255),
teac_officeNo date
);
alter table teachers 
modify column teac_officeNo int;

create table subjects( -- subject table
sub_id int primary key,
sub_name varchar(255)
);

show tables; -- show tables that are created 

insert into students -- filling the student table with students data
values  
(2, "Khalid", "1998-08-23", 'M', "2021-08-20", "Khalid@gmail.com","3" ,"human sciences", 98),
(3, "Omar", "1997-05-23", 'M', "2021-08-20", "Omar@gmail.com","4" ,"human sciences", 88),
(4, "Faisal", "1994-03-12", 'M', "2021-08-20", "Faisal@gmail.com","5" ,"human sciences", 95),
(5, "Sarah", "1999-05-22", 'F', "2021-08-20", "Sarah@gmail.com","6" ,"human sciences", 97),
(6, "Mohammed", "2004-03-03", 'M', "2021-08-20", "Mohammed@gmail.com","1" ,"human sciences", 91),
(7, "Abuallah", "1994-04-11", 'M', "2021-08-20", "Abuallah@gmail.com","2" ,"human sciences", 90),
(8, "Maryam", "1996-05-05", 'F', "2021-08-20", "Maryam@gmail.com","2" ,"Natural Sciences", 98),
(9, "Nora", "1999-06-02", 'F', "2021-08-20", "Nora@gmail.com","5" ,"Natural Sciences", 98),
(10, "Kholoud", "2003-03-03", 'M', "2021-08-20", "Kholoud@gmail.com","6" ,"Natural Sciences", 69),
(11, "Wafa", "2007-02-13", 'F', "2021-08-20", "Wafa@gmail.com","6" ,"Natural Sciences", 77),
(12, "Wahaab", "2002-01-21", 'M', "2021-08-20", "Wahaab@gmail.com","1" ,"Natural Sciences", 88),
(13, "Bander", "2001-10-05", 'M', "2021-08-20", "Bander@gmail.com","6" ,"human sciences", 93),
(14, "Qussay", "2000-03-10", 'M', "2021-08-20", "Qussay@gmail.com","4" ,"human sciences", 78),
(15, "Ziyad", "1998-01-10", 'M', "2021-08-20", "Amro@gmail.com","3" ,"human sciences", 99),
(16, "Aboualmajeed", "1999-01-04", 'M', "2021-08-20", "Aboualmajeed@gmail.com","6" ,"Natural Sciences", 100), 
(17, "Shaheen", "1998-08-23", 'M', "2021-08-20", "Shaheen@gmail.com","2" ,"human sciences", 90),
(18, "Yaser", "1998-08-23", 'M', "2021-08-20", "Yaser@gmail.com","3" ,"Natural Sciences", 91),
(19, "Naif", "1998-08-23", 'M', "2021-08-20", "Naif@gmail.com","4" ,"human sciences", 92),
(20, "Hassan", "1998-08-23", 'M', "2021-08-20", "Hassan@gmail.com","3" ,"Natural Sciences", 93),
(21, "Hussam", "1998-08-23", 'M', "2021-08-20", "Hussam@gmail.com","2" ,"human sciences", 94),
(22, "Yousef", "1998-08-23", 'M', "2021-08-20", "Yousef@gmail.com","1" ,"human sciences", 94),
(23, "Abdualaziz", "1998-08-23", 'M', "2021-08-20", "Abdualaziz@gmail.com","6" ,"human sciences", 95),
(24, "Saad", "1998-08-23", 'M', "2021-08-20", "Saad@gmail.com","6" ,"human sciences", 97),
(25, "Raghad", "1998-08-23", 'F', "2021-08-20", "Raghad@gmail.com","3" ,"human sciences", 96),
(26, "Abdualrahman", "1998-08-23", 'M', "2021-08-20", "Abdualrahman@gmail.com","2" ,"Natural Sciences", 98),
(27, "Hamzah", "1998-08-23", 'M', "2021-08-20", "Hamzah@gmail.com","3" ,"human sciences", 78),
(28, "Kareem", "1998-08-23", 'M', "2021-08-20", "Kareem@gmail.com","5" ,"Natural Sciences", 78),
(29, "Hayah", "1998-08-23", 'F', "2021-08-20", "Hayah@gmail.com","6" ,"human sciences", 94),
(30, "Nouf", "1998-08-23", 'F', "2021-08-20", "Nouf@gmail.com","2" ,"Natural Sciences", 96);

select * from students;

insert into teachers values -- filling the teacher tables with teachers data
(1, "Ahmed", "1997-05-12", "M", "Ahmedteacher@gmail.com", "2000"),
(2, "Mohammed", "1998-11-20", "M", "Mohammedteacher@gmail.com", "2001"),
(3, "Riydh", "1889-09-09", "M", "Riydhteacher@gmail.com", "2002"),
(4, "Dania", "1891-09-09", "F", "Daniateacher@gmail.com", "2003"),
(5, "Abdualrahman", "1892-09-09", "M", "Abdualrahmanteacher@gmail.com", "2004"),
(6, "Abduallah", "1893-09-09", "M", "Abduallahteacher@gmail.com", "2005"),
(7, "Mira", "1894-09-09", "F", "Mirateacher@gmail.com", "2006"),
(8, "Faisal", "1895-09-09", "M", "Faisalteacher@gmail.com", "2007"),
(9, "Khalid", "1896-09-09", "M", "Khalidteacher@gmail.com", "2008"),
(10, "Ziyad", "1897-09-09", "M", "Ziyadteacher@gmail.com", "2009");

select * from teachers order by teac_id;
delete from teachers where teac_id > 0;

insert into subjects values -- filling the subjects tables with subjects data
(1, "Math244"),
(2, "Math106"),
(3, "CSC101"),
(4, "CSC454"),
(5, "CHEM101"),
(6,"ISL180");

select * from students; -- show students table
select * from teachers; -- show teachers table
select * from subjects; -- show subjects table

select * from students order by stu_name ASC; -- show students with ascending order for student name

select stu_name as Name from students; -- show students with an Aliases for the students name

update students
set stu_email = "Nora@student.edu.sa" where stu_id = 9; -- update email for student

update teachers -- update office Number for teatcher
set teac_officeNo = 1990 where teac_id = 6;

alter table students -- change table name
rename studen;

alter table teachers 
rename teacher;

alter table subjects
rename subject;

