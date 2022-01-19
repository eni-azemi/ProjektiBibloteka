DELIMITER $$
CREATE PROCEDURE librateAutorit (IN Autori varchar(50))
BEGIN
    select Titulli, Autori from projekti.libri where libri.Autori=Autori;
END $$
DELIMITER $$

call librateAutorit('Leon Tolstoi');
