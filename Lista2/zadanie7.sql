DELIMITER $$
CREATE FUNCTION liczbaAparatowZMatryca (id INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE s INT DEFAULT 0;
    SET s = IFNULL((SELECT COUNT(*) FROM aparat INNER JOIN matryca ON aparat.matryca = matryca.ID WHERE aparat.matryca = id), 0);
    RETURN s;
END$$

DELIMITER ;