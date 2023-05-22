USE DoctorWho

GO 

CREATE FUNCTION fnCompanions (@episodeID INT)
RETURNS VARCHAR(MAX)
BEGIN 
    DECLARE @names VARCHAR(MAX)

    SELECT @names = CONCAT_WS(', ' , @names, CompanionName)
    FROM tblCompanion
    WHERE tblCompanion.CompanionID  IN 
    ( 
        SELECT CompanionID FROM tblEpisodeCompanion AS ec
        WHERE @episodeID = ec.EpisodeID 
    );
RETURN @names;
END; 

GO