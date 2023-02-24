######## Révision bases #######

SHOW DATABASES;

CREATE DATABASE revisions_intra;

USE revisions_intra;

SHOW TABLES;

CREATE TABLE Etudiants
(
    idul    char(5) PRIMARY KEY,
    nom     char(40),
    age     integer,
    moyenne double,
    nas     integer
);

INSERT INTO Etudiants
VALUES ("ALXYZ", "Alice", 24, 4.1, 123456789),
       ("BOUVW", "Bob", 27, 3.6, 234567890),
       ("CERST", "Cédric", 22, 3.1, 345678901);

## 1. Tout le contenu de la relation ###

SELECT *
FROM Etudiants;

## 2. Etudiant ayant idul CERST ###

SELECT nom
FROM Etudiants E
WHERE E.idul = "CERST";

## 3. Toutes les informations des étudiants ayant plus de 3.5 en moyenne ##

SELECT *
FROM Etudiants E
WHERE E.moyenne > 3.5;

## 4. Nom des etudiants plus vieux que 23 ans et appeler cet attribut vieillot

SELECT nom AS vieillot
FROM Etudiants E
WHERE E.age > 23;

## 5. Nom etudiants entre 20 et 30 ans ##

SELECT nom AS V1
FROM Etudiants E
WHERE E.age IN (20, 22, 23, 24, 25, 26, 27, 28, 29, 30);
SELECT nom AS V2
FROM Etudiants E
WHERE E.age BETWEEN 20 AND 30;
SELECT nom AS V3
FROM Etudiants E
WHERE E.age >= 20
  AND E.age <= 30;

## 6. Nom est Cédric ou Bob
SELECT nom
FROM Etudiants E
WHERE E.nom IN ("Cédric", "Bob");

## 7. Noms des etudiants qui ne sont pas Bob ou Cédric
SELECT nom
FROM Etudiants E
WHERE E.nom NOT IN ("Cédric", "Bob");

## 8. Nom et idul des etudiants ayant moyenne de 3.5 ou plus

SELECT nom, idul
FROM Etudiants E
WHERE E.moyenne >= 3.5;

## 9. Nom des etudiants ayant moy de 3.5 ou plus et moins de 25 ans

SELECT nom
FROM Etudiants E
WHERE E.moyenne >= 3.5
AND E.age < 25;

## 10. Noms et idul des étudiants ayant moy de 3.5 ou plus et moins de 25

SELECT nom, idul
FROM Etudiants E
WHERE E.moyenne >= 3.5
  AND E.age > 25;

