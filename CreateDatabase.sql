
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

CREATE TABLE tblEnemy
(
    EnemyID INT PRIMARY KEY, 
    EnemyName VARCHAR(40) NOT NULL, 
    Description NVARCHAR(500), 

    CHECK (LEN(EnemyName) <= 40),
    CHECK (LEN(Description) <= 500),
);

CREATE TABLE tblCompanion
(
    CompanionID INT PRIMARY KEY,
    CompanionName VARCHAR(30)  NOT NULL, 
    WhoPlayed VARCHAR(30),   

    CHECK (LEN(CompanionName) <= 30),
    CHECK (LEN(WhoPlayed) <= 30),
);

CREATE TABLE tblEpisodeCompanion
(
    EpisodeCompanionID INT PRIMARY KEY, 
    EpisodeID INT, 
    CompanionID INT, 

    FOREIGN KEY (EpisodeID) REFERENCES tblEpisode(EpisodeID),
    FOREIGN KEY (CompanionID) REFERENCES tblCompanion(CompanionID), 
);

CREATE TABLE tblEpisodeEnemy
(
    EpisodeEnemyID INT PRIMARY KEY, 
    EpisodeID INT, 
    EnemyID INT, 

    FOREIGN KEY (EpisodeID) REFERENCES tblEpisode(EpisodeID), 
    FOREIGN KEY (EnemyID)   REFERENCES tblEnemy(EnemyID), 
);