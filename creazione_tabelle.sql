DROP TABLE IF EXISTS Contratti CASCADE;
DROP TABLE IF EXISTS Registro_Contabile CASCADE;
DROP TABLE IF EXISTS Dipendenti CASCADE;
DROP TABLE IF EXISTS Ordini CASCADE:
DROP TABLE IF EXISTS Fornitori CASCADE;
DROP TABLE IF EXISTS Bolla_Acquisto CASCADE;
DROP TABLE IF EXISTS Servizi_vari CASCADE;
DROP TABLE IF EXISTS Prenotazioni CASCADE;
DROP TABLE IF EXISTS Clienti CASCADE;
DROP TABLE IF EXISTS Ricetta CASCADE;
DROP TABLE IF EXISTS Registro_Vendite CASCADE;
DROP TABLE IF EXISTS Medicinali CASCADE;
DROP TABLE IF EXISTS Prodotti_non_Medicinali CASCADE;
DROP TABLE IF EXISTS Magazzino CASCADE;
DROP TABLE IF EXISTS Turni CASCADE;
DROP TABLE IF EXISTS Bugiardino CASCADE;

CREATE TABLE IF NOT ESIXTS Contratti(
       nome
       cognome
       numero_contratto
       codice_fiscale
       data_nascita
       tipologia_contratto
       inizio_contratto
       termine_contratto
);

CREATE TABLE IF NOT ESIXTS Registro_Contabile(
       spese_ordine
       sprese_dipendenti
       guadagno_vendite
       guadagno_altre_attivita
       mese_e_anno
);

CREATE TABLE IF NOT ESIXTS Dipendenti(
       badge
       numero_contratto
       certificazione
       ruolo
       posizione
);

CREATE TABLE IF NOT ESIXTS Ordini(
       id_prodotto
       quantità
       nome_fornitore
       prezzo_unitario
       data_arrivo
);

CREATE TABLE IF NOT ESIXTS Fornitori(
       nome_ditta
       P.iva
       Prodotto
);

CREATE TABLE IF NOT ESIXTS Bolla_Acquisto(
       nome_ditta
       quantita_prodotto
       prezzo_unitario
       prezzo_totale
       nome_coriere
       data_spedizione
       modalita_spedizione
       
);

CREATE TABLE IF NOT ESIXTS Servizi_vari(
       nome_servizio
       giorno
       badge_farmacista
       fascia_orario
       costo
);

CREATE TABLE IF NOT ESIXTS Prenotazioni(
       giorno
       orario
       nome_servizio
       nome_cliente
);

CREATE TABLE IF NOT ESIXTS Clienti(
       nome
       cognome
       codice_fiscale
       eta
);

CREATE TABLE IF NOT ESIXTS Ricetta(
       dottore
       nome_cliente
       codice_fiscale
       eta
);

CREATE TABLE IF NOT ESIXTS Registro_Vendite(
       data
       codice_fiscale_cliente
       id_prodotto
       farmacista_servente
       totale_spesa
);

CREATE TABLE IF NOT ESIXTS Medicinali(
       id_prodotto
       nome
       scadenza
       tipo_assunzione
       quantita_confezione
       prezzo
       tipo
       necessita_ricetta
       eta_minima
);

CREATE TABLE IF NOT ESIXTS Prodotti_non_Medicinali(
       id_prodotto
       nome
       scadenza
       tipo_assunzione
       quantita_confezione
       prezzo
       benefici
       isnatuale
       );

CREATE TABLE IF NOT ESIXTS Magazzino(
       id_prodotto
       fila
       posto
       numero_restanti
       numero_minimo
       data_prossimo_carico
);

CREATE TABLE IF NOT ESIXTS Turni(
       giorni
       orazio_inizio
       orazio_fine
);

CREATE TABLE IF NOT ESIXTS Bugiardino(
       effetti_colaterali
       isfans
       modolita_assunzione
);
