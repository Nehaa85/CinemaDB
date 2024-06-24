# CinemaDB Project

Ce projet contient les scripts SQL nécessaires pour créer, remplir et gérer une base de données de cinéma. Vous y trouverez également des instructions pour sauvegarder et restaurer la base de données.

## Structure du projet

- **diagramme UML** : Diagramme UML montrant la structure de la base de données.
- **cinemaDB.sql** : Script SQL pour créer la base de données et les tables.
- **request_cinemaDB.sql** : Script SQL pour insérer des données factices.

## Technologies utilisées

- **MariaDB** : Pour la gestion de la base de données.
- **Visual Studio Code** : Pour l'écriture et l'édition des scripts SQL.
- **LucidChart** : Pour la réalisation du diagramme UML.
- **Git** : Pour le contrôle de version et la gestion du projet sur GitHub.

## Instructions de création de la base de données

1. **Cloner le repository :**
   ```sh
   git clone https://github.com/Nehaa85/CinemaDB.git
   cd CinemaDB

2. **Créer la base de données et les tables :**
   ```sh
   mysql -u root -p < cinemaDB.sql

3. **Insérer les données factices :**
mysql -u root -p CinemaDB < request_cinemaDB.sql

## Sauvegarde de la base de données
mysqldump -u root -p CinemaDB > CinemaDB_backup.sql

## Restauration de la base de données
mysql -u root -p CinemaDB < CinemaDB_backup.sql


## Sécurité de la base de données
Pour renforcer la sécurité de la base de données, les mots de passe des utilisateurs sont hachés avant d'être stockés et les rôles des utilisateurs sont définis pour restreindre l'accès selon les privilèges (Administrateur, Utilisateur).