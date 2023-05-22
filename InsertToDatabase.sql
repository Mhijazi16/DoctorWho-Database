
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