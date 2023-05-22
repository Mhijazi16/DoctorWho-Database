
USE DoctorWho 

GO

INSERT INTO tblAuthor (AuthorID, AuthorName)
VALUES (1, 'Author 1'),
       (2, 'Author 2'),
       (3, 'Author 3'),
       (4, 'Author 4'),
       (5, 'Author 5');

INSERT INTO tblDoctor (DoctorID, DoctorNumber, DoctorName, BirthDate, LastEpisodeDate, FirstEpisodeDate)
VALUES (1, 1001, 'Doctor 1', '1980-01-01', '2022-12-31', '1980-01-01'),
       (2, 1002, 'Doctor 2', '1990-01-01', '2022-12-31', '1990-01-01'),
       (3, 1003, 'Doctor 3', '2000-01-01', '2022-12-31', '2000-01-01'),
       (4, 1004, 'Doctor 4', '2010-01-01', '2022-12-31', '2010-01-01'),
       (5, 1005, 'Doctor 5', '2020-01-01', '2022-12-31', '2020-01-01');

INSERT INTO tblEpisode (EpisodeID, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorID, DoctorID, Notes)
VALUES (1, 1, 1, 'Episode Type 1', 'Episode Title 1', '2022-01-01', 1, 1, 'Notes 1'),
       (2, 1, 2, 'Episode Type 2', 'Episode Title 2', '2022-01-02', 1, 2, 'Notes 2'),
       (3, 2, 1, 'Episode Type 1', 'Episode Title 3', '2022-02-01', 3, 3, 'Notes 3'),
       (4, 2, 2, 'Episode Type 2', 'Episode Title 4', '2022-02-02', 5, 2, 'Notes 4'),
       (5, 3, 1, 'Episode Type 1', 'Episode Title 5', '2022-03-01', 5, 5, 'Notes 5');

INSERT INTO tblEnemy (EnemyID, EnemyName, Description)
VALUES (1, 'Enemy 1', 'Description 1'),
       (2, 'Enemy 2', 'Description 2'),
       (3, 'Enemy 3', 'Description 3'),
       (4, 'Enemy 4', 'Description 4'),
       (5, 'Enemy 5', 'Description 5');

INSERT INTO tblCompanion (CompanionID, CompanionName, WhoPlayed)
VALUES (1, 'Companion 1', 'Actor 1'),
       (2, 'Companion 2', 'Actor 2'),
       (3, 'Companion 3', 'Actor 3'),
       (4, 'Companion 4', 'Actor 4'),
       (5, 'Companion 5', 'Actor 5');
