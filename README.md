# SQL-Project-
\
Part 1 Course SQL101
Project

Using what you learned during this course,

apply the following: Suppose there is a school in the name of Al-Tammauiz High School, and we want to create a central database to include all the information of teachers, students and subjects, knowing that the following information must be stored for each student (student serial number, student name, date of birth, Student gender, enrollment date, student email, academic level, track, student’s GPA) and teachers’ information as follows (teacher serial number, teacher name, date of birth, teacher gender, teacher email, office number) and subject information as follows (subject serial number , Subject Name).

Requirements:

    Use comments to clarify commands.
    Create the database.
    Create tables.
    View the available tables in the database.
    Enter the information of 30 students as a minimum.
    Enter the information of 10 teachers as a minimum.
    Enter minimum 6 subject information.
    View the contents of all tables.
    View the contents of the student table with the rows arranged in ascending order by student name.
    Displays the contents of the Student table with an alias to the “Student Name” field to shorten the column name or make it meaningful.
    Modification of the data.
        Amending a student's data and changing the student's email.
        Amending the data of a teacher and changing his office number.
    Editing of tables.
        Modify the name of one of the tables.

Notes:

    The serial number is id.
    Gender (F or M).
    The academic level consists of six levels (1, 2, 3, 4, 5, 6).
    Path (scientific or humanitarian).
    GPA out of 100. 


===============================================================================================================================================================================

Part  2 Course SQL102

project

Using what you have learned during this course, apply the following requirements, knowing that this project is complementary to the Level 1 SQL project.

Requirements:

    Create a table for outstanding students from the students table, so that this table contains the data of students whose cumulative average is above 90.
    Create a table for students who have not passed from the table of students, so that this table contains the data of students whose cumulative average is less than 60.
    Display student names that begin with the letter A.
    Display the names of the students whose names contain four digits.
    Apply AVG, MAX, MIN) Aggregate functions) to the student's GPA with the addition of a clear label for the outcome.
    List and display the names of the outstanding students in the sixth level who have a cumulative average of 100.
    Show students who are in the first level and their ages are between 15 and 16 years.
    Show the number of students in level 2.
    Review the student's paths in the school without repetition.
    Material names are displayed and words are displayed in capital letters.
    Show the arithmetic mean of the GPA and round the number to the nearest number (using numeric functions).
    Switch all rows from the students table containing gender F to Female, and M to Male (using string functions).
    Update the GPA of students whose GPA is less than 60 and increase their GPA by five points.


===============================================================================================================================================================================

Part 3 Course SQL103

Project 3

Apply what you have learned through this course so that this project is complementary to the SQL project level 2.

Requirements:

    Create a relationship between the teachers and students table (so that the teacher teaches more than one student, and the student teaches more than one teacher)
    Create a relationship between the subject schedule and teachers (so that the teacher teaches only one subject, and the subject is taught by more than one teacher).
    Create a relationship between the table of subjects and the students (so that the student studies the most subject, and the subject is studied by more than one student).
    Create a procedure called student_info that displays the names of students and subjects and contains all the data shared between the subjects table and students
        Summon it.
    Create a view with teacher_info containing the teacher's name, office number and the name of the subject being taught.
        View view.
        Delete view.
    Create an index to search using student names alphabetically.
        View index.
        Delete index.

    Note: The many to many relationship results in a new table.
