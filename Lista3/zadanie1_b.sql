CREATE TABLE IF NOT EXISTS Ludzie(
id INT NOT NULL AUTO_INCREMENT,
PESEL CHAR(11),
imie varchar(30) NOT NULL,
nazwisko varchar(30) NOT NULL,
data_urodzenia date NOT NULL,
plec enum('K','M') NOT NULL,
PRIMARY KEY (id),
CONSTRAINT pesel_poprawna_data
	CHECK (
    SUBSTRING(PESEL, 1, 2) = SUBSTRING(YEAR(data_urodzenia), 3, 2) AND
    ( 
		( SUBSTRING(YEAR(data_urodzenia), 1, 2) = '18' AND SUBSTRING(PESEL, 3, 2) = MONTH(data_urodzenia) + 80) OR
		( SUBSTRING(YEAR(data_urodzenia), 1, 2) = '19' AND SUBSTRING(PESEL, 3, 2) = MONTH(data_urodzenia)) OR
		( SUBSTRING(YEAR(data_urodzenia), 1, 2) = '20' AND SUBSTRING(PESEL, 3, 2) = MONTH(data_urodzenia) + 20) 
	) AND
    SUBSTRING(PESEL, 5, 2) = DAY(data_urodzenia)),
CONSTRAINT pesel_poprawna_plec
	CHECK (
		( SUBSTRING(PESEL, 10, 1) IN ('0', '2', '4', '6', '8') AND plec = 'K' ) OR
        ( SUBSTRING(PESEL, 10, 1) IN ('1', '3', '5', '7', '9') AND plec = 'M' )
	),
CONSTRAINT pesel_suma_kontrolna
	CHECK (
    CAST(SUBSTRING(PESEL, 11, 1) AS UNSIGNED) = 10 -
	MOD( (CAST(SUBSTRING(PESEL, 1, 1) AS UNSIGNED) +  
		MOD(CAST(SUBSTRING(PESEL, 2, 1) AS UNSIGNED) * 3, 10) + 
		MOD(CAST(SUBSTRING(PESEL, 3, 1) AS UNSIGNED) * 7, 10) + 
		MOD(CAST(SUBSTRING(PESEL, 4, 1) AS UNSIGNED) * 9, 10) + 
		CAST(SUBSTRING(PESEL, 5, 1) AS UNSIGNED) + 
		MOD(CAST(SUBSTRING(PESEL, 6, 1) AS UNSIGNED) * 3, 10) + 
		MOD(CAST(SUBSTRING(PESEL, 7, 1) AS UNSIGNED) * 7, 10) + 
		MOD(CAST(SUBSTRING(PESEL, 8, 1) AS UNSIGNED) * 9, 10) +
		CAST(SUBSTRING(PESEL, 9, 1) AS UNSIGNED) + 
		MOD(CAST(SUBSTRING(PESEL, 10, 1) AS UNSIGNED) * 3, 10)), 10)
    ) );
	
