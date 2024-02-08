SELECT Nome, Cognome, Eta
FROM IMPIEGATO
WHERE Eta > 29;

SELECT Nome, Cognome, RedditoMensile
FROM Impiegato
WHERE RedditoMensile <= 800;

SELECT Nome, Cognome, DetrazioneFiscale
FROM IMPIEGATO
WHERE DetrazioneFiscale = 'Si';

SELECT Nome, Cognome, DetrazioneFiscale
FROM IMPIEGATO
WHERE DetrazioneFiscale = 'No';

SELECT *
FROM Impiegato
WHERE Cognome LIKE 'G%'
ORDER BY Cognome;

SELECT COUNT(*) AS NumeroImpiegati
FROM IMPIEGATO;

SELECT SUM(RedditoMensile) AS TotaleRedditi
FROM Impiegato

SELECT AVG(RedditoMensile) AS MediaRedditi
FROM Impiegato

SELECT MAX(RedditoMensile) AS RedditoMensileMaggiore
FROM Impiegato

SELECT MIN(RedditoMensile) AS RedditoMensileMinore
FROM Impiegato

SELECT Nome, Cognome, Data_Assunzione
FROM IMPIEGATO
WHERE Data_Assunzione >= '2007-01-01' AND Data_Assunzione < '2008-01-01';

DECLARE @TipoImpiego VARCHAR(255) = 'Sviluppatore';
SELECT *
FROM IMPIEGATO
WHERE IDImpiego IN (SELECT IDImpiego FROM IMPIEGO WHERE TipoImpiego = @TipoImpiego);


SELECT AVG(Eta) AS EtaMediaImpiegati
FROM Impiegato



