CREATE TABLE IF NOT EXISTS Aparat (
    model VARCHAR(30) NOT NULL,
    producent INT NOT NULL,
    matryca INT NOT NULL,
    obiektyw INT NOT NULL,
    typ ENUM('kompaktowy', 'lustrzanka', 'profesjonalny', 'inny') NOT NULL,
    PRIMARY KEY (model),
    FOREIGN KEY (producent)
        REFERENCES Producent (ID),
    FOREIGN KEY (matryca)
        REFERENCES Matryca (ID),
    FOREIGN KEY (obiektyw)
        REFERENCES Obiektyw (ID),
    CONSTRAINT dodatnie_id CHECK (producent > 0 AND matryca > 0
        AND obiektyw > 0)
);
    