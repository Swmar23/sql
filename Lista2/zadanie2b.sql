CREATE TABLE IF NOT EXISTS Matryca (
    ID INT NOT NULL AUTO_INCREMENT,
    przekatna DECIMAL(4 , 2) NOT NULL,
    rozdzielczosc DECIMAL(3 , 1) NOT NULL,
    typ VARCHAR(10) NOT NULL,
    PRIMARY KEY (ID),
    CONSTRAINT nieujemne CHECK (przekatna >= 0 AND rozdzielczosc >= 0)
)
	AUTO_INCREMENT = 100;
