DELIMITER $$
CREATE FUNCTION najwiekszaMatryca (id INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE s VARCHAR(30);
    SET s = (SELECT aparat.model FROM aparat INNER JOIN matryca ON aparat.matryca = matryca.ID 
        WHERE aparat.producent = id AND matryca.przekatna = 
			(SELECT MAX(matryca.przekatna) FROM aparat INNER JOIN matryca ON aparat.matryca = matryca.ID 
            WHERE aparat.producent = id) LIMIT 1);
    RETURN s;
END$$

DELIMITER ;

SELECT najwiekszaMatryca (1);