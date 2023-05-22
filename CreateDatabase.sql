
CREATE DATABASE DoctorWho

GO 

USE DoctorWho

GO 

CREATE TABLE tblAuthor
(
    AuthorID INT PRIMARY KEY, 
    AuthorName VARCHAR(40) CHECK (LEN(AuthorName) <= 40), 
);

CREATE TABLE tblDoctor
(
    DoctorID INT PRIMARY KEY, 
    DoctorNumber INT NOT NULL, 
    DoctorName VARCHAR(40), 
    BirthDate DATE NOT NULL ,
    LastEpisodeDate Date NOT NULL, 
    FirstEpisodeDate Date NOT NULL, 

    CHECK (FirstEpisodeDate <= LastEpisodeDate),
    CHECK (LEN(DoctorName) <= 40)
);