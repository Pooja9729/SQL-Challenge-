use studentsdb;

select * from courses;
select * from enrollments;
select * from students;
-- 1 students with their enrolled course names.
SELECT s.StudentID,s.StudentName,c.CourseName
FROM students s
INNER JOIN enrollments e 
    ON s.StudentID = e.StudentID
INNER JOIN Courses c 
    ON e.CourseID = c.CourseID;
    
-- 2 List all students and their courses, including those without matches.    
SELECT s.StudentID,s.StudentName,e.CourseID
FROM Students s
LEFT JOIN Enrollments e
    ON s.StudentID = e.StudentID;

-- 3 While preparing numeric reports, analysts need to round off decimal values.
SELECT s.StudentID,s.StudentName,e.CourseID
FROM Students s
RIGHT JOIN Enrollments e
ON s.StudentID = e.StudentID;

-- 4 The HR team wants to calculate absolute values and remainders for data validation.
select round(123.4567,2) as Rounded_Value;
select abs(-20) as Absolute_postive_value,
       mod(24,4) as Remainder;

-- 5 The placement cell wants a full description combining each student’s name and city.
select concat(StudentName,' from ',City,'.') as Full_Description from students;

-- 6 The admin wants to find names with length greater than a certain value for formatting.
select StudentName,length(StudentName) as Name_Length from students;

-- 7 Course titles need updating — every occurrence of “SQL” should be replaced with “Database.”
select CourseName,replace(CourseName,"SQL","Database") as Updated_CourseName from courses;

-- 8 For generating student codes, you need the first 3 letters of each name.
SELECT StudentName,SUBSTRING(StudentName, 1, 3) AS Code_Prefix
FROM Students;

-- 9 Standardize name formatting for email IDs and certificates.
select StudentName,UPPER(StudentName) AS UPPER_Name,LOWER(StudentName) AS LOWER_Name
FROM Students;

-- 10 The enrollment team needs to calculate report time, duration, and follow-up dates.
select s.StudentName,e.EnrollmentDate,DATE_ADD(e.EnrollmentDate,interval 10 day) as FollowUp_Date,
datediff('2025-06-01','2025-05-10') as Days_Difference,now() as Current_DateTime from students s join enrollments e
on s.StudentID=e.StudentID;
