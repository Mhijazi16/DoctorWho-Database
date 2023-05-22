
CREATE DATABASE DoctorWho

GO 

USE DoctorWho

GO 

CREATE TABLE tblAuthor
(
    AuthorID INT PRIMARY KEY, 
    AuthorName VARCHAR(40) CHECK (LEN(AuthorName) <= 40), 
);