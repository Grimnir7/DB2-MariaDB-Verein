# Datenbanken 2
# Projektarbeit
# Die Vereinsdatenbank auf MariaDB als Docker Container
# 01-12-2023

## 1. Kurzbeschreibung
Dieses Repository ist im Rahmen des Kurses "Datenbanken 2" an der HFTM Grenchen im Jahre 2023 entstanden. Als Ausganslage hatten wir eine Oracle-Datenbank mit Vereinsadaten zur Verfügung, auf der wir im Verlaufe des Kurses den Umgang mit Datenbanken erlernt haben. Die Ausgansdatenbank findet sich in diesem Repo:  
https://github.com/hftm-inf/db_oracle-xe-docker/tree/master  

Ziel dieser Projektarbeit war es, neben Oracle weitere Datenbankentechnologien kennenzulernen. Meine Aufgabe war es, die Oracle-Vereinsdatenbank auf MariaDB abzubilden und als Docker Container zur Verfügung zu stellen. Im Folgenden findet sich die Dokumentation dieses Projekts.
- Anmerkung 1: Es stehen keine Tags ausser "latest" (= default) zur Verfügung.
- Anmerkung 2: Als Base-Image wird das offizielle MariaDB-Container-Image `mariadb:latest` verwendet.  

## 1.1 Wesentliche Unterschiede zur Oracle-Datenbank
1. Der User "scott" und die "emp-dept"-Datenbank aus dem Original-Repo wurden hier nicht übernommen. Aufgabe war lediglich die Abbildung der Vereinsdatenbank und den damit verbundenen User "vereinuser" auf MariaDB.
2. Es existiert kein User "sys". Für ein Konto mit uneingeschränktem Administrator-Zugriff wird auf MariaDB "root" verwendet (siehe Umgebungsvariable im Dockerfile).
3. Bei MariaDB gibt es das Konzept von 'pluggable Databases' nicht. Entsprechend muss daran bei der Anmeldung an der DB nicht gedacht werden.
4. Ausserdem fehlt bei MariaDB das Konzept von Tablespaces. Deshalb muss auch kein Tablespace spezifiziert werden, sondern es kann direkt die zu bedienende Datenbank mit `USE` ausgewählt werden.  
5. Datenbanken werden auf MariaDB mit dem `CREATE DATABASE <Datenbankname>`-Befehl erstellt.  
6. Die Datumskonvertierungsfunktion von Oracle `TO_DATE` fehlt in MariaDB. Stattdessen wird `STR_TO_DATE` verwendet.  

## 2. Manual
### 2.1 Container Image selbst gebaut
1. Repository klonen mit:  
 `git clone https://github.com/Grimnir7/DB2-MariaDB-Verein.git`
2. Image bauen per CLI-Befehl im vorhin geklonten Projektordner ('mariaDB'):  
`docker build -t mariadb_project_db .`
3. Container mit selbst gebautem Image auf Port 3306 ohne persistentes Volumen starten:  
`docker run -d --name mariadbverein -p 3306:3306 mariadb_project_db`
4. Sollen die Daten in einem persistenten Volume gespeichert werden, disen Befehl verwenden:  
`docker run -d --name mariadbverein -v mariadb-volume:/var/lib/mysql -p 3306:3306 mariadb_project_db`

### 2.2 Fertiges Container Image aus GitHub-Container-Registry
1. Container ohne persistentes Volume starten:  
`docker run -d --name mariadbverein -p 3306:3306 ghcr.io/grimnir7/db2-mariadb-verein:latest`
2. Container mit persistentem Volume starten:  
`docker run -d --name mariadbverein -v mariadb-volume:/var/lib/mysql -p 3306:3306 ghcr.io/grimnir7/db2-mariadb-verein:latest`

### 2.3 Mit der Datenbank verbinden
Damit der Zugriff auf die Datenbank betriebssystemunabhängig erfolgen kann, wird beim build-Prozess des Images der maria-db-client in den Container installiert. So kann aus dem Container mit dem Client auf die DB zugegriffen werden. Wird der Client weggelassen, muss er auf dem Host-Betriebsystem installiert werden, damit mit folgenden Befehlen auf die DB zugegriffen werden kann.  
(Auf Arch-basierten Linux-Distributionen installieren mit: `sudo pacman -S mariadb-clients`)  
  
Mit installiertem Client kann man sich dann folgendermassen mit der DB verbinden:  
`mariadb -h localhost -P 3306 -u vereinuser -p`  
Das Passwort des Users "vereinuser" lautet "vereinuser".
  
Folgendermassen kann man sich aus der Container-Shell mit der DB verbinden, ohne auf dem Host einen Client installieren zu müssen:  
1. Per CLI den Container betreten:  
`docker exec -it mariadbverein /bin/bash`  
2. Aus der Container-Shell mit der DB verbinden:  
`mariadb -u vereinuser -p`  
Das Passwort des Users "vereinuser" lautet "vereinuser".

### 2.4 Wichtigste Befehle für den Start mit MariaDB
1. Datenbank auswählen:  
`USE <Datenbankname>;`
2. Alle Tabellen anzeigen:  
`SHOW TABLES;`
3. Inhalt einer ausgewählten Tabelle anzeigen lassen:  
`SELECT * FROM <Tabellenname>;`


## 3. Improvements to be made
1. Root-Passwort zur DB nicht als Klartext im Dockerfile mitgeben, sondern *docker secrets* verwenden, das Passwort in einer externen, verschlüsselten Datei lagern und diese während des build-Vorgangs einlesen.