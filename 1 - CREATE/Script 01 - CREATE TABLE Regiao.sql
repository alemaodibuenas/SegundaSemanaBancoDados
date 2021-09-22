CREATE TABLE Regiao(
	RegiaoID INT IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(MAX) NOT NULL,
	SiglaRegiao CHAR(2) NOT NULL,
	DataInsert DATETIME NULL DEFAULT GETDATE(),
	CONSTRAINT PK_Regiao PRIMARY KEY(RegiaoID)
)
GO



