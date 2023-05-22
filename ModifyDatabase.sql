USE DoctorWho 

GO 

INSERT INTO tblEpisode(EpisodeID, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorID, DoctorID, Notes)
        VALUES (15, 1, 4, 'Episode Type 1', 'Episode Title', '2022-01-01', 2, NULL, 'Notes 1');

UPDATE tblEpisode SET Title = CONCAT(Title,'_CANCELLED')
WHERE  DoctorID IS NULL AND Title NOT LIKE '%_CANCELLED'; 

DELETE FROM tblCompanion
WHERE tblCompanion.CompanionID NOT IN 
(
    SELECT CompanionID 
    FROM tblEpisodeCompanion
);