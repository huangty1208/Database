CREATE TABLE Departments
(
id_Departments NUMBER PRIMARY KEY,
name_Departments VARCHAR2(45) NOT NULL UNIQUE
) ;

CREATE TABLE Managers
(
id_Managers NUMBER PRIMARY KEY,
annual_bonus_amount NUMBER NOT NULL
) ;

CREATE TABLE Projects
(
id_Projects NUMBER PRIMARY KEY,
name_Projects VARCHAR2(45) NOT NULL UNIQUE,
id_Managers NUMBER REFERENCES Managers(id_Managers)  
) ;

CREATE TABLE Researchers
(
id_Researchers NUMBER PRIMARY KEY,
doctorate_degree_subject VARCHAR2(60) NOT NULL,
id_Projects NUMBER REFERENCES Projects(id_Projects)  
) ;

CREATE TABLE Employees
(
id_Employees NUMBER PRIMARY KEY,
first_name_Employees VARCHAR2(50) NOT NULL,
last_name_Employees VARCHAR2(50) NOT NULL,
id_Departments NUMBER REFERENCES Departments (id_Departments) on DELETE CASCADE,
id_Managers NUMBER REFERENCES Managers (id_Managers),
id_Researchers NUMBER REFERENCES Researchers (id_Researchers)
) ;
-- 'I decided to reject cascade deletions in managers, when there may have participating researchers')
-- 'I decided to reject deletions in project, when there are still participating researchers')
-- 'I decided to reject cascade deletions in researchers, when there may have participating managers')

-- The commands are run in ascending order

INSERT INTO Departments
VALUES(1,'Physics') ;

INSERT INTO Departments
VALUES(2,'Chemistry') ;

INSERT INTO Departments
VALUES(3,'Biology') ;

INSERT INTO Departments
VALUES(4,'Statistics') ;

INSERT INTO Departments
VALUES(5,'Computer theory') ;


INSERT INTO Departments
VALUES(6,'History') ;

INSERT INTO Departments
VALUES(7,'Journals') ;

INSERT INTO Departments
VALUES(8,'News') ;

INSERT INTO Departments
VALUES(9,'Baseball') ;

INSERT INTO Departments
VALUES(10,'Republican') ;

INSERT INTO Managers
VALUES(1,5000) ;

INSERT INTO Managers
VALUES(2,10000) ;

INSERT INTO Managers
VALUES(3,15000) ;

INSERT INTO Managers
VALUES(4,20000) ;

INSERT INTO Managers
VALUES(5,25000) ;

INSERT INTO Managers
VALUES(6,30000) ;

INSERT INTO Managers
VALUES(7,35000) ;

INSERT INTO Managers
VALUES(8,40000) ;

INSERT INTO Managers
VALUES(9,45000) ;

INSERT INTO Managers
VALUES(10,50000) ;

INSERT INTO Projects
VALUES(1,'Applied Physics',1) ;

INSERT INTO Projects
VALUES(2,'Applied Chemistry',2) ;

INSERT INTO Projects
VALUES(3,'Applied Biology',3) ;

INSERT INTO Projects
VALUES(4,'Applied Statistics',4) ;

INSERT INTO Projects
VALUES(5,'Applied computer theory',5) ;

INSERT INTO Projects
VALUES(6,'Applied History',6) ;

INSERT INTO Projects
VALUES(7,'Applied Journalism',7) ;

INSERT INTO Projects
VALUES(8,'Applied News Discovery',8) ;

INSERT INTO Projects
VALUES(9,'How to play baseball',9) ;

INSERT INTO Projects
VALUES(10,'How to become a republican',10) ;

INSERT INTO Projects
VALUES(11,'How not to become a republican',10) ;

INSERT INTO Researchers
VALUES(1,'Quantum theory',1) ;

INSERT INTO Researchers
VALUES(2,'Antom theory',2) ;

INSERT INTO Researchers
VALUES(3,'Microbiology',3) ;

INSERT INTO Employees
VALUES(1,'Ty', 'Lawson',1,NULL,1) ;

INSERT INTO Employees
VALUES(2,'Jodie', 'Foster',2,NULL,2) ;

INSERT INTO Employees
VALUES(3,'John', 'Henson', 3,NULL,3) ;

INSERT INTO Employees
VALUES(4,'Dell', 'Oliver',4,1,NULL) ;

INSERT INTO Employees
VALUES(5,'Al', 'Horford', 5,2,NULL) ;

INSERT INTO Employees
VALUES(6,'Brain', 'Shaw', 6,3,NULL) ;

INSERT INTO Employees
VALUES(7,'Big', 'Show', 7,4,NULL) ;

INSERT INTO Employees
VALUES(8,'The', 'Rock', 8,5,NULL) ;

INSERT INTO Employees
VALUES(9,'Dwyane', 'Johnson', 8,6,NULL) ;

INSERT INTO Employees
VALUES(10,'Ttiple', 'H', 9,7,NULL) ;

INSERT INTO Employees
VALUES(11,'Stone', 'Cold', 9,8,NULL) ;

INSERT INTO Employees
VALUES(12,'The', 'Undertaker', 9,9,NULL) ;


