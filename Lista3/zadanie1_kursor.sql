DELIMITER $$
CREATE PROCEDURE generatorPracownikow()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE l_id, z_id, z_lekarza INT;
  DECLARE wiek DATE;
  DECLARE gender enum('K','M');
  DECLARE placa, placa_min, placa_max FLOAT;
  
  DECLARE cur1 CURSOR FOR SELECT id, data_urodzenia, plec FROM ludzie;
  DECLARE CONTINUE HANDLER 
  FOR NOT FOUND SET done = TRUE;
  SET z_lekarza = (SELECT zawod_id FROM zawody WHERE nazwa='lekarz');
  OPEN cur1;
  
  read_loop: LOOP
    FETCH cur1 INTO l_id, wiek, gender;
    IF done THEN
		LEAVE read_loop;
    END IF;
    SET z_id = FLOOR(RAND()*4 + 1);
    IF (DATE_ADD(wiek, INTERVAL 65 YEAR) < CURDATE() OR (DATE_ADD(wiek, INTERVAL 60 YEAR) < CURDATE() AND gender = 'K')) THEN
		WHILE (z_id=z_lekarza) DO
			SET z_id = FLOOR(RAND()*4 + 1);
		END WHILE;
	END IF;

    SET placa_min = (SELECT zawody.pensja_min FROM zawody WHERE zawod_id = z_id);
    SET placa_max = (SELECT zawody.pensja_max FROM zawody WHERE zawod_id = z_id);
	INSERT INTO pracownicy VALUES
    (l_id, z_id, ROUND( (placa_min + RAND()*(placa_max-placa_min)), 2) );
  END LOOP;

  CLOSE cur1;
END$$
DELIMITER ;