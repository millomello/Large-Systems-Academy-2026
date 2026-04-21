-- Crea la tabella LIBRI con i parametri richiesti
CREATE TABLE LIBRI (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	titolo TEXT,
	autore TEXT,
	genere TEXT,
	anno INTEGER,
	prezzo DECIMAL(10,2),
	disponibile BOOLEAN
);

-- Inserisce 10 libri con titoli creativi ;)
INSERT INTO LIBRI (titolo, autore, genere, anno, prezzo, disponibile) VALUES
('Il Cognome della Rosa',                      'Umberto Eco Eco Eco',  'Storico',      1990, 12.99, TRUE),
('Harry Potter e Voldemort: la Love Story',    'J.K. Rowling',         'Fantasy',      1997, 14.50, TRUE),
('1985',                                       'George Orwell',        'Distopico',    1999,  9.99, FALSE),
('She',                                        'Stephen King',         'Horror',       2000, 22.00, FALSE),
('Il Grande Re',                               'Antoine de Saint',     'Classico',     1995,  8.50, TRUE),
('Il Conte di Busto Arsizio',                  'Alexandre Dumas',      'Avventura',    1996, 13.50, TRUE),
('Fame e Pigrizia',                            'Jane Austen',          'Romantico',    1998,  9.99, TRUE),
('Il Signore dei Kebabbari',                   'J.R.R. Tolkien',       'Fantasy',      2001, 34.90, FALSE),
('Celsius 233',                                'Ray Bradbury',         'Distopico',    2005, 10.50, TRUE),
('La Divina Commedia: il Ritorno di Virgilio', 'Dante Alighieri',      'Classico',     1995, 11.00, TRUE);

-- Restituisce tutti i libri ordinati per prezzo in modo crescente (ASC è il default)
SELECT * FROM LIBRI ORDER BY prezzo;

-- Restituisce tutti i libri disponibili con prezzo tra 10 e 20 euro
SELECT * FROM LIBRI WHERE disponibile=1 AND prezzo BETWEEN 10 AND 20;

-- Restituisce titolo e autore dei libri il cui autore contiene la lettera "a", rinominando le colonne con un alias più leggibile
SELECT titolo as Titolo, autore as Autore FROM LIBRI WHERE autore LIKE '%a%';

-- Restituisce tutti i libri pubblicati tra il 2000 e il 2015, ordinati dal più recente al più vecchio, mostrando solo i primi 5
SELECT * FROM LIBRI WHERE anno BETWEEN 2000 AND 2015 ORDER BY anno DESC LIMIT 5;

-- Restituisce tutti i libri il cui genere è Fantasy oppure Fantascienza
SELECT * FROM LIBRI WHERE genere IN ('Fantasy', 'Fantascienza');

-- Restituisce il numero di libri
SELECT COUNT(*) FROM LIBRI;

-- Restituisce il prezzo medio, il prezzo massimo e il prezzo minimo di tutti i libri
SELECT AVG(prezzo) as PrezzoMedio, MAX(prezzo) as PrezzoMassimo, MIN(prezzo) as PrezzoMinimo FROM LIBRI;

-- Raggruppa i libri per genere e per ciascuno genere mostra numero di libri e prezzo medio
SELECT genere as Genere, COUNT(*) as Quantità, AVG(prezzo) PrezzoMedio FROM LIBRI GROUP BY genere;

-- Restituisce i generi che hanno più di due libri
SELECT genere FROM LIBRI GROUP BY genere HAVING COUNT(*) > 2;

-- Restituisce il titolo di ciascuno libro in maiuscolo e la sua lunghezza in caratteri
SELECT UPPER(titolo) AS Titolo, LENGTH(titolo) AS Lunghezza FROM LIBRI;

-- Restituisce tutti i libri e il loro prezzo con e senza IVA
SELECT titolo as Titolo, prezzo as PrezzoOriginale, ROUND(prezzo*1.22, 2) as PrezzoConIVA FROM LIBRI;

-- Restituisce ogni libro e la sua "età" (anno corrente - anno di pubblicazione)
SELECT titolo as Titolo, YEAR(SYSDATE()) - anno as Età FROM LIBRI;

-- La mia tabella ha 10 libri.

