--
-- File generated with SQLiteStudio v3.4.6 on seg fev 24 21:39:34 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: animal
DROP TABLE IF EXISTS animal;

CREATE TABLE IF NOT EXISTS animal (
    id              INTEGER        PRIMARY KEY,
    especie         TEXT (50)      NOT NULL,
    raca            TEXT (50)      NOT NULL,
    cor             TEXT (50)      NOT NULL,
    sexo            TEXT (1)       NOT NULL,
    peso            NUMERIC (6, 2),
    proprietario_id INTEGER        REFERENCES proprietario (id) 
);

INSERT INTO animal (id, especie, raca, cor, sexo, peso, proprietario_id) VALUES (1, 'cachorro', 'srd', 'caramelo', 'M', NULL, 1);
INSERT INTO animal (id, especie, raca, cor, sexo, peso, proprietario_id) VALUES (2, 'gato', 'siames', 'preto', 'F', '1,98', 2);

-- Table: proprietario
DROP TABLE IF EXISTS proprietario;

CREATE TABLE IF NOT EXISTS proprietario (
    id       INTEGER    PRIMARY KEY,
    nome     TEXT (50)  NOT NULL,
    telefone TEXT (15)  NOT NULL,
    endereco TEXT (100) 
);

INSERT INTO proprietario (id, nome, telefone, endereco) VALUES (1, 'Olentino Neto', '6299999933', 'Rua dos Rubi, Trindade, Goiás');
INSERT INTO proprietario (id, nome, telefone, endereco) VALUES (2, 'Jonas Duarte', '629885566', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
