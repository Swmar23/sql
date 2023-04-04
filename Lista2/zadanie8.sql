DELIMITER $$
CREATE TRIGGER niechciana_matryca AFTER DELETE ON aparat
FOR EACH ROW
BEGIN
	DELETE FROM matryca WHERE matryca.ID NOT IN 
    (SELECT DISTINCT A.ID FROM 
    (SELECT matryca.ID FROM matryca INNER JOIN aparat ON matryca.ID = aparat.matryca) AS A) AND matryca.ID > 0;
END$$
DELIMITER ;