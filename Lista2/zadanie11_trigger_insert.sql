DELIMITER $$
CREATE TRIGGER liczbaModeli_insert AFTER INSERT ON aparat
FOR EACH ROW
BEGIN
UPDATE producent 
SET liczbaModeli = IFNULL((SELECT COUNT(*) FROM aparat WHERE aparat.producent = producent.ID), 0);
END$$
DELIMITER ;