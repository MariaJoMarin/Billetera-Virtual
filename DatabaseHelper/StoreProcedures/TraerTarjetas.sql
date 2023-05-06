CREATE PROCEDURE spTraerTarjetas

AS
BEGIN
    SELECT [Foto], [Banco], [Emisor], [Propietario], [NTarjeta], [Codigo], [FechaMes], [FechaYear]
	From Tarjetas1 
END