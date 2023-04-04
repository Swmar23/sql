DELIMITER $$
CREATE TRIGGER nowyProducent BEFORE INSERT ON aparat
FOR EACH ROW
BEGIN
	IF new.producent NOT IN (SELECT ID FROM producent) 
    THEN INSERT INTO producent VALUES
    (new.producent, 'Nieznany Producent', 'Nieznany Kraj', 0);
    END IF;
END$$
DELIMITER ;
