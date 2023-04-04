CREATE TABLE IF NOT EXISTS Zawody (
zawod_id INT NOT NULL AUTO_INCREMENT,
nazwa VARCHAR(50),
pensja_min FLOAT,
pensja_max FLOAT,
PRIMARY KEY (zawod_id),
CONSTRAINT max_wieksze_od_min CHECK (pensja_max > pensja_min),
CONSTRAINT nieujemne CHECK (pensja_max >= 0 AND pensja_min >= 0));