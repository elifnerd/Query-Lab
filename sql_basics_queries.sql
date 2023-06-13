-- PROBLEM 1: How many students are in the students table? 
SELECT COUNT(id) FROM students;
-- 1000 students in students table

-- PROBLEM 2: Which student(s) has the highest GPA in the table?
SELECT id, first_name, last_name, gpa from students
order by gpa desc
limit 1; 
-- id 507, first_name Harwill, last_name Hawken

-- PROBLEM 3: How many students are located in the state of Virginia?
select state, count(id) as students_in_virginia
from students
group by state
having state = 'VA';
-- 35 students in VA

-- How many students have a GPA that is higher than 3.5?
select count(gpa)
from students
where gpa < 3.5;
-- 830 student have a high GPA

-- PROBLEM 5: How many students are NOT on the Honors List? 
select count(honors_list)
from students
where honors_list != true;
-- 505 students are not on the Honors List

-- PROBLEM 6: Two students have the email domain “narod.ru”. What are the names of those students?
select id, first_name, last_name, email
from students
where email like '%narod.ru';
-- 551 Jacintha Upfold, 888 Becka Verbrugghen
 
-- PROBLEM 7: How many students have a GPA between 2.0 and 3.0? (inclusive) 
select sum(gpa)
from students
where gpa between 2 and 3;
-- 823 students have a GPA between 2.0 and 3.0

-- PROBLEM 8: What is the average GPA of all students in the students table? 
select avg(gpa)
from students;
-- the average of the students' GPA is 2.485060

-- PROBLEM 9: What is the average GPA of all students in the state of California? 
select state, avg(gpa)
from students 
where state = 'CA';
-- the average GPA of students in CA is 2.611250

-- PROBLEM 10: Which student has the lowest GPA of all students with an address that contains the word “Street”?
select id, first_name, last_name, address, gpa
from students
where address like "%Street"
order by gpa asc
limit 1;
-- 253 Gwyneth Decaze at 2161 Northridge Street has the lowest GPA, coming in at 1.01
