DELIMITER $$
CREATE PROCEDURE podwyzka(IN z_nazwa VARCHAR(50))
BEGIN
    DECLARE z_id INT DEFAULT 0;
    SET z_id = (SELECT DISTINCT zawod_id FROM zawody WHERE nazwa = z_nazwa);
	START TRANSACTION;
		UPDATE Pracownicy SET pensja=pensja*1.05 WHERE Pracownicy.zawod_id=z_id;
		IF ( (SELECT COUNT(pensja) FROM Pracownicy 
			WHERE zawod_id=z_id AND pensja > (SELECT pensja_max FROM zawody WHERE zawod_id=z_id)) > 0) THEN
			ROLLBACK;
		END IF;
	COMMIT;
END$$
DELIMITER ;
            