# student-database

## Tables

The database consists of the following tables:

    student_details: Stores information about students, including their name, student ID, age, date of birth, and contact details.

    department_details: Contains data related to academic departments and their branches.

    course_details: Stores information about academic courses, including course ID, course name, and the number of credits.

    student_course_enrollments: Represents the enrollment of students in various courses, with enrollment details and foreign keys referencing students and courses.

    student_grades: Records student grades for different courses, with a foreign key reference to the enrolled course.

    user_accounts: Manages user accounts for the system, including usernames and hashed passwords.


  Database Creation

    The script begins by creating a new database named "student" and selecting it for use.

Table Creation

    Several tables are created: student_details, department_details, course_details, student_course_enrollments, student_grades, and user_accounts.

Data Insertion

    Data is inserted into the tables to populate them with sample information.
    Student data, department data, course data, student enrollments, grades, and user account information are all inserted into their respective tables.

Selection Operations

    Various SQL queries are provided to demonstrate data retrieval operations, including selecting students based on age, ordering students by student ID, counting students from each city, counting courses, and selecting students based on specific criteria using SELECT statements.

Table Operations

    Several table operations are demonstrated, including deleting records based on age, adding a new column with a default value, changing column names, renaming tables, and dropping columns.

Joins

    Inner, left, and right joins are illustrated using sample queries.
