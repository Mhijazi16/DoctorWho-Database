USE DoctorWho 

GO 

UPDATE tblEpisode SET Title = CONCAT(Title,'_CANCELLED')
WHERE  DoctorID IS NULL AND Title NOT LIKE '%_CANCELLED'; 

DELETE FROM tblCompanion
WHERE tblCompanion.CompanionID NOT IN 
(
    SELECT CompanionID 
    FROM tblEpisodeCompanion
);