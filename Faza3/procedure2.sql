DELIMITER $$
CREATE PROCEDURE HistoriaELexuesit (IN LexuesiID int)
BEGIN
    select lexuesi_id,libri_id from projekti.huazimi where huazimi.lexuesi_id=LexuesiID;
END $$
DELIMITER $$

call HistoriaELexuesit(8)