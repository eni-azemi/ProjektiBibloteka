DELIMITER $$

CREATE FUNCTION projektiNiveliPuntorii.NiveliPuntori(
	paga int
) 
RETURNS VARCHAR(20)

DETERMINISTIC

BEGIN
    DECLARE niveliPuntorit VARCHAR(20);

    IF paga > 1000 THEN SET niveliPuntorit = 'Menaxhment i larte';
    ELSEIF (paga >= 500 AND  paga <= 1000) THEN SET niveliPuntorit = 'Administrate';
    ELSEIF paga < 500 THEN SET niveliPuntorit = 'Staf ndihmes';
    END IF;
	RETURN (niveliPuntorit);
END$$
DELIMITER ;