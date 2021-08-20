-- part 2 of the project

use altmmaiuz_hight_school;

create table excellent_student
select * from student where stu_gpa > 90; -- copying students with gpa > 90 to a new table

create table failed_student
select * from student where stu_gpa < 60;  -- copying students with gpa < 60

select * from student where stu_name like 'A%'; -- showing student names that starts with A

select * from student where stu_name like '____'; -- showing student names that are 4 chars long

select min(stu_gpa) as lowestGPA from student ; -- calculating the minmum gpa in the table = 53

select max(stu_gpa) as HighestGPA from student; -- calculating the maxmum gpa in the table = 100

select avg(stu_gpa) as AvrageGPAs from student; -- calculating the avrage gpa in the table = 83.5%

select * from excellent_student
where stu_lvl = 6 and stu_gpa = 100; -- show students who is at level 6 and has 100 GPA

select * from student
where stu_lvl = 1 and year(curdate()) - year(stu_birthday) between 15 and 16; -- show students at level 1 and there age is between 15 and 16

select count(stu_lvl > 2) as 'NumberOfStudentsOnLevel-2' from student; -- shwo the number of students that are at level 2

select distinct stu_track as Track from student; -- to show distinct tracks for students

select upper(sub_name) as "Subjects" from subject; -- to show subject names in apper case 

select floor(avg(stu_gpa)) from student; -- to show avrage and return the smallest true number

select if(stu_sex = 'M', 'Male', 'Female') as gender from student; -- show gender as Male or Female

update failed_student
set stu_gpa = stu_gpa + 5 where stu_gpa < 60; -- give each failing student +5











