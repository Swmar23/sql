EXPLAIN SELECT * FROM Ludzie INNER JOIN Pracownicy ON Ludzie.id=Pracownicy.ludzie_id
INNER JOIN Zawody ON Pracownicy.zawod_id=Zawody.zawod_id WHERE pensja > 10000 AND Zawody.nazwa = 'informatyk' AND Ludzie.plec='M';