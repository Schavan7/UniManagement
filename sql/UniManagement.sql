

CREATE TABLE IF NOT EXISTS users
(user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cwid varchar(25),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(40) UNIQUE,
	password VARCHAR(30),
	phone VARCHAR(11),
	dept_id INT,
	user_type ENUM('Admin', 'Student','Faculty'),
	DOB DATE,
	FOREIGN KEY(dept_id) REFERENCES departments(dept_id));


	
CREATE TABLE IF NOT EXISTS departments
(dept_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR(50));


CREATE TABLE IF NOT EXISTS courses
(course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE IF NOT EXISTS classes
(class_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
capacity INT,
startdate DATE,
enddate DATE,
faculty_id INT,
course_id INT,
FOREIGN KEY (faculty_id) REFERENCES users(user_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE IF NOT EXISTS enrollments
(enrollment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
startdate DATE,
enddate DATE,
course_id INT,
course_name VARCHAR(50),
class_id INT,
grade DECIMAL(5,2),
student_id INT,
FOREIGN KEY (student_id) REFERENCES users(user_id)
);

CREATE TABLE IF NOT EXISTS addresses
	(address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	address_line1 VARCHAR(40),
	address_line2 VARCHAR(40),
	city VARCHAR(40),
	state VARCHAR(4),
	zip_code VARCHAR(10),
	phone VARCHAR(15),
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
	);




