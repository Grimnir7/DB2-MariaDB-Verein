-- VEREIN_DATABASE erstellen und für die User-Erstellung auswählen
CREATE DATABASE IF NOT EXISTS VEREIN_DATABASE;

USE VEREIN_DATABASE;

-- User 'vereinuser' auf der Vereinsdatenbank erstellen und alle Privilegien erteilen
CREATE USER 'vereinuser'@'%' IDENTIFIED BY 'vereinuser';

GRANT ALL PRIVILEGES ON VEREIN_DATABASE.* TO 'vereinuser'@'%';

-- Dem User 'vereinuser' die nötigen Berechtigungen für den Umgang mit der DB erteilen
GRANT CREATE VIEW ON *.* TO 'vereinuser'@'%'
GRANT CREATE TEMPORARY TABLES ON *.* TO 'vereinuser'@'%'