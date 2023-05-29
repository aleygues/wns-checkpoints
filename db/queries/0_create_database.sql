# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")
CREATE TABLE
    Recruiters (
        id integer PRIMARY KEY AUTOINCREMENT,
        login varchar,
        password varchar,
        createdAt timestamp
    );

CREATE TABLE
    Candidate (
        id integer PRIMARY KEY AUTOINCREMENT,
        login varchar,
        password varchar,
        firstname varchar,
        lastname varchar,
        email varchar,
        presentation text,
        phoneNumber varchar,
        createdAt timestamp
    );

CREATE TABLE
    Company (
        id integer PRIMARY KEY AUTOINCREMENT,
        name varchar,
        description text,
        recruiterId integer,
        createdAt timestamp
    );

CREATE TABLE
    Job (
        id integer PRIMARY KEY AUTOINCREMENT,
        title varchar,
        description text,
        location varchar,
        companyId integer,
        createdAt timestamp
    );

CREATE TABLE
    Application (
        id integer PRIMARY KEY AUTOINCREMENT,
        candidateId integer,
        jobId integer,
        createdAt timestamp
    );

# ALTER TABLE Application ADD FOREIGN KEY