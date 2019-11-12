USE evaluationbdd_exo1;

CREATE TABLE Clients(
cli num 				INT,
cli_nom				VARCHAR(50),
cli_adresse 		VARCHAR(50),
cli_tel				VARCHAR(30)

); 

CREATE TABLE if NOT EXISTS Produit(
pro num				INT,
pro_libelle			VARCHAR (50),
pro_description	VARCHAR (50)

);

CREATE TABLE if NOT EXISTS est_compose(
com num				INT,
pro num				INT,
est_qte				INT
);

CREATE TABLE if NOT EXISTS Commande(
com num 				INT ,
cli_num				INT,
com_date				DATETIME,
com_obs				VARCHAR(50)

);



