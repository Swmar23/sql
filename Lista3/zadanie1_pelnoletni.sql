DELIMITER $$
CREATE PROCEDURE wstawPelnoletnich()
BEGIN
	INSERT INTO ludzie VALUES
    (6, '80050995217', 'Gniewomir', 'Cieślak', STR_TO_DATE('09,05,1980', '%d,%m,%Y'), 'M'),
	(7, '83111333733', 'Miłosz', 'Andrzejewski', STR_TO_DATE('13,11,1983','%d,%m,%Y'),'M'),
	(8, '73102025914', 'Aleksander', 'Walczak', STR_TO_DATE('20,10,1973','%d,%m,%Y'), 'M'),
	(9, '01261952718', 'Martin', 'Błaszczyk', STR_TO_DATE('19,06,2001','%d,%m,%Y'), 'M'),
	(10, '81103046687', 'Agnieszka', 'Zalewska', STR_TO_DATE('30,10,1981','%d,%m,%Y'), 'K'),
	(11, '97022879686', 'Emilia', 'Szymańska', STR_TO_DATE('28,02,1997','%d,%m,%Y'), 'K'),
	(12, '63080985456', 'Daniel', 'Szewczyk', STR_TO_DATE('09,08,1963','%d,%m,%Y'), 'M'),
	(13, '89070497165', 'Agata', 'Sokołowska', STR_TO_DATE('04,07,1989','%d,%m,%Y'), 'K'),
	(14, '03261083672', 'Alfred', 'Przybylski', STR_TO_DATE('10,06,2003','%d,%m,%Y'),'M'),
	(15, '74021058685', 'Dominika', 'Jasińska', STR_TO_DATE('10,02,1974','%d,%m,%Y'), 'K'),
	(16, '62071244349', 'Paula', 'Kubiak', STR_TO_DATE('12,07,1962','%d,%m,%Y'), 'K'),
	(17, '73101898939', 'Fabian', 'Cieślak', STR_TO_DATE('18,10,1973','%d,%m,%Y'), 'M'),
	(18, '98121029235', 'Hubert', 'Kwiatkowski', STR_TO_DATE('10,12,1998','%d,%m,%Y'), 'M'),
	(19, '67051995835', 'Norbert', 'Nowak', STR_TO_DATE('19,05,1967','%d,%m,%Y'), 'M'),
	(20, '91122535635', 'Kamil', 'Sawicki', STR_TO_DATE('25,12,1991','%d,%m,%Y'), 'M'),
	(21, '65080527586', 'Lara', 'Kamińska', STR_TO_DATE('05,08,1965','%d,%m,%Y'), 'K'),
	(22, '71070856417', 'Antoni', 'Czarnecki', STR_TO_DATE('08,07,1971','%d,%m,%Y'), 'M'),
	(23, '00250356799', 'Damian', 'Brzeziński', STR_TO_DATE('03,05,2000','%d,%m,%Y'), 'M'),
	(24, '79042366973', 'Ignacy', 'Krupa', STR_TO_DATE('23,04,1979','%d,%m,%Y'), 'M'),
	(25, '74051452949', 'Diana', 'Brzezińska', STR_TO_DATE('14,05,1974','%d,%m,%Y'), 'K'),
	(26, '85091458914', 'Emil', 'Jakubowski', STR_TO_DATE('14,09,1985','%d,%m,%Y'), 'M'),
	(27, '99071018643', 'Emilia', 'Kubiak', STR_TO_DATE('10,07,1999','%d,%m,%Y'), 'K'),
	(28, '76091788745', 'Amalia', 'Piotrowska', STR_TO_DATE('17,09,1976','%d,%m,%Y'), 'K'),
	(29, '76021725563', 'Kinga', 'Kubiak', STR_TO_DATE('17,02,1976','%d,%m,%Y'), 'K'),
	(30, '62010961575', 'Remigiusz', 'Sawicki', STR_TO_DATE('09,01,1962','%d,%m,%Y'), 'M'),
	(31, '74011121791', 'Miron', 'Błaszczyk', STR_TO_DATE('11,01,1974','%d,%m,%Y'), 'M'),
	(32, '85040344558', 'Natan', 'Lewandowski', STR_TO_DATE('03,04,1985','%d,%m,%Y'), 'M'),
	(33, '87090872863', 'Marta', 'Szczepańska', STR_TO_DATE('08,09,1987','%d,%m,%Y'), 'K'),
	(34, '02212935969', 'Patrycja', 'Szulc', STR_TO_DATE('29,01,2002','%d,%m,%Y'), 'K'),
	(35, '66031345372', 'Piotr', 'Szczepański', STR_TO_DATE('13,03,1966','%d,%m,%Y'), 'M'),
	(36, '78041216319', 'Gustaw', 'Woźniak', STR_TO_DATE('12,04,1978','%d,%m,%Y'), 'M'),
	(37, '67062971781', 'Klaudia', 'Baran', STR_TO_DATE('29,06,1967','%d,%m,%Y'), 'K'),
	(38, '97061393839', 'Julian', 'Szymczak', STR_TO_DATE('13,06,1997','%d,%m,%Y'), 'M'),
	(39, '90042622386', 'Marlena', 'Górska', STR_TO_DATE('26,04,1990','%d,%m,%Y'), 'K'),
	(40, '65111865421', 'Adrianna', 'Piotrowska', STR_TO_DATE('18,11,1965','%d,%m,%Y'), 'K'),
	(41, '86011873639', 'Łukasz', 'Kozłowski', STR_TO_DATE('18,01,1986','%d,%m,%Y'), 'M'),
	(42, '92060379514', 'Adam', 'Zalewski', STR_TO_DATE('03,06,1992','%d,%m,%Y'), 'M'),
	(43, '79031268596', 'Amir', 'Mróz', STR_TO_DATE('12,03,1979','%d,%m,%Y'), 'M'),
	(44, '00210873434', 'Hubert', 'Brzeziński', STR_TO_DATE('08,01,2000','%d,%m,%Y'), 'M'),
	(45, '76061529888', 'Czesława', 'Lis', STR_TO_DATE('15,06,1976','%d,%m,%Y'), 'K'),
	(46, '94030713311', 'Natan', 'Szczepański', STR_TO_DATE('07,03,1994','%d,%m,%Y'), 'M'),
	(47, '66060585747', 'Jadwiga', 'Kubiak', STR_TO_DATE('05,06,1966','%d,%m,%Y'), 'K'),
	(48, '64040639617', 'Gracjan', 'Baran', STR_TO_DATE('06,04,1964','%d,%m,%Y'), 'M'),
	(49, '91080489984', 'Zofia', 'Ziółkowska', STR_TO_DATE('04,08,1991','%d,%m,%Y'), 'K'),
	(50, '88050624418', 'Arkadiusz', 'Wróblewski', STR_TO_DATE('06,05,1988','%d,%m,%Y'), 'M'),
    (51, '52100541437', 'Mirosław', 'Kalisz', STR_TO_DATE('05,10,1952','%d,%m,%Y'), 'M'),
	(52, '57093013167', 'Janina', 'Tucholska', STR_TO_DATE('30,09,1957','%d,%m,%Y'), 'K'),
	(53, '53061922248', 'Marianna', 'Wojciechowska', STR_TO_DATE('19,06,1953','%d,%m,%Y'), 'K'),
	(54, '59031917867', 'Józefa', 'Biernacka', STR_TO_DATE('19,03,1959','%d,%m,%Y'), 'K'),
	(55, '54112957482', 'Halina', 'Jarosz', STR_TO_DATE('29,11,1954','%d,%m,%Y'), 'K');
END$$
DELIMITER ;