INSERT INTO Contratti (nome, cognome, numero_contratto, codice_fiscale, data_nascita, tipologia_contratto, inizio_contratto, termine_contratto) VALUES
('Marco', 'Rossi', 1, 'RSSMRC80A01H501Z', '1980-01-01', 'a_chiamata', '2014-01-01', '2025-01-01'),
('Luca', 'Bianchi', 2, 'BNCLCU85E15H501N', '1985-05-15', 'determinato', '2015-02-01', '2026-01-31'),
('Giulia', 'Verdi', 3, 'VRDGLI90M01F205S', '1990-12-01', 'indeterminato', '2016-03-01', NULL),
('Anna', 'Neri', 4, 'NERNNA75C15H501Y', '1975-03-15', 'a_chiamata', '2017-04-01', '2025-11-30'),
('Paolo', 'Gialli', 5, 'GLLPLA92R22F205R', '1992-10-22', 'determinato', '2018-05-01', '2025-04-30'),
('Chiara', 'Blu', 6, 'BLUCHR88M05H501R', '1988-08-05', 'indeterminato', '2019-06-01', NULL),
('Francesco', 'Marrone', 7, 'MRNFNC95A01H501C', '1995-01-01', 'a_chiamata', '2020-07-01', '2025-12-31'),
('Elena', 'Azzurri', 8, 'ZZRLNE70D10H501V', '1970-04-10', 'determinato', '2021-08-01', '2026-07-31'),
('Alessandro', 'Viola', 9, 'VLALSN85T20F205X', '1985-12-20', 'indeterminato', '2022-09-01', NULL),
('Maria', 'Arancio', 10, 'RNCMRA82S10F205L', '1982-11-10', 'a_chiamata', '2023-10-01', '2025-12-31'),
('Stefano', 'Lilla', 11, 'LLLSFN78M20H501P', '1978-08-20', 'determinato', '2014-11-01', '2025-10-31'),
('Laura', 'Fucsia', 12, 'FCSLRA89M01H501T', '1989-08-01', 'indeterminato', '2015-12-01', NULL),
('Davide', 'Ciano', 13, 'CNODVD92R01H501L', '1992-10-01', 'a_chiamata', '2016-01-01', '2025-06-30'),
('Serena', 'Rosa', 14, 'RSASRN93S01H501K', '1993-11-01', 'determinato', '2017-02-01', '2025-01-31'),
('Giorgio', 'Verde', 15, 'VRDGGR91A01H501X', '1991-01-01', 'indeterminato', '2018-03-01', NULL);


INSERT INTO Dipendenti (badge, numero_contratto, certificazione, ruolo, id_turno) VALUES
(1001, 1, 'Abilitazione al Commercio', 'responsabile', 101),
(1002, 2, 'Certificazione di Farmacista', 'farmacista', 102),
(1003, 3, 'Certificazione di Tecnico', 'tecnico di laboratorio', 103),
(1004, 4, 'Certificazione di Tecnico', 'tecnico di laboratorio', 104),
(1005, 5, 'Certificazione di Farmacista', 'farmacista', 105),
(1006, 6, 'Abilitazione al Commercio', 'responsabile', 106),
(1007, 7, 'Certificazione di Farmacista', 'farmacista', 107),
(1008, 8, 'Certificazione di Tecnico', 'tecnico di laboratorio', 108),
(1009, 9, 'Certificazione di Farmacista', 'farmacista', 109),
(1010, 10, 'Certificazione di Tecnico', 'tecnico di laboratorio', 110),
(1011, 11, 'Certificazione di Farmacista', 'farmacista', 111),
(1012, 12, 'Certificazione di Tecnico', 'tecnico di laboratorio', 112),
(1013, 13, 'Certificazione di Farmacista', 'farmacista', 113),
(1014, 14, 'Certificazione di Tecnico', 'tecnico di laboratorio', 114),
(1015, 15, 'Certificazione di Farmacista', 'farmacista', 115);

INSERT INTO Turni (id_turno, giorni, orario_inizio, orario_fine) VALUES
(101, 'lunedì-giovedì', '08:00:00', '12:00:00'),
(102, 'venerdì-lunedì', '14:00:00', '18:00:00'),
(103, 'lunedì-giovedì', '08:00:00', '12:00:00'),   -- Tecnico di laboratorio
(104, 'martedì-venerdì', '14:00:00', '18:00:00'),  -- Tecnico di laboratorio
(105, 'lunedì-venerdì', '08:00:00', '12:00:00'),
(106, 'martedì-venerdì', '14:00:00', '18:00:00'),
(107, 'lunedì-venerdì', '08:00:00', '12:00:00'),
(108, 'lunedì-giovedì', '14:00:00', '18:00:00'),   -- Tecnico di laboratorio
(109, 'lunedì-venerdì', '08:00:00', '12:00:00'),
(110, 'martedì-venerdì', '14:00:00', '18:00:00'),  -- Tecnico di laboratorio
(111, 'lunedì-venerdì', '08:00:00', '12:00:00'),
(112, 'lunedì-giovedì', '14:00:00', '18:00:00'),   -- Tecnico di laboratorio
(113, 'martedì-sabato', '08:00:00', '12:00:00'),
(114, 'mercoledì-venerdì', '14:00:00', '18:00:00'), -- Tecnico di laboratorio
(115, 'lunedì-venerdì', '08:00:00', '12:00:00');
