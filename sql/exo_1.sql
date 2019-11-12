DROP DATABASE IF EXISTS bibliotheque;
CREATE DATABASE bibliotheque;

USE bibliotheque;



CREATE TABLE if NOT EXISTS clients(
num_chambre INT NOT NULL,
num_clients MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
cli_nom VARCHAR (50),
cli_prenom VARCHAR (50),
cli_adresse VARCHAR (50)
);


CREATE TABLE if NOT EXISTS station(
num_station INT AUTO_INCREMENT PRIMARY KEY,
nom_station INT 
);

CREATE TABLE if NOT EXISTS hotel(
num_hotel INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
capacite_hotel INT ,
categorie_hotel VARCHAR (50),
nom_hotel VARCHAR (50),
adresse_hotel VARCHAR (50),
num_station INT,
FOREIGN KEY(num_station) REFERENCES station(num_station)
);

CREATE TABLE if NOT EXISTS Chambre( 
num_chambre INT AUTO_INCREMENT  PRIMARY KEY,
capacite_chambre INT,
degre_confort INT,
exposition VARCHAR (50),
type_chambre VARCHAR (50),
num_hotel INT,
FOREIGN KEY(num_hotel) REFERENCES hotel(num_hotel)
);

CREATE TABLE  if NOT EXISTS Reservation(
nb_clients MEDIUMINT  NOT NULL,
nam_chambre INT NOT NULL ,
date_debut DATETIME,
date_fin DATETIME,
date_reservation DATETIME,
montant_arrhes BIGINT NOT NULL,
prix_total BIGINT NOT NULL,
PRIMARY KEY (nb_clients, nam_chambre), 
FOREIGN KEY(nb_clients) REFERENCES clients(num_clients),
FOREIGN KEY(nam_chambre) REFERENCES chambre(num_chambre)
);

