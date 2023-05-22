
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

CREATE TABLE tblEpisode
(
    EpisodeID INT PRIMARY KEY, 
    SeriesNumber INT NOT NULL,
    EpisodeNumber SMALLINT NOT NULL, 
    EpisodeType VARCHAR(30), 
    Title VARCHAR(35) , 
    EpisodeDate DATE NOT NULL, 
    AuthorID INT, 
    DoctorID INT, 
    Notes NVARCHAR(255) , 

    FOREIGN KEY (AuthorID) REFERENCES tblAuthor(AuthorID), 
    FOREIGN KEY (DoctorID) REFERENCES tblDoctor(DoctorID), 
    CHECK (LEN(Title) <= 35),
    CHECK (LEN(Notes) <= 255)
);