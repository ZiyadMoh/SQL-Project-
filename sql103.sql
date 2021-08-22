
/* 
	creating a new table named courses that has:
    many-to-many relation between the students and teachers: Teacher teaches many students, and a student study with more than one teacher.
    one-to-many relation between the teachers and subjects: A teacher teaches only one subjec, and a subject is teached by many teachers.
    many-to-many relation between subject and students: A student study many subjects, and a subject is taken by many students.
*/

create table classes(
cls_number int,
sub_id int,
stu_id int,
teac_id int,
foreign key(sub_id) references subject(sub_id),
foreign key(stu_id) references student(stu_id),
foreign key(teac_id) references teacher(teac_id)
);

select * from class;
select * from subject;
select * from student;
select * from teacher;
insert into classes values
-- (cls_nuber, sub_id,stu_id, teac_id)
(1001, 1, 2, 1), (1001, 1, 3, 1), (1001, 1, 4, 1), (1005, 1, 10, 10),
(1002, 2, 2, 2), (1002, 2, 3, 2), (1002, 2, 4, 2), (1006, 2, 11, 9),
(1003, 3, 2, 3), (1003, 3, 3, 3), (1003, 3, 4, 3), (1007, 3, 12, 8),
(1004, 4, 2, 4), (1004, 4, 3, 4), (1004, 4, 4, 4), (1008, 4, 13, 7);

select stu_name as 'student name', teacher.teac_name as 'teacher name', subject.sub_name as 'subject name'
from classes
join student on classes.stu_id=student.stu_id
join teacher on classes.teac_id=teacher.teac_id
join subject on classes.sub_id=subject.sub_id;

-- creating a proceduer named student_info that shows the names of students and subjects and containes the similar infos between them.
/*
DELIMITER // 
create procedure student_info()
BEGIN 
select student.stu_id, student.stu_name, subject.sub_name, classes.cls_number, teacher.teac_name
from classes
join student on classes.stu_id=student.stu_id
join teacher on classes.teac_id=teacher.teac_id
join subject on classes.sub_id=subject.sub_id;
End;
*/
select sub_name from subject;
call student_info; -- calling the proceduer


-- creating a view for showing teachers info without any duplicated rows

create view Teacher_info
as
select distinct teacher.teac_name as 'Teacher name', teacher.teac_officeNo as 'Office', subject.sub_name as 'Subject'
from classes
JOIN teacher on classes.teac_id = teacher.teac_id
JOIN subject on classes.sub_id = subject.sub_id;

select * from teacher_info; -- showing the view
drop view teacher_info; -- Deleting the view


select * from names where stu_name = 'Nouf'; -- this took 0.015 sec
create index stu_names_alphabetically
    on student (stu_name); -- creating an index for the name

show index from student;  -- show the indexes for table student    
    
select * from student where stu_name = 'Nouf'; -- this took 0.000 sec after creating the index

drop index stu_names_alphabetically on student; -- deleting the index




