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

CREATE FUNCTION fnEnemies (@episodeID INT)
RETURNS VARCHAR(MAX)
BEGIN
    DECLARE @names VARCHAR(MAX); 
    SELECT @names = CONCAT_WS(', ',@names, EnemyName)
    FROM tblEnemy
    WHERE EnemyID IN (
        SELECT EnemyID FROM tblEpisodeEnemy
        WHERE @episodeID = tblEpisodeEnemy.EpisodeID
    )
RETURN @names
END;

GO 

CREATE VIEW viewEpisodes AS
SELECT e.EpisodeID, e.AuthorID, e.DoctorID, e.Title, a.AuthorName, d.DoctorName, e.SeriesNumber, 
                dbo.fnEnemies(e.EpisodeID) AS Enemies, dbo.fnCompanions(e.EpisodeID) AS Companions,
                 e.EpisodeNumber,e.EpisodeType, e.EpisodeDate, e.Notes
FROM tblEpisode e
LEFT JOIN tblDoctor d ON e.DoctorID = d.DoctorID
LEFT JOIN tblAuthor a ON e.AuthorID = a.AuthorID;

GO 

CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN
    SELECT EnemyName FROM tblEnemy
    WHERE EnemyID IN
    (
        SELECT TOP(3) EnemyID
        FROM tblEpisodeEnemy
        GROUP BY EnemyID
        ORDER BY COUNT(EpisodeID) DESC  
    );

END;

GO