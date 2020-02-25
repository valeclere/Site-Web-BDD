/*Créé par Maxime Delpech et Valentin Leclère*/

/*---------------------------------
Création de la base de donnée cours
composé de 7 tables : 
    - Enseignants
    - Annees
    - Filiere
    - Cours
    - Syllabus
    - CoursFil
    - CoursEns
-----------------------------------*/

CREATE TABLE Enseignants
(
    idEnseignant INT(5) NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    statut VARCHAR(100),
    organisme VARCHAR(100),
    typeEns VARCHAR(100) NOT NULL,
    PRIMARY KEY (idEnseignant)
);

CREATE TABLE Annees
(
    annee INT(5),
    resp INT(5),
    PRIMARY KEY (annee),
    FOREIGN KEY (resp) REFERENCES Enseignants (idEnseignant)
);

CREATE TABLE Filiere
(
    idFiliere INT(5) NOT NULL,
    nomFiliere VARCHAR(100),
    resp1 INT(5) NOT NULL,
    resp2 INT(5),
    PRIMARY KEY (idFiliere),
    FOREIGN KEY (resp1) REFERENCES Enseignants(idEnseignant)
);

CREATE TABLE Cours
(
    idCours INT(5) NOT NULL,
    nomCours VARCHAR(100),
    nbCM INT(2),
    nbTD INT(2),
    nbTP INT(2),
    TC BOOLEAN,
    annee INT(5),
    PRIMARY KEY (idCours),
    FOREIGN KEY (annee) REFERENCES Annees(annee)
);

CREATE TABLE Syllabus
(
    idCours INT(5) NOT NULL,
    nomCoursAng VARCHAR(100),
    objectif VARCHAR(100),
    objectifAng VARCHAR(100),
    PRIMARY KEY (idCours),
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

CREATE TABLE CoursFil
(
    idCours INT(5) NOT NULL,
    idFiliere INT(5) NOT NULL,
    PRIMARY KEY (idCours,idFiliere),
    FOREIGN KEY (idFiliere) REFERENCES Filiere(idFiliere),
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

CREATE TABLE CoursEns
(
    idCours INT(5) NOT NULL,
    idEnseignant INT(5) NOT NULL,
    nbCM INT(2),
    nbTD INT(2),
    nbTP INT(2),
    PRIMARY KEY (idCours,idEnseignant),
    FOREIGN KEY (idEnseignant) REFERENCES Enseignants(idEnseignant),
    FOREIGN KEY (idCours) REFERENCES Cours(idCours)
);

/*--------------------------------
Remplissage de la base de données
---------------------------------*/

/*Table Enseignants*/
INSERT INTO Enseignants (idEnseignant,nom,prenom,statut,organisme,typeEns)
VALUES
(1,'CHATEAU','Thierry',NULL,'Institut Pascal','externe'),
(2,'LEBORGNE','Gilles','MCF',NULL,'permanent'),
(3,'AUXIETRE','Anne-Marie',NULL,'Clermont Auvergne Metropole','externe'),
(4,'CHABROL','Michelle','MCF',NULL,'permanent'),
(5,'LAURENCOT','Patrice','MCF',NULL,'permanent'),
(6,'PAILLOUX','Marie','MCF',NULL,'permanent'),
(7,'AUFRERE','Romuald','MCF',NULL,'permanent'),
(8,'MESNARD','Emmanuel','MCF',NULL,'permanent'),
(9,'MAZEL','Claude','MCF',NULL,'permanent'),
(10,'YON','Loic','MCF',NULL,'permanent'),
(11,'LACOMME','Philippe','MCF',NULL,'permanent'),
(12,'KANG','Myoung-Ah','MCF',NULL,'permanent'),
(13,'ANTOINE','Violaine','MCF',NULL,'permanent'),
(14,'CHEMINAT','Michel','MCF',NULL,'permanent'),
(15,'TILMANT','Christophe','MCF',NULL,'permanent');


/*Table Annees*/
INSERT INTO Annees (annee,resp)
VALUES
(1,4),
(2,5),
(3,6);

/*Table Filiere*/
INSERT INTO Filiere (idFiliere,nomFiliere,resp1,resp2)
VALUES
(1,'Informatique des Systèmes Embarqués', 7, 8),
(2, 'Génie Logiciel et Systèmes Informatiques', 9, 10),
(3, 'Systèmes d’Information et Aide à la Décision', 11, 12),
(4, 'Modélisation mathématique et science des données', 13, NULL),
(5, 'Réseaux et Sécurité Informatique', 14, 15);

/*Table Cours*/
INSERT INTO Cours (idCours,nomCours,nbCM,nbTD,nbTP,TC,annee)
VALUES
(1,'Imagerie Vision',10,0,10,0,2),
(2,'Structures de données',20,20,20,1,1),
(3,'Intégration et distributions',10,0,0,0,2),
(4,'Conduite de projet',3,3,0,1,2);

/*Table Syllabus*/
INSERT INTO Syllabus (idCours,nomCoursAng,objectif,objectifAng)
VALUES
(1,'Computer Vision',"acquérir des bases en traitement d'images",'acquire basics of image processing'),
(2,'data structure',"être capable d'organiser les données pour les traiter plus facilement",'be able to organize data for easier processing');

/*Table CoursFil*/
INSERT INTO CoursFil (idCours,idFiliere)
VALUES
(1,1),
(1,4),
(3,4);

/*Table CoursEns*/
INSERT INTO CoursEns (idCours,idEnseignant,nbCM,nbTD,nbTP)
VALUES
(1,1,10,0,10),
(2,4,10,10,10),
(2,13,10,10,10);
