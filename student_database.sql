/*-------------note-----------**sql---is not case sensitive------------------------------------*/

/*---------------------------------------created database--------------------------------------*/
CREATE DATABASE student;
USE student;
/*------------------------------------creating table-------------------------------------------*/
CREATE TABLE student_deatils(
			sl_no INT NOT NULL,
            name VARCHAR(30) NOT NULL,
            student_id INT PRIMARY KEY NOT NULL,
            age INT NOT NULL,
            date_of_birth DATE,
            year_of_birth YEAR,
            city_of_origin VARCHAR(50)  NOT NULL,
            phone_no VARCHAR(30) UNIQUE,
            email_id VARCHAR(200) UNIQUE NOT NULL
);
CREATE TABLE department_details(
			branch VARCHAR(50) NOT NULL,
			DEPT VARCHAR(50) NOT NULL
);  

CREATE TABLE course_details(
			course_id INT PRIMARY KEY NOT NULL,
            course_name VARCHAR(50) NOT NULL,
            no_of_crredits INT
);
CREATE TABLE student_course_enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES student_deatils(student_id),
    FOREIGN KEY (course_id) REFERENCES course_details(course_id)
);
CREATE TABLE student_grades (
    course_id INT PRIMARY KEY,
    grade FLOAT,
    FOREIGN KEY (course_id) REFERENCES student_course_enrollments(course_id)
);
CREATE TABLE user_accounts (
    username VARCHAR(50) PRIMARY KEY,
    _password_ VARCHAR(255) NOT NULL
);
/*------------------------------------------inserting the values-----------------------------------------------------*/

/*----------------------------Insert data for students into the student_deatils table--------------------------------*/

INSERT INTO 
student_deatils(sl_no, name, student_id, age, date_of_birth, year_of_birth, city_of_origin, phone_no, email_id)
VALUES
    (1, 'John Doe', 1001, 22, '2001-05-15', 2001, 'New York', '123-456-7890', 'john.doe@example.com'),
    (2, 'Jane Smith', 1002, 21, '2002-03-20', 2002, 'Los Angeles', '987-654-3210', 'jane.smith@example.com'),
    (3, 'Alice Johnson', 1003, 20, '2003-07-10', 2003, 'Chicago', '555-555-5555', 'alice.johnson@example.com'),
    (4, 'Bob Williams', 1004, 22, '2001-02-28', 2001, 'Houston', '111-222-3333', 'bob.williams@example.com'),
    (5, 'Eva Davis', 1005, 23, '2000-11-05', 2000, 'Miami', '444-555-6666', 'eva.davis@example.com'),
    (6, 'David Lee', 1006, 21, '2002-09-14', 2002, 'San Francisco', '777-888-9999', 'david.lee@example.com'),
    (7, 'Grace Brown', 1007, 20, '2003-01-30', 2003, 'Denver', '333-222-1111', 'grace.brown@example.com'),
    (8, 'Michael Wilson', 1008, 22, '2001-12-10', 2001, 'Boston', '999-888-7777', 'michael.wilson@example.com'),
    (9, 'Sophia Miller', 1009, 21, '2002-08-18', 2002, 'Phoenix', '666-777-8888', 'sophia.miller@example.com'),
    (10, 'William Taylor', 1010, 23, '2000-04-25', 2000, 'Seattle', '222-333-4444', 'william.taylor@example.com'),
    (11, 'Olivia Anderson', 1011, 20, '2003-03-09', 2003, 'Dallas', '777-666-5555', 'olivia.anderson@example.com'),
    (12, 'James Hernandez', 1012, 22, '2001-10-12', 2001, 'Atlanta', '444-333-2222', 'james.hernandez@example.com'),
    (13, 'Ava Martinez', 1013, 21, '2002-06-07', 2002, 'Philadelphia', '999-111-2222', 'ava.martinez@example.com'),
    (14, 'Benjamin Gonzalez', 1014, 20, '2003-08-22', 2003, 'Detroit', '555-888-1111', 'benjamin.gonzalez@example.com'),
    (15, 'Mia Lewis', 1015, 23, '2000-01-18', 2000, 'San Diego', '333-777-5555', 'mia.lewis@example.com'),
    (16, 'Henry Clark', 1016, 22, '2001-09-02', 2001, 'Minneapolis', '222-999-4444', 'henry.clark@example.com'),
    (17, 'Lily Hall', 1017, 21, '2002-05-14', 2002, 'Kansas City', '111-444-7777', 'lily.hall@example.com'),
    (18, 'Jackson Baker', 1018, 20, '2003-04-01', 2003, 'Las Vegas', '888-555-2222', 'jackson.baker@example.com'),
    (19, 'Ella Mitchell', 1019, 22, '2001-11-19', 2001, 'Portland', '666-222-1111', 'ella.mitchell@example.com'),
    (20, 'Samuel Perez', 1020, 21, '2002-07-23', 2002, 'Miami', '777-555-1111', 'samuel.perez@example.com');
    
 /*---------------------------------------displaying_table--------------------------------------------------------*/
 
select * from student_deatils;

/*-------------------------------------Insert data for academic departments----------------------------------------*/
INSERT INTO department_details (branch, DEPT)
VALUES
    ('Computer Science', 'CS'),
    ('Electrical Engineering', 'EE'),
    ('Mechanical Engineering', 'ME'),
    ('Physics', 'PH'),
    ('Mathematics', 'MATH'),
    ('Biology', 'BIO'),
    ('Chemistry', 'CHEM');
    
/*---------------------------------------displaying_table--------------------------------------------------------*/

select * from department_details;

/*------------------------------------Insert data for courses-----------------------------------------------------*/
INSERT INTO course_details (course_id, course_name, no_of_crredits)
VALUES
    (1, 'Introduction to Computer Science', 3),
    (2, 'Linear Algebra', 4),
    (3, 'Mechanics of Materials', 3),
    (4, 'Introduction to Physics', 4),
    (5, 'Calculus I', 4),
    (6, 'Organic Chemistry', 3),
    (7, 'English Composition', 3),
    (8, 'History of Art', 3),
    (9, 'Introduction to Psychology', 3),
    (10, 'Principles of Economics', 3),
    (11, 'Introduction to Sociology', 3),
    (12, 'Microbiology', 4),
    (13, 'Digital Marketing', 3),
    (14, 'Environmental Science', 4),
    (15, 'Data Structures and Algorithms', 4),
    (16, 'Human Anatomy', 4),
    (17, 'World History', 3),
    (18, 'Business Ethics', 3),
    (19, 'Introductory Statistics', 3),
    (20, 'Ethical Hacking', 4);
    
/*---------------------------------------displaying_table--------------------------------------------------------*/
select * from course_details ;

/*----------------------------Insert data for student course enrollments-------------------------------------------*/
INSERT INTO student_course_enrollments (enrollment_id, student_id, course_id)
VALUES
    (1, 1001, 1),    -- Student 1001 enrolled in Course 1
    (2, 1001, 2),    -- Student 1001 enrolled in Course 2
    (3, 1002, 3),    -- Student 1002 enrolled in Course 3
    (4, 1002, 4),    -- Student 1002 enrolled in Course 4
    (5, 1003, 5),    -- Student 1003 enrolled in Course 5
    (6, 1003, 6),    -- Student 1003 enrolled in Course 6
    (7, 1004, 7),    -- Student 1004 enrolled in Course 7
    (8, 1004, 8),    -- Student 1004 enrolled in Course 8
    (9, 1005, 9),    -- Student 1005 enrolled in Course 9
    (10, 1005, 10),  -- Student 1005 enrolled in Course 10
    (11, 1006, 11),  -- Student 1006 enrolled in Course 11
    (12, 1006, 12),  -- Student 1006 enrolled in Course 12
    (13, 1007, 13),  -- Student 1007 enrolled in Course 13
    (14, 1007, 14),  -- Student 1007 enrolled in Course 14
    (15, 1008, 15),  -- Student 1008 enrolled in Course 15
    (16, 1008, 16),  -- Student 1008 enrolled in Course 16
    (17, 1009, 17),  -- Student 1009 enrolled in Course 17
    (18, 1009, 18),  -- Student 1009 enrolled in Course 18
    (19, 1010, 19),  -- Student 1010 enrolled in Course 19
    (20, 1010, 20);  -- Student 1010 enrolled in Course 20

/*---------------------------------------displaying_table--------------------------------------------------------*/
select * from student_course_enrollments;

/*-------------------------------Insert data for course grades----------------------------------------------------*/
INSERT INTO student_grades (course_id, grade)
VALUES
    (1, 95.0),    -- Course 1 received a grade of 95.0
    (2, 88.5),    -- Course 2 received a grade of 88.5
    (3, 91.2),    -- Course 3 received a grade of 91.2
    (4, 78.7),    -- Course 4 received a grade of 78.7
    (5, 85.3),    -- Course 5 received a grade of 85.3
    (6, 92.0),    -- Course 6 received a grade of 92.0
    (7, 89.9),    -- Course 7 received a grade of 89.9
    (8, 76.5),    -- Course 8 received a grade of 76.5
    (9, 84.0),    -- Course 9 received a grade of 84.0
    (10, 90.8),   -- Course 10 received a grade of 90.8
    (11, 87.2),   -- Course 11 received a grade of 87.2
    (12, 93.4),   -- Course 12 received a grade of 93.4
    (13, 79.5),   -- Course 13 received a grade of 79.5
    (14, 88.0),   -- Course 14 received a grade of 88.0
    (15, 84.7),   -- Course 15 received a grade of 84.7
    (16, 91.1),   -- Course 16 received a grade of 91.1
    (17, 77.9),   -- Course 17 received a grade of 77.9
    (18, 85.6),   -- Course 18 received a grade of 85.6
    (19, 90.2),   -- Course 19 received a grade of 90.2
    (20, 86.8);
    
/*---------------------------------------displaying_table--------------------------------------------------------*/
select * from student_grades;

/*-------------------------------Insert data for user accounts----------------------------------------------------*/
INSERT INTO user_accounts (username, _password_)
VALUES
    ('user1', '_password_1'),
    ('user2', '_password_2'),
    ('user3', '_password_3'),
    ('user4', '_password_4'),
    ('user5', '_password_5'),
    ('user6', '_password_6'),
    ('user7', '_password_7'),
    ('user8', '_password_8'),
    ('user9', '_password_9'),
    ('user10', '_password_10'),
    ('user11', '_password_11'),
    ('user12', '_password_12'),
    ('user13', '_password_13'),
    ('user14', '_password_14'),
    ('user15', '_password_15'),
    ('user16', '_password_16'),
    ('user17', '_password_17'),
    ('user18', '_password_18'),
    ('user19', '_password_19'),
    ('user20', '_password_20');
    
/*---------------------------------------displaying_table--------------------------------------------------------*/
select * from user_accounts;

/*------------------------------------selection operations--(display)--------------------------------------------*/
-- some quires using select

select * from student_deatils where age>22;                -- gives the tabel with student age grater than 22
select * from student_deatils order by student_id desc;    -- gives tabel desending order by student id
select city_of_origin ,count(name) from student_deatils group by city_of_origin;   -- no of students from each city
select course_name ,count(course_id) from course_details group by course_name;     -- no of courses from each course id(always gives one to the count(course id) because all unique)
select count(name),city_of_origin from student_deatils group by city_of_origin having MAX(age)>20; -- give the tabel containing the group of student age>20 by city of origin

/*--------------------------------------oprerations on tables-----------------------------------------------------*/

-- some quires on tables

delete from student_deatils where age >20;                                   -- deletes the age whose is grater then 20
select * from student_deatils;

alter table student_deatils add column sir_name VARCHAR(50) DEFAULT "none";   -- adds column sir_name with default value as none  
select * from student_deatils;

alter table department_details change branch branch_name varchar(50);		-- change the column name
select * from department_details;

alter table student_course_enrollments rename course_enrollments;			-- changed table name from student_course_enrollments to course_enrollments
select * from course_enrollments;

alter table  department_details drop column sir_name;					-- drops the column sir_name we created
select * from department_details;


/*----------------------------------quires using joints -----------------------------------------------------------*/

-- inner joint
select * from student_deatils inner join course_details on student_id = course_id;  -- displays nothing as they all ids are unique

-- left joint
select * from course_enrollments as a left join student_deatils as b on a.student_id = b.student_id;   -- dispalys all the collums of left and common in right

-- right joint
select * from course_enrollments as c right join student_grades as d on c.course_id = d.course_id;     -- dispalys all the collums of right and common in left

/*-----------------------------------------------------------------------------------------------------------------------------------*/
select student_id from student_deatils where student_id % 2 = 0;		-- gives the tabel with the student_id which is % by 2

/*------------------------------------------------------------*****END*****-----------------------------------------------------*/