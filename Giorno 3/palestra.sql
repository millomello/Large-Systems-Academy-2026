CREATE DATABASE palestra_db;

CREATE TABLE SOCI (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    data_iscrizione DATE,
    attivo INT DEFAULT 1
);

CREATE TABLE CORSI (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    istruttore VARCHAR(100),
    max_partecipanti INT,
    livello VARCHAR(20)
);

CREATE TABLE ISCRIZIONI (
    id INT AUTO_INCREMENT PRIMARY KEY,
    socio_id INT,
    corso_id INT,
    data_iscrizione DATE
);

INSERT INTO SOCI (nome, cognome, email, data_iscrizione, attivo) VALUES
('Marco',    'Rossi',     'marco.rossi@email.it',       '2023-01-10', 1),
('Laura',    'Bianchi',   'laura.bianchi@email.it',     '2023-03-22', 1),
('Giovanni', 'Ferrari',   'giovanni.ferrari@email.it',  '2023-05-08', 1),
('Sofia',    'Esposito',  'sofia.esposito@email.it',    '2023-07-15', 0),
('Andrea',   'Romano',    'andrea.romano@email.it',     '2024-01-17', 1),
('Chiara',   'Colombo',   'chiara.colombo@email.it',    '2024-02-05', 1),
('Luca',     'Ricci',     'luca.ricci@email.it',        '2024-06-19', 0),
('Martina',  'Marinelli', 'martina.marinelli@email.it', '2024-09-25', 1);

INSERT INTO CORSI (nome, istruttore, max_partecipanti, livello) VALUES
('Yoga',     'Anna Ferretti',   15, 'base'),
('Pilates',  'Marco Neri',      10, 'avanzato'),
('Spinning', 'Giulia Mancini',  20, 'intermedio'),
('Zumba',    'Carlos Mendez',   25, 'base');

INSERT INTO ISCRIZIONI (socio_id, corso_id, data_iscrizione) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-02-10'),
(3, 3, '2024-03-05'),
(4, 4, '2024-04-20'),
(5, 1, '2024-05-08'),
(6, 2, '2024-06-12'),
(7, 3, '2024-07-19'),
(7, 4, '2024-08-01');

UPDATE SOCI SET email = 'marco.rossi.nuova@email.it' WHERE id = 1;

UPDATE SOCI SET attivo = 0 WHERE id = 6;

DELETE FROM ISCRIZIONI WHERE id = 3;

ALTER TABLE CORSI ADD COLUMN costo_mensile DECIMAL(6,2);

UPDATE CORSI SET costo_mensile = 30.00 WHERE id = 1;
UPDATE CORSI SET costo_mensile = 45.00 WHERE id = 2;
UPDATE CORSI SET costo_mensile = 35.00 WHERE id = 3;
UPDATE CORSI SET costo_mensile = 25.00 WHERE id = 4;

SELECT s.nome AS Nome, s.cognome AS Cognome, c.nome as Corso, i.data_iscrizione AS Data_Iscrizione
FROM SOCI s JOIN ISCRIZIONI i ON s.id = i.socio_id
JOIN CORSI c ON i.corso_id = c.id
WHERE s.attivo = 1;

SELECT c.nome AS Corso, COUNT(i.id) AS Numero_Iscrizioni
FROM CORSI c
LEFT JOIN ISCRIZIONI i ON c.id = i.corso_id
GROUP BY c.id;

