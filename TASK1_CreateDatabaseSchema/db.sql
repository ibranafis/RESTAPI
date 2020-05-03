CREATE TABLE TEACHERS(
	ID INTEGER NOT NULL,
	FIRST_NAME VARCHAR(15),
	LAST_NAME VARCHAR(25),
	SUBJECT VARCHAR(15),
	PRIMARY KEY(ID)
);

CREATE TABLE CLASSES(
	CLASS_ID INTEGER NOT NULL,
	C_NAME VARCHAR(4),
        PRIMARY KEY(CLASS_ID)
);


CREATE TABLE STUDENTS(
	ID INTEGER NOT NULL,
	FIRST_NAME VARCHAR(15),
	LAST_NAME VARCHAR(25),
	CLASS_ID INTEGER,
	PRIMARY KEY(ID),
	FOREIGN KEY (CLASS_ID) REFERENCES CLASSES(CLASS_ID)	
);

CREATE TABLE CLASSTEACHER(
        CLASS_ID INTEGER,
        TEACHER_ID INTEGER,
        FOREIGN KEY (CLASS_ID) REFERENCES CLASSES(CLASS_ID),
        FOREIGN KEY(TEACHER_ID) REFERENCES TEACHERS(ID)
);

INSERT INTO TEACHERS VALUES(1, 'Smriti', 'Basak', 'Physics'),(2, 'Anchal', 'Pandey', 'English'),
                            (3, 'Reena', 'Mishra', 'Hindi'), (4, 'Prashant', 'Tandon', 'Computer'),
                            (5, 'Roopa', 'Joshi', 'Maths');

INSERT INTO STUDENTS VALUES(1001, 'Rahul', 'Sharma', 5001),(1002, 'Raj', 'Agarwal', 5002),
                            (1007, 'Aakriti', 'Nigam', 5000), (1010,'Shreya', 'Bajpai', 5001),
                            (1020, 'Samarth', 'Gandhi', 5000);
SELECT * FROM STUDENTS;

INSERT INTO CLASSES VALUES(5000, '7C'), (5001, '5B'), (5002,'12A');

INSERT INTO CLASSTEACHER VALUES(5000,1), (5001,2), (5000,5), (5002, 5), (5001, 3), (5002, 3);

SELECT * from TEACHERS;
SELECT * FROM STUDENTS;
SELECT * FROM CLASSES;
SELECT * FROM CLASSTEACHER;

