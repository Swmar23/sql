PREPARE statement FROM "SELECT COUNT(*) FROM Pracownicy INNER JOIN Zawody ON Pracownicy.zawod_id=Zawody.zawod_id 
INNER JOIN Ludzie ON Pracownicy.ludzie_id=Ludzie.id WHERE plec='K' AND nazwa=?";