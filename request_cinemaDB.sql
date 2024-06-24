/*On insère les données factices :*/
INSERT INTO Cinema (name, address) VALUES ('Cinema Paris', '12 Rue de Paris');
INSERT INTO Cinema (name, address) VALUES ('Cinema Lyon', '45 Rue de Lyon');

INSERT INTO Salle (number, capacity, cinema_id) VALUES (1, 200, 1); 
INSERT INTO Salle (number, capacity, cinema_id) VALUES (2, 150, 1); 
INSERT INTO Salle (number, capacity, cinema_id) VALUES (1, 100, 2);

INSERT INTO Film (title, duration) VALUES ('Film A', 120); 
INSERT INTO Film (title, duration) VALUES ('Film B', 90);

INSERT INTO Utilisateur (name, email, password, role, cinema_id) VALUES ('Admin', 'admin@cinema.com', 'admin_password', 'Administrateur', NULL); 
INSERT INTO Utilisateur (name, email, password, role, cinema_id) VALUES ('User1', 'user1@cinema.com', 'user1_password', 'Utilisateur', 1); 
INSERT INTO Utilisateur (name, email, password, role, cinema_id) VALUES ('User2', 'user2@cinema.com', 'user2_password', 'Utilisateur', 2);

INSERT INTO Seances (date, time, film_id, salle_id, created_by) VALUES ('2023-07-01', '18:00:00', 1, 1, 2); 
INSERT INTO Seances (date, time, film_id, salle_id, created_by) VALUES ('2024-06-05', '20:00:00', 2, 2, 3);

INSERT INTO Client (name, email, phone) VALUES ('Client1', 'client1@example.com', '1234567890');
INSERT INTO Client (name, email, phone) VALUES ('Client2', 'client2@example.com', '0987654321');

INSERT INTO Reservation (seances_id, client_id, utilisateur_id, tarif_type, payment_method, reserved_by) VALUES (1, 1, NULL, 'Plein tarif', 'Sur place', 'Client');
INSERT INTO Reservation (seances_id, client_id, utilisateur_id, tarif_type, payment_method, reserved_by) VALUES (2, 2, NULL, 'Étudiant', 'Sur place', 'Client');

/*Exécuter les scripts SQL :*/
/*- Le script de création de tables :*/
mysql -u root -p CinemaDB < path/to/CinemaDBProject/cinemadb.sql
/*- Le script d’insertion de données :*/
mysql -u root -p CinemaDB < path/to/CinemaDBProject/insert_data.sql

