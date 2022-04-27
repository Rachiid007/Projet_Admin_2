CREATE DATABASE web;

USE web;

CREATE TABLE jouet(
    id INTEGER NOT NULL AUTO_INCREMENT,
    nom CHAR(50) NOT NULL,
    prix DECIMAL(8,2) NOT NULL,
    CONSTRAINT pk_id PRIMARY KEY(id)
);

INSERT INTO jouet (nom,prix)
VALUES  ('Barbie',10),
        ('Monopoly',25),
        ('Fusil Nerf,'50);
