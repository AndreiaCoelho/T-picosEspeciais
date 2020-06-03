PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE usuario (
idUsuario INTEGER PRIMARY KEY,
nomeUsuario TEXT,
emailUsuario TEXT,
cpfUsuario INTEGER
);
CREATE TABLE noticias (
idNoticias INTEGER PRIMARY KEY,
categorias TEXT,
idUsuario INTEGER,
titulo TEXT,
resumo TEXT,
FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);
CREATE TABLE meetup (
idMeetup INTEGER PRIMARY KEY
,
nomeMeetup TEXT,
tipoMeetup TEXT,
organizador TEXT,
tema TEXT,
palestrantes TEXT,
dataMeetup INTEGER,
horaMeetup INTEGER,
localMeetup TEXT
);
COMMIT;
