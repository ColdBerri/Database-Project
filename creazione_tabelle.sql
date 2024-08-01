DROP TABLE IF EXISTS Registro_Vendite CASCADE;
DROP TABLE IF EXISTS Vendite CASCADE;
DROP TABLE IF EXISTS Ricetta CASCADE;
DROP TABLE IF EXISTS Clienti CASCADE;
DROP TABLE IF EXISTS Prenotazioni CASCADE;
DROP TABLE IF EXISTS Servizi_vari CASCADE;
DROP TABLE IF EXISTS Bolla_Acquisto CASCADE;
DROP TABLE IF EXISTS Fornitori CASCADE;
DROP TABLE IF EXISTS Ordini CASCADE;
DROP TABLE IF EXISTS Dipendenti CASCADE;
DROP TABLE IF EXISTS Contratti CASCADE;
DROP TABLE IF EXISTS Prodotti CASCADE;
DROP TABLE IF EXISTS Registro_Contabile CASCADE;
DROP TABLE IF EXISTS Magazzino CASCADE;
DROP TABLE IF EXISTS Turni CASCADE;
DROP TABLE IF EXISTS Bugiardino CASCADE;

CREATE TABLE IF NOT EXISTS Contratti (
    nome VARCHAR(64) NOT NULL,
    cognome VARCHAR(64) NOT NULL,
    numero_contratto INT PRIMARY KEY,
    codice_fiscale VARCHAR(16) NOT NULL,
    data_nascita DATE NOT NULL,
    tipologia_contratto VARCHAR(64) NOT NULL,
    inizio_contratto DATE NOT NULL,
    termine_contratto DATE
);

CREATE TABLE IF NOT EXISTS Registro_Contabile (
    spese_ordine DECIMAL(10, 2) NOT NULL,
    spese_dipendenti DECIMAL(10, 2) NOT NULL,
    guadagno_vendite DECIMAL(10, 2) NOT NULL,
    guadagno_altre_attivita DECIMAL(10, 2) NOT NULL,
    mese_e_anno DATE PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Prodotti (
    id_prodotto INT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    scadenza DATE NOT NULL,
    tipo_assunzione VARCHAR(64) NOT NULL,
    quantita_confezione INT NOT NULL,
    prezzo DECIMAL(10, 2) NOT NULL,
    tipo VARCHAR(64) NOT NULL,
    necessita_ricetta BOOLEAN NOT NULL,
    eta_minima INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Dipendenti (
    badge INT PRIMARY KEY,
    numero_contratto INT NOT NULL,
    certificazione VARCHAR(128) NOT NULL,
    ruolo VARCHAR(64) NOT NULL,
    posizione VARCHAR(64) NOT NULL,
    id_turno INT NOT NULL,
    FOREIGN KEY (numero_contratto) REFERENCES Contratti(numero_contratto),
    FOREIGN KEY (id_turno) REFERENCES Turni(id_turno)
);

CREATE TABLE IF NOT EXISTS Ordini (
    id_prodotto INT PRIMARY KEY,
    quantita INT NOT NULL,
    nome_fornitore VARCHAR(64) NOT NULL,
    prezzo_unitario DECIMAL(10, 2) NOT NULL,
    data_arrivo DATE NOT NULL,
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto)
);

CREATE TABLE IF NOT EXISTS Fornitori (
    nome_ditta VARCHAR(128) NOT NULL,
    p_iva VARCHAR(11) PRIMARY KEY,
    prodotto VARCHAR(64)
);

CREATE TABLE IF NOT EXISTS Bolla_Acquisto (
    nome_ditta VARCHAR(128) NOT NULL,
    quantita_prodotto INT NOT NULL,
    data_inizio_trasporto DATE NOT NULL,
    vettore VARCHAR(64) NOT NULL,
    id_prodotto INT NOT NULL,
    causale_trasporto VARCHAR(64) NOT NULL,
    data_documento DATE NOT NULL,
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto),
    FOREIGN KEY (nome_ditta) REFERENCES Fornitori(nome_ditta)
);

CREATE TABLE IF NOT EXISTS Servizi_vari (
    nome_servizio VARCHAR(128) NOT NULL,
    giorno DATE NOT NULL,
    badge_farmacista INT NOT NULL,
    fascia_orario VARCHAR(64) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (badge_farmacista) REFERENCES Dipendenti(badge)
);

CREATE TABLE IF NOT EXISTS Prenotazioni (
    giorno DATE NOT NULL,
    orario TIME NOT NULL,
    nome_servizio VARCHAR(128) NOT NULL,
    nome_cliente VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS Clienti (
    nome VARCHAR(64) NOT NULL,
    cognome VARCHAR(64) NOT NULL,
    codice_fiscale VARCHAR(16) PRIMARY KEY,
    eta INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Ricetta (
    dottore VARCHAR(64) NOT NULL,
    nome_cliente VARCHAR(64) NOT NULL,
    codice_fiscale VARCHAR(16) NOT NULL,
    eta INT NOT NULL,
    FOREIGN KEY (codice_fiscale) REFERENCES Clienti(codice_fiscale)
);

CREATE TABLE IF NOT EXISTS Vendite (
    id_vendita INT PRIMARY KEY,
    dataa DATE NOT NULL,
    codice_fiscale_cliente VARCHAR(16) NOT NULL,
    id_prodotto INT NOT NULL,
    farmacista_servente INT NOT NULL,
    totale_spesa DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (codice_fiscale_cliente) REFERENCES Clienti(codice_fiscale),
    FOREIGN KEY (farmacista_servente) REFERENCES Dipendenti(badge),
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto)
);

CREATE TABLE IF NOT EXISTS Registro_Vendite(
    id_vendita INT NOT NULL,
    id_prodotto INT NOT NULL,
    PRIMARY KEY (id_vendita, id_prodotto),
    FOREIGN KEY (id_vendita) REFERENCES Vendite(id_vendita),
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto)
);

CREATE TABLE IF NOT EXISTS Magazzino (
    id_prodotto INT NOT NULL,
    fila INT NOT NULL,
    posto INT NOT NULL,
    numero_restanti INT NOT NULL,
    numero_minimo INT NOT NULL,
    data_prossimo_carico DATE,
    PRIMARY KEY (id_prodotto, fila, posto),
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto)
);

CREATE TABLE IF NOT EXISTS Turni (
    id_turno INT PRIMARY KEY,
    giorni VARCHAR(64) NOT NULL,
    orario_inizio TIME NOT NULL,
    orario_fine TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Bugiardino (
    id_prodotto INT PRIMARY KEY,
    effetti_collaterali VARCHAR(256),
    isfans BOOLEAN NOT NULL,
    modalita_assunzione VARCHAR(128) NOT NULL,
    FOREIGN KEY (id_prodotto) REFERENCES Prodotti(id_prodotto)
);
