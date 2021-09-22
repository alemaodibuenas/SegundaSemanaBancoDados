ALTER TABLE UnidadesFederacao 
	ADD datainsert DATETIME NULL DEFAULT GETDATE()
GO

INSERT INTO UnidadesFederacao (Descricao, SiglaUF, RegiaoID)
VALUES
('Rondônia', 'RO', 1),
('Acre', 'AC', 1),
('Amazonas', 'AM', 1),
('Roraima', 'RR', 1),
('Pará', 'PA', 1),
('Amapá', 'AP', 1),
('Tocantins', 'TO', 1),
('Maranhão', 'MA', 2),
('Piauí', 'PI', 2),
('Ceará', 'CE', 2),
('Rio Grande do Norte', 'RN', 2),
('Paraíba', 'PB', 2),
('Pernambuco', 'PE', 2),
('Alagoas', 'AL', 2),
('Sergipe', 'SE', 2),
('Bahia', 'BA', 2),
('Minas Gerais', 'MG', 4),
('Espírito Santo', 'ES', 4),
('Rio de Janeiro', 'RJ', 4),
('São Paulo', 'SP', 4),
('Paraná', 'PR', 5),
('Santa Catarina', 'SC', 5),
('Rio Grande do Sul', 'RS', 5),
('Mato Grosso do Sul', 'MS', 3),
('Mato Grosso', 'MT', 3),
('Goiás', 'GO', 3),
('Distrito Federal', 'DF', 3)
GO

SELECT * FROM UnidadesFederacao
GO