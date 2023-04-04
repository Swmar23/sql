CREATE TABLE IF NOT EXISTS Obiektyw (
    ID INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(30) NOT NULL,
    minPrzeslona FLOAT NOT NULL,
    maxPrzeslona FLOAT NOT NULL,
    PRIMARY KEY (ID),
    CONSTRAINT nieujemne_obiektyw CHECK (minPrzeslona >= 0 AND maxPrzeslona >= 0),
    CONSTRAINT maxwiekszeodmin CHECK (minPrzeslona < maxPrzeslona)
);