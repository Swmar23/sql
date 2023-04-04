UPDATE producent 
SET liczbaModeli = IFNULL((SELECT COUNT(*) FROM aparat WHERE aparat.producent = producent.ID), 0);