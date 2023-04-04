DELIMITER $$
CREATE PROCEDURE wstawNiepelnoletnich()
BEGIN
	INSERT INTO ludzie(PESEL,imie,nazwisko,data_urodzenia,plec) VALUES
	('06290499162', 'Anna', 'Nowak', STR_TO_DATE('04,09,2006','%d,%m,%Y'), 'K'),
	('17240578972', 'Jan', 'Kowalski', STR_TO_DATE('05,04,2017','%d,%m,%Y'), 'M'),
    ('07221172426', 'Amelia', 'Wolska', STR_TO_DATE('11,02,2007','%d,%m,%Y'), 'K'),
    ('11303044848', 'Patrycja', 'Działowa', STR_TO_DATE('30,10,2011','%d,%m,%Y'), 'K'),
    ('17272988431', 'Mateusz', 'Grabacki',  STR_TO_DATE('29,07,2017','%d,%m,%Y'), 'M');
END$$
DELIMITER ;




        