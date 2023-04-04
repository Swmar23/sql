DELIMITER $$
CREATE PROCEDURE generatorAparatow()
BEGIN
	DECLARE i INT DEFAULT 100;
    DECLARE r INT DEFAULT 0;
    DECLARE s VARCHAR(20);
    WHILE i > 0 DO
		SET r = FLOOR(RAND() * 4);
		IF(r = 0)
			THEN SET s = 'profesjonalny';
		ELSEIF(r = 1)
			THEN SET s = 'lustrzanka';
		ELSEIF(r = 2)
			THEN SET s = 'kompaktowy';
		ELSE
			SET s = 'inny';
		END IF;
		INSERT INTO Aparat VALUES ( 
			UPPER(SUBSTRING(MD5(RAND()) FROM 1 FOR 8)),
			FLOOR(RAND() * 15 + 1),
            FLOOR((RAND() * 15) + 100),
            FLOOR(RAND() * 15 + 1),
            s);
		SET i = i - 1;
	END WHILE;
END$$
DELIMITER ;

CALL generatorAparatow();
    