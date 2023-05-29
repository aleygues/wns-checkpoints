# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"
INSERT INTO
    Recruiters (login, password)
VALUES ("Félicie", "supersecret");

INSERT INTO
    Company (name, recruiterId)
VALUES ("WCS", 1);

INSERT INTO
    Job (title, location, companyId)
VALUES (
        "Formateur·rice (Lyon)",
        "Lyon",
        1
    );

INSERT INTO
    Job (title, location, companyId)
VALUES (
        "Formateur·rice (Paris)",
        "Paris",
        1
    );

INSERT INTO
    Candidate(login, password, firstname)
VALUES ("Pierre", "1234cat", "Pierre");

INSERT INTO
    Candidate(login, password, firstname)
VALUES ("Kevin", "ABCD", "Kevin");

INSERT INTO
    Application(jobId, candidateId)
VALUES (1, 1);

INSERT INTO
    Application(jobId, candidateId)
VALUES (2, 2);

INSERT INTO
    Application(jobId, candidateId)
VALUES (1, 2);