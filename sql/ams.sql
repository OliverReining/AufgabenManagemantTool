-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Okt 2024 um 13:40
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ams`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benutzer`
--

CREATE TABLE `benutzer` (
  `userid` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vorname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `pass` varchar(50) NOT NULL DEFAULT 'pass123',
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `isProjectLead` tinyint(1) DEFAULT 0,
  `hourlyRate` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `benutzer`
--

INSERT INTO `benutzer` (`userid`, `name`, `vorname`, `email`, `tel`, `pass`, `role`, `isProjectLead`, `hourlyRate`) VALUES
('alejoh01', 'Johnson', 'Alex', 'ajohnson@email.com', '+69 69-1312-1', 'pass123', 'Developer', 0, 35.50),
('annfie01', 'Field', 'Anna', 'afield@email.com', '+69 69-1312-2', 'pass123', 'user', 0, 22.50),
('benjam01', 'James', 'Ben', 'bjames@email.com', '+69 69-1312-3', 'pass123', 'Technican', 0, 28.00),
('chimil01', 'Miller', 'Chris', 'cmiller@email.com', '+69 69-1312-4', 'pass123', 'Teamlead', 0, 45.00),
('davgre01', 'Green', 'David', 'dgreen@email.com', '+69 69-1312-5', 'pass123', 'Developer', 0, 33.75),
('emmsmi01', 'Smith', 'Emma', 'esmith@email.com', '+69 69-1312-1', 'pass123', 'user', 0, 25.00),
('frejon01', 'Jones', 'Fred', 'fjones@email.com', '+69 69-1312-2', 'pass123', 'user', 0, 24.00),
('gramar01', 'Martin', 'Grace', 'gmartin@email.com', '+69 69-1312-3', 'pass123', 'Developer', 0, 34.50),
('hanlee01', 'Lee', 'Hannah', 'hlee@email.com', '+69 69-1312-4', 'pass123', 'Technican', 0, 29.00),
('isamar01', 'Martin', 'Isaac', 'imartin@email.com', '+69 69-1312-0', 'pass123', 'Developer', 0, 36.00),
('jacsmi01', 'Smith', 'Jack', 'jsmith@email.com', '+69 69-1312-1', 'pass123', 'Teamlead', 0, 42.00),
('katwil01', 'Wilson', 'Kate', 'kwilson@email.com', '+69 69-1312-2', 'pass123', 'user', 0, 23.50),
('kevrod01', 'Rodriguez', 'Kevin', 'krodriguez@email.com', '+69 69-1312-3', 'pass123', 'Developer', 0, 36.50),
('klabac01', 'Bach', 'Klara', 'kbach@email.com', '+69 69-1312-4', 'pass123', 'user', 0, 22.00),
('lialop01', 'Lopez', 'Liam', 'llopez@email.com', '+69 69-1312-5', 'pass123', 'Technican', 0, 30.00),
('luknow01', 'Nowak', 'Lukas', 'lnowak@email.com', '+69 69-1312-0', 'pass123', 'Developer', 0, 34.75),
('miatur01', 'Turner', 'Mia', 'mturner@email.com', '+69 69-1312-1', 'pass123', 'Developer', 0, 35.00),
('noawhi01', 'White', 'Noah', 'nwhite@email.com', '+69 69-1312-2', 'pass123', 'user', 0, 26.50),
('olirei01', 'Reining', 'Oliver', 'oreining@email.com', '+69 69-1312-3', 'Passwort', 'DB-Admin', 0, 50.00),
('olisan01', 'Sanchez', 'Olivia', 'osanchez@email.com', '+69 69-1312-0', 'pass123', 'user', 0, 24.50),
('paujoh01', 'Johnson', 'Paul', 'pjohnson@email.com', '+69 69-1312-1', 'pass123', 'user', 0, 22.50),
('petwer01', 'Werner', 'Peter', 'pwerner@email.com', '+69 69-1312-2', 'pass123', 'Teamlead', 0, 43.50),
('quikin01', 'King', 'Quinn', 'qking@email.com', '+69 69-1312-3', 'pass123', 'user', 0, 25.00),
('racsco01', 'Scott', 'Rachel', 'rscott@email.com', '+69 69-1312-4', 'pass123', 'Technican', 0, 30.50),
('samcla01', 'Clark', 'Sam', 'sclark@email.com', '+69 69-1312-5', 'pass123', 'Teamlead', 0, 44.00),
('sarhil01', 'Hiller', 'Sara', 'shiller@email.com', '+69 69-1312-4', 'pass123', 'Technican', 0, 29.50),
('tomrob01', 'Roberts', 'Tom', 'troberts@email.com', '+69 69-1312-5', 'pass123', 'user', 0, 23.00);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `project`
--

CREATE TABLE `project` (
  `projectid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `projectlead` varchar(8) NOT NULL,
  `isCompleted` tinyint(1) DEFAULT 0,
  `startDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `taskCount` int(11) DEFAULT NULL,
  `memberCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `project`
--

INSERT INTO `project` (`projectid`, `title`, `description`, `projectlead`, `isCompleted`, `startDate`, `dueDate`, `taskCount`, `memberCount`) VALUES
(1, 'Team Management', 'Ein umfangreiches System zur Verwaltung von Teamprojekten mit Features wie Rollenverwaltung, Zeitplanung und Fortschrittsverfolgung, das insbesondere für agile Teams entwickelt wurde.', 'olirei01', 0, '2023-07-01', '2025-03-23', 0, 0),
(2, 'CRM System', 'Ein CRM-System, das die Pflege und Verwaltung von Kundenkontakten ermöglicht, inklusive automatisierter Workflows, E-Mail-Integration und detaillierten Berichten über Verkaufsaktivitäten.', 'olirei01', 1, '2023-02-14', '2024-10-31', 0, 0),
(3, 'Process Automation', 'Automatisierung von betrieblichen Prozessen durch den Einsatz moderner Technologien wie Robotic Process Automation (RPA) und maschinellem Lernen.', 'alejoh01', 1, '2023-03-10', '2024-10-15', 0, 0),
(4, 'E-Commerce Development', 'Entwicklung eines vollständig funktionalen E-Commerce-Webshops mit Zahlungsintegration, Produktverwaltung und Kundensupport.', 'emmsmi01', 0, '2023-08-25', '2024-10-10', 0, 0),
(5, 'Fitness App Development', 'Design und Entwicklung einer mobilen Fitness-App, die Benutzern die Möglichkeit bietet, Workouts zu planen, Fortschritte zu verfolgen und sich mit einer Community auszutauschen.', 'miatur01', 0, '2023-06-01', '2024-12-26', 0, 0),
(6, 'AI Recommendation System', 'Entwicklung eines KI-gestützten Empfehlungssystems, das E-Commerce-Nutzern personalisierte Produktvorschläge auf Basis ihres Such- und Kaufverhaltens anbietet.', 'noawhi01', 1, '2023-05-10', '2024-10-01', 0, 0),
(7, 'CMS Development', 'Ein Content-Management-System für das Erstellen, Bearbeiten und Verwalten von digitalen Inhalten wie Blogs, Webseiten und Newsfeeds.', 'olisan01', 1, '2023-07-15', '2024-10-02', 0, 0),
(8, 'Social Media Development', 'Eine Social-Media-Plattform, die Benutzern ermöglicht, Inhalte zu teilen, zu kommentieren und sich mit anderen zu vernetzen.', 'gramar01', 0, '2023-09-01', '2024-10-03', 0, 0),
(9, 'Project Management Tool', 'Ein fortschrittliches Projektmanagement-Tool, das speziell für IT-Projekte entwickelt wurde und agile Methoden wie Scrum und Kanban unterstützt.', 'klabac01', 0, '2023-05-20', '2024-11-13', 0, 0),
(10, 'Data Analytics Platform', 'Eine Plattform zur Analyse großer Datenmengen mit Hilfe von maschinellem Lernen und Big Data Technologien, um detaillierte Berichte und Vorhersagen zu erstellen.', 'davgre01', 0, '2023-09-15', '2024-12-15', 0, 0),
(11, 'Cloud Infrastructure Setup', 'Aufbau einer skalierbaren Cloud-Infrastruktur, die den sicheren Betrieb von Anwendungen in der Cloud ermöglicht und die Verwaltung von Cloud-Ressourcen vereinfacht.', 'katwil01', 0, '2023-04-01', '2024-11-30', 0, 0),
(12, 'Mobile Banking App', 'Entwicklung einer sicheren Mobile-Banking-App, die Benutzern ermöglicht, ihre Finanzen mobil zu verwalten, Überweisungen zu tätigen und ihr Konto zu überwachen.', 'isamar01', 0, '2023-08-10', '2024-12-10', 0, 0),
(13, 'Blockchain Integration', 'Integration von Blockchain-Technologie in bestehende Finanzsysteme, um sicherere und nachvollziehbare Transaktionen zu ermöglichen.', 'hanlee01', 1, '2023-06-20', '2025-01-20', 0, 0),
(14, 'IoT Smart Home System', 'Ein IoT-basiertes Smart-Home-System, das Haushaltsgeräte miteinander verbindet und die Steuerung über mobile Apps und Sprachbefehle ermöglicht.', 'frejon01', 0, '2023-07-05', '2024-12-20', 0, 0),
(15, 'Automated Testing Framework', 'Entwicklung eines automatisierten Test-Frameworks für Software-Anwendungen, das Testfälle generiert, ausführt und Berichte über Testergebnisse erstellt.', 'benjam01', 1, '2023-04-15', '2024-09-30', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `task`
--

CREATE TABLE `task` (
  `taskid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `projectid` int(11) NOT NULL,
  `dueDate` date NOT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'niedrig',
  `isCompleted` tinyint(1) DEFAULT 0,
  `plannedTime` int(11) DEFAULT NULL,
  `isCritical` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `task`
--

INSERT INTO `task` (`taskid`, `title`, `description`, `projectid`, `dueDate`, `priority`, `isCompleted`, `plannedTime`, `isCritical`) VALUES
(1, 'Requirement Gathering', 'Sammeln von Anforderungen für das Projekt', 1, '2024-01-15', 'mittel', 0, 5, 1),
(2, 'UI Design', 'Entwerfen des Benutzerinterfaces', 1, '2024-02-01', 'hoch', 0, 10, 0),
(3, 'Backend Development', 'Entwicklung des Backend-Systems', 1, '2024-03-15', 'hoch', 0, 20, 1),
(4, 'Testing', 'Testen des Systems auf Fehler und Performance', 1, '2025-01-15', 'mittel', 0, 15, 1),
(5, 'Requirement Analysis', 'Analyse der Anforderungen für das CRM System', 2, '2024-04-10', 'hoch', 1, 8, 1),
(6, 'System Design', 'Erstellen des Systemdesigns', 2, '2024-05-15', 'hoch', 1, 10, 1),
(7, 'Development', 'Implementierung des CRM Systems', 2, '2024-07-01', 'mittel', 1, 20, 1),
(8, 'Deployment', 'Bereitstellung des Systems auf den Servern', 2, '2024-09-01', 'niedrig', 1, 5, 0),
(9, 'Process Mapping', 'Erstellung von Prozessdiagrammen', 3, '2024-06-10', 'hoch', 1, 10, 1),
(10, 'Automation Development', 'Entwicklung der Automatisierungsprozesse', 3, '2024-08-01', 'hoch', 1, 25, 1),
(11, 'Process Testing', 'Testen der automatisierten Prozesse', 3, '2024-09-15', 'mittel', 1, 15, 1),
(12, 'Product Catalog Setup', 'Einrichten des Produktkatalogs', 4, '2024-09-10', 'hoch', 0, 10, 0),
(13, 'Payment Integration', 'Integration der Zahlungsdienste', 4, '2024-09-25', 'hoch', 0, 15, 1),
(14, 'Security Testing', 'Sicherheitsüberprüfung des Systems', 4, '2024-10-05', 'hoch', 0, 10, 1),
(15, 'Workout Plan Setup', 'Einrichtung der Trainingspläne', 5, '2024-11-01', 'mittel', 0, 8, 0),
(16, 'Community Features', 'Entwicklung von Community-Features', 5, '2024-12-01', 'hoch', 0, 10, 1),
(17, 'Tracking Integration', 'Integration von Fitness-Tracking-Schnittstellen', 5, '2024-12-15', 'hoch', 0, 12, 1),
(18, 'AI Algorithm Development', 'Entwicklung des KI-Algorithmus', 6, '2024-08-01', 'hoch', 1, 25, 1),
(19, 'Recommendation Engine', 'Implementierung der Empfehlungsmaschine', 6, '2024-09-01', 'hoch', 1, 15, 1),
(20, 'Performance Testing', 'Testen der Systemperformance', 6, '2024-09-25', 'mittel', 1, 10, 0),
(21, 'Content Editor Setup', 'Erstellen des CMS-Editors', 7, '2024-08-15', 'hoch', 1, 12, 1),
(22, 'CMS Security Integration', 'Sicherheitsfeatures für das CMS integrieren', 7, '2024-09-01', 'hoch', 1, 10, 1),
(23, 'User Feedback Implementation', 'Umsetzen von Benutzerfeedback', 7, '2024-09-15', 'mittel', 1, 8, 0),
(24, 'User Profile Setup', 'Entwicklung von Benutzerprofilen', 8, '2024-09-15', 'mittel', 0, 8, 0),
(25, 'Networking Features', 'Entwicklung von Networking-Features', 8, '2024-10-01', 'hoch', 0, 10, 1),
(26, 'Content Sharing', 'Erstellung einer Funktion zum Teilen von Inhalten', 8, '2024-10-10', 'hoch', 0, 12, 0),
(27, 'User Role Management', 'Implementierung der Benutzerrollenverwaltung', 9, '2024-09-01', 'hoch', 0, 12, 1),
(28, 'Task Management Features', 'Entwicklung von Features für Aufgabenmanagement', 9, '2024-10-15', 'hoch', 0, 15, 1),
(29, 'Team Collaboration Features', 'Funktionen für die Zusammenarbeit von Teams', 9, '2024-11-01', 'mittel', 0, 10, 0),
(30, 'Data Ingestion Setup', 'Einrichten der Datenaufnahme', 10, '2024-11-01', 'hoch', 0, 20, 1),
(31, 'Report Generation', 'Automatische Erstellung von Berichten', 10, '2024-12-01', 'mittel', 0, 15, 1),
(32, 'Machine Learning Model', 'Implementierung des ML-Modells', 10, '2024-12-10', 'hoch', 0, 20, 1),
(33, 'Cloud Resource Allocation', 'Zuweisung von Cloud-Ressourcen', 11, '2024-10-15', 'mittel', 0, 15, 1),
(34, 'Cloud Security Setup', 'Einrichten von Cloud-Sicherheitsmaßnahmen', 11, '2024-11-01', 'hoch', 0, 12, 1),
(35, 'Resource Monitoring', 'Überwachung der Cloud-Ressourcen', 11, '2024-11-20', 'hoch', 0, 10, 0),
(36, 'API Integration', 'Integration von Drittanbieter-APIs', 12, '2024-09-25', 'hoch', 0, 15, 1),
(37, 'Mobile Security Features', 'Sicherheitsfunktionen für Mobile-Banking-App', 12, '2024-10-10', 'hoch', 0, 12, 1),
(38, 'User Feedback Testing', 'Testen von Benutzerfeedback-Funktionen', 12, '2024-11-15', 'mittel', 0, 8, 0),
(39, 'Blockchain Node Setup', 'Einrichten der Blockchain-Nodes', 13, '2025-01-05', 'hoch', 1, 20, 1),
(40, 'Transaction Validation', 'Validierung von Transaktionen', 13, '2025-01-10', 'hoch', 1, 12, 1),
(41, 'Security Auditing', 'Sicherheitsaudit für die Blockchain', 13, '2025-01-15', 'hoch', 1, 15, 1),
(42, 'IoT Device Integration', 'Integration von IoT-Geräten', 14, '2024-12-01', 'mittel', 0, 10, 0),
(43, 'Home Automation Features', 'Entwicklung von Smart-Home-Automatisierungen', 14, '2024-12-10', 'hoch', 0, 12, 1),
(44, 'Voice Command Setup', 'Implementierung von Sprachbefehlen', 14, '2024-12-20', 'hoch', 0, 10, 0),
(45, 'Test Framework Setup', 'Einrichtung des Test-Frameworks', 15, '2024-09-01', 'hoch', 1, 15, 1),
(46, 'Automated Test Cases', 'Erstellung von automatisierten Testfällen', 15, '2024-09-20', 'hoch', 1, 20, 1),
(47, 'Test Reporting', 'Generierung von Testberichten', 15, '2024-10-01', 'mittel', 1, 12, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `task_user`
--

CREATE TABLE `task_user` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `userid` varchar(8) NOT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT NULL,
  `problems` int(1) DEFAULT NULL,
  `commentar` varchar(500) NOT NULL,
  `overtime` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `task_user`
--

INSERT INTO `task_user` (`id`, `taskid`, `userid`, `starttime`, `endtime`, `problems`, `commentar`, `overtime`) VALUES
(1, 22, 'katwil01', '2024-01-10 08:00:00', '2024-01-10 11:00:00', 0, 'Anforderungen gesammelt. Keine Probleme.', 0),
(2, 9, 'frejon01', '2024-01-10 12:00:00', '2024-01-10 14:30:00', 0, 'Weiter an den Anforderungen gearbeitet. Keine Probleme.', 0),
(3, 45, 'racsco01', '2024-01-12 08:00:00', '2024-01-12 11:00:00', 1, 'UI Design gestartet. Kleinere Probleme mit den Anforderungen.', 0),
(4, 18, 'miatur01', '2024-01-12 12:00:00', '2024-01-12 15:00:00', 0, 'Design weiter bearbeitet. Probleme behoben.', 0),
(5, 36, 'hanlee01', '2024-01-15 08:00:00', '2024-01-15 11:00:00', 3, 'Backend-Entwicklung begonnen. Probleme bei der API.', 0),
(6, 23, 'klabac01', '2024-01-15 12:00:00', '2024-01-15 14:30:00', 1, 'API-Probleme gelöst und fortgefahren.', 0),
(7, 29, 'noawhi01', '2025-01-15 08:00:00', '2025-01-15 11:00:00', 0, 'Tests gestartet. Keine Probleme.', 0),
(8, 42, 'kevrod01', '2025-01-15 12:00:00', '2025-01-15 14:00:00', 0, 'Weitere Tests durchgeführt. Alles läuft stabil.', 0),
(9, 5, 'frejon01', '2024-04-01 07:00:00', '2024-04-01 10:00:00', 5, 'Anforderungen analysiert. Einige Missverständnisse.', 0),
(10, 39, 'davgre01', '2024-04-01 11:00:00', '2024-04-01 13:30:00', 0, 'Missverständnisse geklärt und weiter analysiert.', 0),
(11, 47, 'benjam01', '2024-04-02 07:00:00', '2024-04-02 10:00:00', 1, 'Systemdesign erstellt. Keine großen Probleme.', 0),
(12, 31, 'annfie01', '2024-04-02 11:00:00', '2024-04-02 13:00:00', 0, 'Design abgeschlossen. Alles läuft nach Plan.', 0),
(13, 11, 'racsco01', '2024-04-03 07:00:00', '2024-04-03 10:00:00', 0, 'Entwicklung des Systems gestartet. Keine Probleme.', 0),
(14, 14, 'chimil01', '2024-04-03 11:00:00', '2024-04-03 14:00:00', 2, 'Entwicklung fortgesetzt. Kleinere Fehler.', 0),
(15, 26, 'luknow01', '2024-05-01 07:00:00', '2024-05-01 10:00:00', 0, 'System auf den Servern bereitgestellt. Keine Probleme.', 0),
(16, 40, 'samcla01', '2024-05-01 11:00:00', '2024-05-01 13:00:00', 0, 'Finalisierung der Bereitstellung.', 0),
(17, 13, 'paujoh01', '2024-06-10 07:00:00', '2024-06-10 10:00:00', 4, 'Prozessdiagramme erstellt. Einige unklare Anforderungen.', 0),
(18, 32, 'alejoh01', '2024-06-10 11:00:00', '2024-06-10 13:30:00', 1, 'Diagramme überarbeitet. Anforderungen präzisiert.', 0),
(19, 35, 'miatur01', '2024-08-01 07:00:00', '2024-08-01 10:00:00', 0, 'Automatisierungsprozesse entwickelt. Keine Probleme.', 0),
(20, 16, 'benjam01', '2024-08-01 11:00:00', '2024-08-01 14:00:00', 0, 'Weitere Automatisierungsschritte implementiert.', 0),
(21, 10, 'klabac01', '2024-09-10 07:00:00', '2024-09-10 10:00:00', 0, 'Produktkatalog eingerichtet. Keine Probleme.', 0),
(22, 19, 'olisan01', '2024-09-10 11:00:00', '2024-09-10 14:00:00', 0, 'Katalogdetails optimiert.', 0),
(23, 43, 'jacsmi01', '2024-09-25 07:00:00', '2024-09-25 10:00:00', 3, 'Zahlungsintegration gestartet. API-Probleme.', 0),
(24, 33, 'chimil01', '2024-09-25 11:00:00', '2024-09-25 14:00:00', 0, 'Probleme behoben und weiter integriert.', 0),
(25, 8, 'isamar01', '2024-11-01 08:00:00', '2024-11-01 11:00:00', 2, 'Trainingspläne erstellt. Kleinere Probleme mit den Daten.', 0),
(26, 28, 'katwil01', '2024-11-01 12:00:00', '2024-11-01 14:30:00', 0, 'Datenanpassungen vorgenommen und fortgesetzt.', 0),
(27, 2, 'luknow01', '2024-12-01 08:00:00', '2024-12-01 11:00:00', 0, 'Community-Features entwickelt. Keine Probleme.', 0),
(28, 6, 'gramar01', '2024-12-01 12:00:00', '2024-12-01 14:30:00', 0, 'Community-Funktionalität abgeschlossen.', 0),
(29, 21, 'quikin01', '2024-08-01 07:00:00', '2024-08-01 10:00:00', 1, 'KI-Algorithmus entwickelt. Kleinere Bugs.', 0),
(30, 46, 'frejon01', '2024-08-01 11:00:00', '2024-08-01 14:00:00', 0, 'Bugs behoben und fortgesetzt.', 0),
(31, 7, 'tomrob01', '2024-09-01 07:00:00', '2024-09-01 10:00:00', 0, 'Empfehlungsmaschine implementiert. Keine Probleme.', 0),
(32, 12, 'olirei01', '2024-09-01 11:00:00', '2024-09-01 13:30:00', 0, 'Weiter optimiert und getestet.', 0),
(33, 4, 'sarhil01', '2024-08-15 07:00:00', '2024-08-15 10:00:00', 2, 'CMS-Editor eingerichtet. Kleinere Fehler.', 0),
(34, 30, 'petwer01', '2024-08-15 11:00:00', '2024-08-15 14:00:00', 0, 'Fehler behoben und den Editor optimiert.', 0),
(35, 44, 'davgre01', '2024-09-01 07:00:00', '2024-09-01 10:00:00', 1, 'Sicherheitsfeatures hinzugefügt. Leichte Probleme.', 0),
(36, 24, 'jacsmi01', '2024-09-01 11:00:00', '2024-09-01 13:00:00', 0, 'Probleme behoben. Sicherheit erfolgreich integriert.', 0),
(37, 37, 'samcla01', '2024-09-15 07:00:00', '2024-09-15 10:00:00', 0, 'Benutzerprofile eingerichtet. Keine Probleme.', 0),
(38, 15, 'paujoh01', '2024-09-15 11:00:00', '2024-09-15 13:30:00', 0, 'Profilfunktionalität abgeschlossen.', 0),
(39, 34, 'katwil01', '2024-10-01 07:00:00', '2024-10-01 10:00:00', 3, 'Networking-Features entwickelt. Kleinere Probleme.', 0),
(40, 38, 'isamar01', '2024-10-01 11:00:00', '2024-10-01 14:00:00', 0, 'Probleme behoben und weiter optimiert.', 0),
(41, 27, 'sarhil01', '2024-09-01 07:00:00', '2024-09-01 10:00:00', 0, 'Benutzerrollen implementiert. Keine Probleme.', 0),
(42, 1, 'alejoh01', '2024-09-01 11:00:00', '2024-09-01 13:30:00', 0, 'Rollen erfolgreich abgeschlossen.', 0),
(43, 25, 'lialop01', '2024-10-15 07:00:00', '2024-10-15 10:00:00', 2, 'Aufgabenmanagement-Features entwickelt. Kleinere Fehler.', 0),
(44, 17, 'olisan01', '2024-10-15 11:00:00', '2024-10-15 14:00:00', 0, 'Fehler behoben und fortgesetzt.', 0),
(45, 41, 'kevrod01', '2024-11-01 08:00:00', '2024-11-01 11:00:00', 0, 'Team-Zusammenarbeitsfunktionen entwickelt. Keine Probleme.', 0),
(46, 3, 'petwer01', '2024-11-01 12:00:00', '2024-11-01 14:30:00', 0, 'Funktionalität optimiert und abgeschlossen.', 0),
(47, 20, 'quikin01', '2024-11-01 08:00:00', '2024-11-01 11:00:00', 3, 'Datenaufnahme eingerichtet. Probleme mit der API.', 0),
(48, 9, 'lialop01', '2024-11-01 12:00:00', '2024-11-01 15:00:00', 0, 'API-Probleme gelöst und weitergearbeitet.', 0),
(49, 36, 'tomrob01', '2024-11-10 08:00:00', '2024-11-10 11:00:00', 0, 'Berichte generiert. Keine Probleme.', 0),
(50, 5, 'luknow01', '2024-11-10 12:00:00', '2024-11-10 14:30:00', 0, 'Berichtsgenerierung abgeschlossen.', 0),
(51, 22, 'frejon01', '2024-09-01 07:00:00', '2024-09-01 10:00:00', 4, 'Testen der Prozesse begonnen. Fehler im Skript.', 0),
(52, 12, 'paujoh01', '2024-09-01 11:00:00', '2024-09-01 14:00:00', 0, 'Fehler behoben und Tests abgeschlossen.', 0),
(53, 29, 'samcla01', '2024-10-05 07:00:00', '2024-10-05 10:00:00', 2, 'Sicherheitsprüfung begonnen. Kleinere Fehler.', 0),
(54, 31, 'kevrod01', '2024-10-05 11:00:00', '2024-10-05 13:30:00', 0, 'Fehler behoben und Testlauf durchgeführt.', 0),
(55, 13, 'davgre01', '2024-10-15 07:00:00', '2024-10-15 10:00:00', 0, 'Zahlungsschnittstelle getestet. Keine Probleme.', 0),
(56, 45, 'noawhi01', '2024-10-15 11:00:00', '2024-10-15 14:00:00', 1, 'Optimierung der API-Integration. Kleinere Bugs.', 0),
(57, 28, 'annfie01', '2024-11-20 08:00:00', '2024-11-20 11:00:00', 3, 'Community-Funktion getestet. Probleme bei der Anmeldung.', 0),
(58, 16, 'katwil01', '2024-11-20 12:00:00', '2024-11-20 14:30:00', 0, 'Fehler behoben und Testlauf erfolgreich.', 0),
(59, 34, 'petwer01', '2024-12-05 08:00:00', '2024-12-05 11:00:00', 0, 'Tracking-Integration abgeschlossen. Keine Probleme.', 0),
(60, 42, 'olisan01', '2024-12-05 12:00:00', '2024-12-05 14:30:00', 0, 'Weitere Tests zur Verbesserung der Genauigkeit.', 0),
(61, 6, 'miatur01', '2024-10-01 07:00:00', '2024-10-01 10:00:00', 1, 'Performance des Empfehlungssystems getestet. Optimierungsbedarf.', 0),
(62, 33, 'katwil01', '2024-10-01 11:00:00', '2024-10-01 14:00:00', 0, 'Optimierung durchgeführt und erfolgreich getestet.', 0),
(63, 9, 'luknow01', '2024-11-05 08:00:00', '2024-11-05 11:00:00', 0, 'Empfehlungsmaschine weiterentwickelt. Keine Probleme.', 0),
(64, 38, 'miatur01', '2024-11-05 12:00:00', '2024-11-05 14:30:00', 0, 'Optimierungen erfolgreich durchgeführt.', 0),
(65, 25, 'gramar01', '2024-08-10 07:00:00', '2024-08-10 10:00:00', 4, 'CMS-Editor eingerichtet. Kleinere Probleme mit der UI.', 0),
(66, 44, 'olisan01', '2024-08-10 11:00:00', '2024-08-10 14:00:00', 0, 'UI-Probleme behoben und weiter optimiert.', 0),
(67, 7, 'lialop01', '2024-09-05 07:00:00', '2024-09-05 10:00:00', 0, 'Sicherheitsfunktionen für CMS integriert. Keine Probleme.', 0),
(68, 2, 'racsco01', '2024-09-05 11:00:00', '2024-09-05 13:30:00', 0, 'Abschließende Sicherheitsprüfungen erfolgreich.', 0),
(69, 35, 'klabac01', '2024-10-15 07:00:00', '2024-10-15 10:00:00', 0, 'Benutzerprofil-Funktionen erweitert. Keine Probleme.', 0),
(70, 14, 'gramar01', '2024-10-15 11:00:00', '2024-10-15 13:30:00', 1, 'Kleinere Bugs in der Profilbearbeitung gefunden.', 0),
(71, 4, 'alejoh01', '2024-10-25 07:00:00', '2024-10-25 10:00:00', 3, 'Networking-Funktionalität getestet. Verzögerungen festgestellt.', 0),
(72, 1, 'luknow01', '2024-10-25 11:00:00', '2024-10-25 13:30:00', 0, 'Optimierungen durchgeführt und Fehler behoben.', 0),
(73, 37, 'samcla01', '2024-11-01 08:00:00', '2024-11-01 11:00:00', 2, 'Benutzerrollen-Management implementiert. Kleinere Bugs.', 0),
(74, 5, 'klabac01', '2024-11-01 12:00:00', '2024-11-01 14:00:00', 0, 'Bugs behoben und Rollensystem abgeschlossen.', 0),
(75, 11, 'frejon01', '2024-11-10 08:00:00', '2024-11-10 11:00:00', 1, 'Aufgabenmanagement-Funktionen begonnen. Keine großen Probleme.', 0),
(76, 20, 'quikin01', '2024-11-10 12:00:00', '2024-11-10 14:30:00', 0, 'Fortschritt gemacht und Optimierungen durchgeführt.', 0),
(77, 13, 'tomrob01', '2024-11-15 08:00:00', '2024-11-15 11:00:00', 0, 'Team-Zusammenarbeit-Funktionen implementiert. Keine Probleme.', 0),
(78, 12, 'annfie01', '2024-11-15 12:00:00', '2024-11-15 14:30:00', 0, 'Funktionalität abgeschlossen und getestet.', 0),
(79, 44, 'klabac01', '2024-12-01 08:00:00', '2024-12-01 11:00:00', 4, 'Datenaufnahme für Analyse eingerichtet. Fehler bei der API.', 0),
(80, 15, 'olirei01', '2024-12-01 12:00:00', '2024-12-01 15:00:00', 0, 'API-Probleme gelöst und weitere Fortschritte gemacht.', 0),
(81, 24, 'isamar01', '2024-12-10 08:00:00', '2024-12-10 11:00:00', 0, 'Berichtsgenerierung getestet. Keine Probleme.', 0),
(82, 46, 'gramar01', '2024-12-10 12:00:00', '2024-12-10 14:30:00', 0, 'Optimierung der Berichterstellung erfolgreich.', 0),
(83, 9, 'frejon01', '2024-04-02 07:00:00', '2024-04-02 10:00:00', 3, 'Anforderungen analysiert. Einige Missverständnisse geklärt.', 0),
(84, 40, 'petwer01', '2024-04-02 11:00:00', '2024-04-02 13:30:00', 0, 'Analyse abgeschlossen. Keine weiteren Probleme.', 0),
(85, 17, 'luknow01', '2024-04-03 07:00:00', '2024-04-03 10:00:00', 0, 'Systemdesign für das CRM erstellt. Keine Probleme.', 0),
(86, 19, 'samcla01', '2024-04-03 11:00:00', '2024-04-03 13:00:00', 0, 'Weitere Details im Design optimiert.', 0),
(87, 43, 'jacsmi01', '2024-05-10 07:00:00', '2024-05-10 10:00:00', 1, 'Entwicklung des CRM begonnen. API-Fehler behoben.', 0),
(88, 39, 'olirei01', '2024-05-10 11:00:00', '2024-05-10 13:00:00', 0, 'Fortschritte in der Entwicklung. Keine weiteren Probleme.', 0),
(89, 12, 'davgre01', '2024-05-20 07:00:00', '2024-05-20 10:00:00', 2, 'Bereitstellung des CRM auf Servern begonnen. Kleine Bugs.', 0),
(90, 8, 'benjam01', '2024-05-20 11:00:00', '2024-05-20 13:00:00', 0, 'Bugs behoben. Bereitstellung erfolgreich.', 0),
(91, 34, 'noawhi01', '2024-06-15 07:00:00', '2024-06-15 10:00:00', 3, 'Prozessdiagramme erstellt. Einige Missverständnisse geklärt.', 0),
(92, 46, 'olisan01', '2024-06-15 11:00:00', '2024-06-15 13:00:00', 0, 'Diagramme abgeschlossen. Keine weiteren Probleme.', 0),
(93, 2, 'gramar01', '2024-08-10 07:00:00', '2024-08-10 10:00:00', 0, 'Automatisierungsprozesse entwickelt. Keine Probleme.', 0),
(94, 20, 'miatur01', '2024-08-10 11:00:00', '2024-08-10 13:30:00', 0, 'Fortschritte gemacht und Tests abgeschlossen.', 0),
(95, 18, 'samcla01', '2024-09-10 07:00:00', '2024-09-10 10:00:00', 0, 'Produktkatalog für E-Commerce eingerichtet.', 0),
(96, 21, 'katwil01', '2024-09-10 11:00:00', '2024-09-10 14:00:00', 0, 'Optimierungen durchgeführt und abgeschlossen.', 0),
(97, 38, 'alejoh01', '2024-09-20 07:00:00', '2024-09-20 10:00:00', 0, 'Zahlungsintegration begonnen. Keine Probleme.', 0),
(98, 15, 'frejon01', '2024-09-20 11:00:00', '2024-09-20 14:00:00', 0, 'Integration erfolgreich abgeschlossen.', 0),
(99, 40, 'quikin01', '2024-11-05 08:00:00', '2024-11-05 11:00:00', 1, 'Trainingspläne erstellt. Kleinere Datenprobleme.', 0),
(100, 29, 'klabac01', '2024-11-05 12:00:00', '2024-11-05 14:30:00', 0, 'Probleme behoben und Fortschritte gemacht.', 0),
(101, 47, 'sarhil01', '2024-01-15 08:00:00', '2024-01-15 11:00:00', 3, 'Fehler im Code behoben, alles läuft stabil.', 0),
(102, 8, 'luknow01', '2024-01-15 12:00:00', '2024-01-15 14:30:00', 0, 'Systemtests erfolgreich abgeschlossen.', 0),
(103, 12, 'olirei01', '2024-01-16 08:00:00', '2024-01-16 11:00:00', 2, 'Prozessoptimierungen durchgeführt. Kleinere Probleme.', 0),
(104, 35, 'katwil01', '2024-01-16 12:00:00', '2024-01-16 15:00:00', 0, 'Prozessoptimierungen erfolgreich abgeschlossen.', 0),
(105, 21, 'jacsmi01', '2024-02-01 08:00:00', '2024-02-01 11:00:00', 0, 'Empfehlungssystem getestet. Keine Probleme.', 0),
(106, 33, 'gramar01', '2024-02-01 12:00:00', '2024-02-01 14:30:00', 0, 'Fehlerfreie Performance der Empfehlung.', 0),
(107, 26, 'davgre01', '2024-02-02 08:00:00', '2024-02-02 11:00:00', 1, 'UI-Fehler entdeckt, Arbeiten fortgesetzt.', 0),
(108, 40, 'lialop01', '2024-02-02 12:00:00', '2024-02-02 14:30:00', 0, 'UI-Fehler behoben, Tests erfolgreich.', 0),
(109, 14, 'miatur01', '2024-02-03 08:00:00', '2024-02-03 11:00:00', 3, 'Implementierung der Tracking-Funktion gestartet.', 0),
(110, 44, 'petwer01', '2024-02-03 12:00:00', '2024-02-03 14:30:00', 0, 'Tracking-Funktion abgeschlossen und getestet.', 0),
(111, 10, 'kevrod01', '2024-02-10 08:00:00', '2024-02-10 11:00:00', 0, 'Inhaltserstellung im CMS abgeschlossen.', 0),
(112, 6, 'alejoh01', '2024-02-10 12:00:00', '2024-02-10 14:30:00', 0, 'Optimierung der CMS-Sicherheit.', 0),
(113, 25, 'noawhi01', '2024-02-12 08:00:00', '2024-02-12 11:00:00', 1, 'API-Integration gestartet. Kleinere Probleme.', 0),
(114, 39, 'emmsmi01', '2024-02-12 12:00:00', '2024-02-12 14:30:00', 0, 'API-Integration erfolgreich abgeschlossen.', 0),
(115, 3, 'benjam01', '2024-03-01 08:00:00', '2024-03-01 11:00:00', 0, 'Anforderungsanalyse für neues Projekt abgeschlossen.', 0),
(116, 42, 'quikin01', '2024-03-01 12:00:00', '2024-03-01 15:00:00', 2, 'Technische Probleme bei der Analyse.', 0),
(117, 15, 'olisan01', '2024-03-05 08:00:00', '2024-03-05 11:00:00', 0, 'Designphase gestartet. Keine Probleme.', 0),
(118, 23, 'frejon01', '2024-03-05 12:00:00', '2024-03-05 14:30:00', 0, 'Designphase abgeschlossen.', 0),
(119, 32, 'gramar01', '2024-03-06 08:00:00', '2024-03-06 11:00:00', 1, 'Backend-Entwicklung begonnen. Kleinere API-Probleme.', 0),
(120, 9, 'samcla01', '2024-03-06 12:00:00', '2024-03-06 14:30:00', 0, 'Backend-Entwicklung abgeschlossen.', 0),
(121, 11, 'katwil01', '2024-04-01 07:00:00', '2024-04-01 10:00:00', 0, 'Tests der API-Integration durchgeführt.', 0),
(122, 37, 'annfie01', '2024-04-01 11:00:00', '2024-04-01 13:30:00', 0, 'Alle Tests erfolgreich.', 0),
(123, 20, 'luknow01', '2024-04-02 07:00:00', '2024-04-02 10:00:00', 1, 'Sicherheitslücken in der API entdeckt.', 0),
(124, 47, 'racsco01', '2024-04-02 11:00:00', '2024-04-02 14:00:00', 0, 'Lücken erfolgreich geschlossen.', 0),
(125, 2, 'davgre01', '2024-04-10 07:00:00', '2024-04-10 10:00:00', 0, 'CRM-System Designphase abgeschlossen.', 0),
(126, 18, 'hanlee01', '2024-04-10 11:00:00', '2024-04-10 13:30:00', 0, 'Probleme bei der Datenbank-Integration gelöst.', 0),
(127, 26, 'lialop01', '2024-05-01 07:00:00', '2024-05-01 10:00:00', 3, 'Entwicklung des CRM-Frontends begonnen.', 0),
(128, 40, 'jacsmi01', '2024-05-01 11:00:00', '2024-05-01 14:00:00', 0, 'Frontend-Entwicklung erfolgreich abgeschlossen.', 0),
(129, 5, 'miatur01', '2024-05-05 07:00:00', '2024-05-05 10:00:00', 0, 'Tests der Frontend-Kompatibilität gestartet.', 0),
(130, 7, 'benjam01', '2024-05-05 11:00:00', '2024-05-05 13:30:00', 0, 'Tests erfolgreich durchgeführt.', 0),
(131, 33, 'kevrod01', '2024-05-10 07:00:00', '2024-05-10 10:00:00', 1, 'Entwicklung der Social-Media-Plattform begonnen.', 0),
(132, 8, 'olirei01', '2024-05-10 11:00:00', '2024-05-10 14:00:00', 0, 'Entwicklung der Plattform abgeschlossen.', 0),
(133, 38, 'olisan01', '2024-06-01 07:00:00', '2024-06-01 10:00:00', 0, 'Tests der Plattform begonnen.', 0),
(134, 43, 'chimil01', '2024-06-01 11:00:00', '2024-06-01 13:30:00', 0, 'Testphase erfolgreich abgeschlossen.', 0),
(135, 14, 'emmsmi01', '2024-06-05 07:00:00', '2024-06-05 10:00:00', 0, 'Tracking-Integration gestartet.', 0),
(136, 19, 'gramar01', '2024-06-05 11:00:00', '2024-06-05 14:00:00', 0, 'Integration abgeschlossen und getestet.', 0),
(137, 36, 'paujoh01', '2024-06-10 07:00:00', '2024-06-10 10:00:00', 0, 'Projektmanagement-Tool optimiert.', 0),
(138, 27, 'kevrod01', '2024-06-10 11:00:00', '2024-06-10 13:30:00', 2, 'Probleme bei der Benutzerverwaltung entdeckt.', 0),
(139, 45, 'luknow01', '2024-06-20 07:00:00', '2024-06-20 10:00:00', 0, 'Benutzerverwaltungsprobleme gelöst.', 0),
(140, 29, 'quikin01', '2024-06-20 11:00:00', '2024-06-20 13:30:00', 0, 'Projekt abgeschlossen und getestet.', 0),
(141, 30, 'samcla01', '2024-07-01 07:00:00', '2024-07-01 10:00:00', 2, 'Testing begonnen, kleinere Fehler entdeckt.', 0),
(142, 5, 'frejon01', '2024-07-01 11:00:00', '2024-07-01 13:30:00', 0, 'Fehler behoben und weiter getestet.', 0),
(143, 17, 'hanlee01', '2024-07-05 07:00:00', '2024-07-05 10:00:00', 0, 'Tests abgeschlossen, keine Probleme.', 0),
(144, 4, 'jacsmi01', '2024-07-05 11:00:00', '2024-07-05 14:00:00', 0, 'Projekt bereit zur Auslieferung.', 0),
(145, 9, 'petwer01', '2024-07-15 07:00:00', '2024-07-15 10:00:00', 1, 'Problem in der API entdeckt.', 0),
(146, 32, 'klabac01', '2024-07-15 11:00:00', '2024-07-15 14:00:00', 0, 'Problem behoben, alles läuft stabil.', 0),
(147, 41, 'benjam01', '2024-08-01 07:00:00', '2024-08-01 10:00:00', 0, 'Erstellung der Benutzerprofile abgeschlossen.', 0),
(148, 31, 'sarhil01', '2024-08-01 11:00:00', '2024-08-01 13:30:00', 0, 'Testphase erfolgreich durchgeführt.', 0),
(149, 13, 'olirei01', '2024-08-10 07:00:00', '2024-08-10 10:00:00', 0, 'Mobile App Entwicklung gestartet.', 0),
(150, 22, 'davgre01', '2024-08-10 11:00:00', '2024-08-10 13:30:00', 1, 'Probleme mit der API-Verbindung.', 0),
(151, 23, 'noawhi01', '2024-08-15 07:00:00', '2024-08-15 10:00:00', 0, 'Mobile App Probleme behoben.', 0),
(152, 28, 'jacsmi01', '2024-08-15 11:00:00', '2024-08-15 13:30:00', 0, 'App auf Testserver hochgeladen.', 0),
(153, 6, 'olisan01', '2024-08-20 07:00:00', '2024-08-20 10:00:00', 3, 'Probleme bei der Zahlungsintegration.', 0),
(154, 2, 'frejon01', '2024-08-20 11:00:00', '2024-08-20 13:30:00', 0, 'Zahlungsintegration erfolgreich abgeschlossen.', 0),
(155, 16, 'kevrod01', '2024-08-25 07:00:00', '2024-08-25 10:00:00', 0, 'Tests der Empfehlungsmaschine gestartet.', 0),
(156, 12, 'luknow01', '2024-08-25 11:00:00', '2024-08-25 14:00:00', 0, 'Optimierungen der Maschine erfolgreich.', 0),
(157, 30, 'benjam01', '2024-09-01 07:00:00', '2024-09-01 10:00:00', 0, 'Finale Tests abgeschlossen.', 0),
(158, 38, 'sarhil01', '2024-09-01 11:00:00', '2024-09-01 13:30:00', 0, 'System bereit zur Auslieferung.', 0),
(159, 46, 'alejoh01', '2024-09-05 07:00:00', '2024-09-05 10:00:00', 0, 'E-Commerce Plattform optimiert.', 0),
(160, 24, 'petwer01', '2024-09-05 11:00:00', '2024-09-05 14:00:00', 1, 'Probleme in der Produktintegration entdeckt.', 0),
(161, 20, 'davgre01', '2024-09-10 07:00:00', '2024-09-10 10:00:00', 0, 'Produktintegration erfolgreich abgeschlossen.', 0),
(162, 25, 'frejon01', '2024-09-10 11:00:00', '2024-09-10 13:30:00', 0, 'Tests der Produktintegration abgeschlossen.', 0),
(163, 17, 'quikin01', '2024-09-15 07:00:00', '2024-09-15 10:00:00', 2, 'Bug im Sicherheitsmodul entdeckt.', 0),
(164, 35, 'annfie01', '2024-09-15 11:00:00', '2024-09-15 13:30:00', 0, 'Sicherheitsmodul Bug behoben.', 0),
(165, 3, 'samcla01', '2024-09-20 07:00:00', '2024-09-20 10:00:00', 0, 'Optimierung der CMS Sicherheit durchgeführt.', 0),
(166, 44, 'olirei01', '2024-09-20 11:00:00', '2024-09-20 14:00:00', 0, 'CMS-Sicherheitsprüfung abgeschlossen.', 0),
(167, 36, 'benjam01', '2024-10-01 07:00:00', '2024-10-01 10:00:00', 1, 'Probleme in der User-Profile Erstellung.', 0),
(168, 29, 'kevrod01', '2024-10-01 11:00:00', '2024-10-01 13:30:00', 0, 'Fehler behoben und Tests erfolgreich.', 0),
(169, 19, 'luknow01', '2024-10-05 07:00:00', '2024-10-05 10:00:00', 0, 'Tracking-Daten ausgewertet. Keine Probleme.', 0),
(170, 31, 'olisan01', '2024-10-05 11:00:00', '2024-10-05 13:30:00', 0, 'Tracking abgeschlossen und analysiert.', 0),
(171, 32, 'alejoh01', '2024-10-10 07:00:00', '2024-10-10 10:00:00', 3, 'Empfehlungsmaschine Fehler in der API.', 0),
(172, 4, 'katwil01', '2024-10-10 11:00:00', '2024-10-10 13:30:00', 0, 'API-Fehler behoben.', 0),
(173, 6, 'lialop01', '2024-10-15 07:00:00', '2024-10-15 10:00:00', 0, 'Neue Empfehlungstestfälle erstellt.', 0),
(174, 2, 'quikin01', '2024-10-15 11:00:00', '2024-10-15 13:30:00', 0, 'Testfälle erfolgreich ausgeführt.', 0),
(175, 45, 'davgre01', '2024-10-20 07:00:00', '2024-10-20 10:00:00', 2, 'Probleme in der Empfehlungsmaschine entdeckt.', 0),
(176, 40, 'klabac01', '2024-10-20 11:00:00', '2024-10-20 14:00:00', 0, 'Fehler behoben und Maschine läuft stabil.', 0),
(177, 17, 'frejon01', '2024-10-25 07:00:00', '2024-10-25 10:00:00', 0, 'Finale Tests für das CMS begonnen.', 0),
(178, 12, 'luknow01', '2024-10-25 11:00:00', '2024-10-25 13:30:00', 0, 'Tests erfolgreich abgeschlossen.', 0),
(179, 25, 'samcla01', '2024-10-30 08:00:00', '2024-10-30 11:00:00', 1, 'Probleme im Content-Management entdeckt.', 0),
(180, 47, 'hanlee01', '2024-10-30 12:00:00', '2024-10-30 15:00:00', 0, 'Content-Management Probleme behoben.', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  ADD PRIMARY KEY (`userid`);

--
-- Indizes für die Tabelle `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectid`),
  ADD KEY `projectlead` (`projectlead`);

--
-- Indizes für die Tabelle `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskid`),
  ADD KEY `projectid` (`projectid`);

--
-- Indizes für die Tabelle `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `project`
--
ALTER TABLE `project`
  MODIFY `projectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `task`
--
ALTER TABLE `task`
  MODIFY `taskid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT für Tabelle `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`projectlead`) REFERENCES `benutzer` (`userid`);

--
-- Constraints der Tabelle `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`projectid`) REFERENCES `project` (`projectid`);

--
-- Constraints der Tabelle `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `task_user_ibfk_1` FOREIGN KEY (`taskid`) REFERENCES `task` (`taskid`),
  ADD CONSTRAINT `task_user_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `benutzer` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
