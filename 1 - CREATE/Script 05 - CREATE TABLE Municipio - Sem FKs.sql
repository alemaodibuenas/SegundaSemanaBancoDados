CREATE TABLE Municipio (
	MunicipioID int IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	MesoregiaoID INT NULL,
	MicroregiaoID INT NULL,
	UFID INT NOT NULL,
	DataInsert DATETIME NULL DEFAULT GETDATE(),
	CONSTRAINT PK_Municipio PRIMARY KEY(MunicipioID)
)
GO


