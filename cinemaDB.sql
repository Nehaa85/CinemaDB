/*Pour créer la database et l’utiliser :*/
CREATE DATABASE CinemaDB; 
USE CinemaDB;

/*On créé ensuite les tables nécessaires :*/
CREATE TABLE Cinema (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Salle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    number INT NOT NULL,
    capacity INT NOT NULL,
    cinema_id INT,
    FOREIGN KEY (cinema_id) REFERENCES Cinema(id)
);

CREATE TABLE Film (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration INT NOT NULL
);

CREATE TABLE Utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Administrateur', 'Utilisateur') NOT NULL,
    cinema_id INT,
    FOREIGN KEY (cinema_id) REFERENCES Cinema(id)
);

CREATE TABLE Client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE Seances (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    time TIME NOT NULL,
    film_id INT,
    salle_id INT,
    created_by INT,
    FOREIGN KEY (film_id) REFERENCES Film(id),
    FOREIGN KEY (salle_id) REFERENCES Salle(id),
    FOREIGN KEY (created_by) REFERENCES Utilisateur(id)
);

CREATE TABLE Reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    seances_id INT,
    client_id INT,
    utilisateur_id INT,
    tarif_type ENUM('Plein tarif', 'Étudiant', 'Moins de 14 ans') NOT NULL,
    payment_method ENUM('En ligne', 'Sur place') NOT NULL,
    reserved_by ENUM('Client', 'Utilisateur') NOT NULL,
    FOREIGN KEY (seances_id) REFERENCES Seances(id),
    FOREIGN KEY (client_id) REFERENCES Client(id),
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateur(id)
);
