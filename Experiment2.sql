 Create table Student (StudentID int, Name varchar(30), Age int);

 Insert into Student values(1,’Alice’, 20);
 Insert into Student values(2,’bob’, 30);
 Insert into Student values(3,’harish’, 40);

 Create table Courses (CourseID int, CourseName varchar(20)); 

 Insert into Courses values(1,’math’); 
 Insert into Courses values(2,’english’);
 Insert into Courses values(3,’history’);

 Create table Enrollments (EnrollmentID int, StudentID int, CourseID int, Grade 
 varchar(5));

 Insert into Enrollments values(1,1,1,’A’); 
 Insert into Enrollments values(2,1,2,’B’);
 Insert into Enrollments values(3,2,1,’A-’);
 Insert into Enrollments values(4,3,3,’B+’);
 Insert into Enrollments values(5,3,2,’A’); 

 SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, 
 Courses.CourseName, Enrollments.Grade FROM Student INNER JOIN Enrollments 
 ON Student.StudentID = Enrollments.StudentID INNER JOIN Courses ON 
 Enrollments.CourseID = Courses.CourseID;

 SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, 
 Courses.CourseName, Enrollments.Grade FROM Student LEFT JOIN Enrollments ON 
 Student.StudentID = Enrollments.StudentID LEFT JOIN Courses ON 
 Enrollments.CourseID = Courses.CourseID;
 
 SELECT Student.StudentID, Student.Name, Student.Age, Courses.CourseID, 
 Courses.CourseName, Enrollments.Grade FROM Courses RIGHT JOIN Enrollments ON 
 Courses.CourseID = Enrollments.CourseID RIGHT JOIN Student ON 
 Enrollments.StudentID = Student.StudentID; 


   