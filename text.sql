-- The Following are the tables has to be in your database & model deisgn:
users
codekata
attendance
topics
tasks
company_drives
mentors
students_activated_courses
-- courses

-- 1. Create tables for the above list given
CREATE TABLE zenclass(
    id integer primary key,
    users text,
    codekata integer,
    attendance float,
    company_drives text,
 
);

-- insert at least 5 rows of values in each table//
INSERT INTO zenclass(users,codekata,attendance,company_drives)
VALUES ("Ramesh",200,80%,3)
       ("Ragav",150,60%,2)
       ("Arul",350,75%,1)
       ("Gurunathan",100,40%,5)
       ("Ragul",500,90%,6)


-- Create table 
CREATE TABLE zenclass_topic(
    _id integer foreign key,
    topics text
);
-- insert at least 5 rows of values in each table//
INSERT INTO zenclass_topic(topics)
VALUES ("HTML","CSS","Javascript","React","Nodejs");


-- Create table
CREATE TABLE zenclass_task(
    _id integer foreign key,
    tasks text
);
-- insert at least 5 rows of values in each table//
INSERT INTO zenclass_task(tasks)
VALUES ("create a event container","style the event container","create a arrow function of sum","create a CRUD app","create a nodejs server");


-- Create table
CREATE TABLE zenclass_mentors(
    _id integer foreign key,
    mentors text
);
-- insert at least 5 rows of values in each table//
INSERT INTO zenclass_mentors(mentors)
VALUES("Shiva","Michael","Manoj","Mohammed","Ragav")


-- Create table 
CREATE TABLE zenclass_course(
    _id integer foreign key,
    course text
);
-- insert at least 5 rows of values in each table//
INSERT INTO zenclass_course(course)
VALUES ("MERN stack","AWS","Machine-Learning","Data Science","python");




-- get number problems solved in codekata by combining the users//
SELECT users,codekata from zenclass;


-- display the no of company drives attended by a user//
SELECT users,company_drives from zenclass where users="Ramesh";


-- list all the mentors
SELECT mentors from zenclass_mentors;


--  list the number of students that are assigned for a mentor
SELECT count(users) from zenclass inner join zenclass_mentors on  id=_id where mentors="ragav";

-- combine and display students_activated_courses and courses for a specific user groping them based on the course
SELECT users,course from zenclass inner join zenclass_course on id=_id where users="Ramesh" group by users;