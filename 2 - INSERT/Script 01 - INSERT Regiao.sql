ALTER TABLE Regiao 
	ADD datainsert DATETIME NULL DEFAULT GETDATE()
GO

INSERT INTO Regiao(Descricao, SiglaRegiao)
VALUES 
('Norte', 'N'),
('Nordeste', 'NE'),
('Centro-Oeste', 'CO'),
('Sudeste', 'SD'),
('Sul', 'S')

SELECT * FROM Regiao
GO