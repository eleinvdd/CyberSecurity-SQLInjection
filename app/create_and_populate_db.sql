-- ---------------------------------------------------------------------------------------------------

-- CREAZIONE DATABASE --------------------------------------------------------------------------------
CREATE DATABASE user_db;
USE user_db;


-- CREAZIONE TABELLA --------------------------------------------------------------------------------
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nome VARCHAR(100),
    cognome VARCHAR(100),
    dati_sensibili TEXT
);

-- INSERIMENTO DATI --------------------------------------------------------------------------------
INSERT INTO users (username, password, nome, cognome, dati_sensibili)
    VALUES
        ('giulia_verdi', 'securepass01', 'Giulia', 'Verdi', 'Contatti bancari'),
        ('luca_bianchi', 'pass1234!', 'Luca', 'Bianchi', 'Cartella medica'),
        ('anna_rossi', 'qwerty987', 'Anna', 'Rossi', 'Dati fiscali'),
        ('samuel_neri', 'password456', 'Samuel', 'Neri', 'Stipendio annuale'),
        ('sofia_gialli', 'sofia@2023', 'Sofia', 'Gialli', 'Investimenti personali'),
        ('davide_grigi', 'd4v1de2024', 'Davide', 'Grigi', 'Patrimonio immobiliare'),
        ('marta_azzurri', 'mart4pwd', 'Marta', 'Azzurri', 'Contratto di lavoro'),
        ('alessio_rossi', 'al3ss10pass', 'Alessio', 'Rossi', 'Storico di viaggio'),
        ('chiara_blu', 'bluChi@123', 'Chiara', 'Blu', 'Informazioni sanitarie'),
        ('federico_arancioni', 'f3d2023!', 'Federico', 'Arancioni', 'Fondi pensione'),
        ('valentina_viola', 'Vi0laPass!', 'Valentina', 'Viola', 'Codice fiscale'),
        ('simone_nocciola', 'simone99$', 'Simone', 'Nocciola', 'Dettagli assicurativi'),
        ('maria_paglia', 'm4r1a@pwd', 'Maria', 'Paglia', 'Dati patrimoniali'),
        ('gabriele_granata', 'gabr1e13pwd', 'Gabriele', 'Granata', 'Proprietà aziendali'),
        ('francesca_oliva', 'oliv4pass@', 'Francesca', 'Oliva', 'Storico dei crediti'),
        ('andrea_perla', 'andr34safe', 'Andrea', 'Perla', 'Investimenti in borsa'),
        ('ilaria_rubino', 'rUb1no!234', 'Ilaria', 'Rubino', 'Dettagli contrattuali'),
        ('paolo_ocra', 'pa0lo1990!', 'Paolo', 'Ocra', 'Dati sensibili aziendali'),
        ('serena_crema', 'crema@serena', 'Serena', 'Crema', 'Storico delle polizze'),
        ('giulia_puorto', 'fiore<3_pwd', 'Giulia', 'Puorto', 'Dati riservati personali'),
        ('ludovica_ambra', 'amb1234!', 'Ludovica', 'Ambra', 'Movimenti bancari'),
        ('giorgio_agata', '4g4ta2023', 'Giorgio', 'Agata', 'Residenza legale'),
        ('beatrice_lilla', 'L1llaPwd', 'Beatrice', 'Lilla', 'Informazioni notarili'),
        ('claudio_indaco', 'ind@co2024', 'Claudio', 'Indaco', 'Dati personali riservati'),
        ('laura_zaffiro', 'z4ff1r0_pwd', 'Laura', 'Zaffiro', 'Report finanziari')
;

-- SELECT * FROM users;

-- ---------------------------------------------------------------------------------------------------