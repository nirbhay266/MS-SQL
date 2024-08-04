create table course 
(
corseId int NOT NULL  PRIMARY KEY,
courseName varchar(255),
courseFee int,
courseDuration char(255),
);
CREATE TABLE Students (
    studentId INT PRIMARY KEY,
    studentName VARCHAR(50),
	studentAdd varchar(255),
	studentEmail char(267),
    courseId INT,
    FOREIGN KEY (courseId) REFERENCES Course(corseId)
);

   select * from course where corseId=101;       

insert into students( studentId,studentName,studentAdd,studentEmail,courseId)
values
('1','Nirbhay','Motihari','nirbhaykkr6@gmail.com','101'),
('2','Deepak','Hajipur','deepakkr6@gmail.com','101'),
('3','Yadav','Motihari','yadavkkr6@gmail.com','102'),
('4','Sandeep','Gaya','sandeepkkr6@gmail.com','103'),
('5','Himanshu','Gajiyabad','himanshukkr6@gmail.com','102'),
('6','Ajay','Motihari','ajayaykkr6@gmail.com','102'),
('7','Sajid','slam','sajidkr6@gmail.com','104'),
('9','rani','ranigadh','ranikkr6@gmail.com','105'),
('10','subhay','saharsa','subhay6@gmail.com','104'),
('11','pritam','ranigadh','pritamkr6@gmail.com','102'),
('12','Ankit','Ansa','ankit@gmail.com','105'),
('13','Amit','Motihari','amotr6@gmail.com','103'),
('14','Bhagirath','bhaydh','bhagirathkr6@gmail.com','105'),
('15','Abhay','bhaydh','abhaythkr6@gmail.com','103'),
('16','Bijay','gay','bijaythkr6@gmail.com','105');

select * from course where corseid=101;

insert into course(corseId,courseName,CourseFee,courseDuration)
values
('101','BCA','5000','3 Year'),
('102','BBA','6000','3 Year'),
('103','MBA','10000','2 Year'),
('104','MCA','10000','2 Year'),
('105','M Tech','20000','3 Year'),
('106','BCA','5000','3 Year'),
('107','BBA','6000','3 Year'),
('108','MBA','10000','2 Year'),
('109','MCA','10000','2 Year'),
('110','M Tech','20000','3 Year');

select * from course;
