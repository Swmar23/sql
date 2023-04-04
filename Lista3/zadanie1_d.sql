CREATE TABLE IF NOT EXISTS Pracownicy(
ludzie_id INT NOT NULL,
zawod_id INT NOT NULL,
pensja FLOAT,
FOREIGN KEY (ludzie_id)
	REFERENCES Ludzie(id),
FOREIGN KEY (zawod_id)
	REFERENCES Zawody(zawod_id),
CONSTRAINT nieujemna_pensja CHECK( pensja >= 0 ));
