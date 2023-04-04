CREATE VIEW LustrzankiNiechinskie AS
SELECT 
	aparat.model, producent.nazwa, 
	matryca.przekatna, matryca.rozdzielczosc, 
    obiektyw.minPrzeslona, obiektyw.maxPrzeslona
FROM aparat INNER JOIN matryca ON aparat.matryca = matryca.ID
INNER JOIN obiektyw ON aparat.obiektyw = obiektyw.ID
INNER JOIN producent ON aparat.producent = producent.ID
WHERE aparat.typ = 'lustrzanka' AND producent.kraj <> 'Chiny';