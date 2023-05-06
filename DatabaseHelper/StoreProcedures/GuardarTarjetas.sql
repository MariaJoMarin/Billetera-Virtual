CREATE PROCEDURE spGuardarTarjeta
(
    @Foto VARCHAR(100),
    @Banco VARCHAR(100),
    @Emisor VARCHAR(100),
    @Propietario VARCHAR(100),
    @NTarjeta VARCHAR(100),
    @Codigo VARCHAR(100),
    @FechaMes VARCHAR(100),
    @FechaYear VARCHAR(100)
)
AS
BEGIN
    INSERT INTO Tarjetas1 (Foto, Banco, Emisor, Propietario, NTarjeta, Codigo, FechaMes, FechaYear)
    VALUES (@Foto, @Banco, @Emisor, @Propietario, @NTarjeta, @Codigo, @FechaMes, @FechaYear)
END