# Écris une requêtes SQL qui retourne toutes les offres d'emploi proposées à Paris (ville)
SELECT *
FROM Job
WHERE Job.location = "Paris";

UPDATE Candidate
SET phoneNumber = "0603030303"
WHERE id = 2;

DELETE FROM Candidate
WHERE id = 2;