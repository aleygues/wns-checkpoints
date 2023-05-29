# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Formateur·rice (Lyon)"
SELECT Candidate.*
FROM Candidate
    LEFT JOIN Application ON Application.candidateId = Candidate.id
    LEFT JOIN Job ON Job.id = Application.jobId
WHERE
    Job.title = "Formateur·rice (Lyon)";