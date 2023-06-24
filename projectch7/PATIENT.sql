CREATE DATABASE hospital;
use hospital;

/*Write a query to create a patients table with the fields such as date, patient id, patient name, age, weight, 
gender, location, phone number, disease, doctor name, and doctor id.*/
CREATE TABLE patients(
entry_date date,
pid varchar(8),
p_name varchar(10),
age int,
weight int,
location varchar(10),
phone_no int, 
disease varchar(10),
doctor varchar(10),
doctor_id int);
/*Write a query to insert values into the patients table*/
INSERT INTO patients(entry_date, pid, p_name, age, weight, location, phone_no, disease, doctor, doctor_id, gender) 
VALUES('06/24/2023', 'AP2030', 'Darius', 33, 70, 'Tunica', 5555555, 'none', 'Gates', 25, 'Male');

/*Write a query to display the total number of patients in the table.*/
select COUNT(p_name) FROM patients;

/*Write a query to display the patient id, patient name, gender, and disease of the patient whose age is maximum*/
SELECT  pid, p_name, gender, disease FROM patients WHERE age = (SELECT MAX(age) from patients );

/*Write a query to display patient id and patient name with the current date.*/
SELECT pid, p_name, current_date() FROM patients;

/*Write a query to display the old patient’s name and new patient's name in uppercase.*/
SELECT UPPER(p_name), entry_date FROM patients;

/*Write a query to display the patient’s name along with the length of their name.*/
SELECT p_name, length(p_name) FROM patients;

/*Write a query to display the patient’s name, and the gender of the patient must be mentioned as M or F.*/
SELECT p_name, gender, CASE
WHEN gender = 'male' THEN 'M'
ELSE 'F'
END  FROM patients;
/*Write a query to combine the names of the patient and the doctor in a new column. */
SELECT concat(p_name , doctor) AS PatDoc  FROM patients;

/*Write a query to display the patients’ age along with the logarithmic value (base 10) of their age.*/
SELECT age, LOG10(age) from patients;

/*Write a query to extract the year from the given date in a separate column.*/
SELECT year(entry_date) FROM patients;

/*Write a query to return NULL if the patient’s name and doctor’s name are similar else return the patient’s name.*/
SELECT IF(p_name = doctor, p_name, NULL) FROM patients;

/*Write a query to return Yes if the patient’s age is greater than 40 else return No.*/
SELECT p_name, IF(age > 40, 'YES', 'NO') FROM patients;
/*Write a query to display the doctor’s duplicate name from the table.*/
SELECT doctor, count(*) FROM patients GROUP BY doctor HAVING COUNT(*) > 1;