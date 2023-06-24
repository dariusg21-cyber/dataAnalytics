CREATE database school;
use school; 
/*Write a query to create a students table with appropriate data types for student id, student first name, student last name, class, and age where the student last name, student first name, and student id
 should be a NOT NULL constraint, and the student id should be in a primary key.*/
 CREATE TABLE students(
 s_id int PRIMARY KEY NOT NULL,
 s_fname varchar(20),
 s_lname varchar(10),
 class INT,
 age INT);
 
 /*Write a query to create a marksheet table that includes score, 
 year, ranking, class, and student id.*/
 CREATE TABLE marksheet(
 score int,
 year int,
 class int,
 ranking int,
 s_id int,
 foreign key(s_id) references students(s_id) 
 );
 /*Write a query to insert values in students and marksheet tables.*/
 insert into students(s_id, s_fname, s_lname, class, age ) VALUES(12, 'Darius', 'Gates', 12, 18);

/*Write a query to display student id and student first name from the student table if the age is 
greater than or equal to 16 and the student's last name is Kumar*/
SELECT s_id, s_fname FROM students
WHERE s_lname = 'Kumar';

/*Write a query to display all the details from the marksheet table if the score is between 800 and 1000.*/
SELECT * FROM marksheet WHERE score BETWEEN 800 AND 1000;

/*Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score.*/
SELECT score + 5 AS 'new score' from marksheet;
 
 /*Write a query to display the marksheet table in descending order of the  score.*/
 select * from marksheet order by score desc;
 
 /*Write a query to display details of the students whose first name starts with a.*/
 SELECT * from students where s_fname LIKE 'a%';
 select * from students;