CREATE TABLE TERMINO (
    palabra VARCHAR(20) NOT NULL PRIMARY KEY,
    apaTotal INT,
    numeroDeDocsEnQueAparece INT,
    idf DOUBLE
);

CREATE TABLE DOCUMENTO (
    id INT NOT NULL PRIMARY KEY,
    titulo VARCHAR(400)
);

CREATE TABLE FRECUENCIA (
    palabra VARCHAR(20),
    id INT,
    repeticionesEnDocumento INT,
    FOREIGN KEY (palabra)
        REFERENCES TERMINO (palabra),
    FOREIGN KEY (id)
        REFERENCES DOCUMENTO (id)
);