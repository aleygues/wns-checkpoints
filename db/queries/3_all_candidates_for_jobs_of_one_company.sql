# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom
# (dans cet exemple, on est allé plus loin)
SELECT
    Candidate.firstname,
    COUNT(*) applicationsCount
FROM Candidate
    LEFT JOIN Application ON Application.candidateId = Candidate.id
    LEFT JOIN Job ON Job.id = Application.jobId
    LEFT JOIN Company ON Company.id = Job.companyId
WHERE Company.name = "WCS"
GROUP BY Candidate.id
HAVING applicationsCount >= 1;