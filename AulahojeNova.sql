--Create Table Novo_Conjunto_Municipio_IBGE(
--	MunicipioID int Not Null,
--	Descricao Varchar(MAX) Not Null,
--	IBGE int Not Null,
--	IBGE7 int Not Null,
--	UFID int Not Null,
--	SiglaUF Char(2) Not Null,
--	Regiao Varchar(50) Not Null,
--	Populacao Int Not Null,
--	Porte Varchar(50) Not Null,
--	Capital Bit Not Null
--)
--go

--Select 
--	D.MunicipioID,
--	D.Nome ,
--	D.UF,
--	L.Regiao,
--	L.Capital,
--	L.Porte,	
--	D.UFID,
--	L.Populacao_2010,
--	D.IBGE7,
--	L.IBGE
--	from [Dados-Municipios-IBGE7] as D
--	INNER JOIN [Lista_Municipios_IBGE_Brasil] as L ON L.IBGE7 =  D.IBGE7
--	Order by D.MunicipioID
--go

--Select Populacao_2010 from [Lista_Municipios_IBGE_Brasil] 
--Where Populacao_2010 = '0'
--go

--Update [Lista_Municipios_IBGE_Brasil]
--Set Populacao_2010 = '0'
--Where (Populacao_2010 = 'NULL')

--Select IBGE7, UF, Municipio, Cast(Populacao_2010 as int)  As Populacao
--From [Lista_Municipios_IBGE_Brasil]
--Where (Populacao_2010 = '0')

--Select IBGE7, UF, Municipio,
--	Case Capital
--		When 'Null' Then 0
--		else 1
--		End As CapitalBit
--From [Lista_Municipios_IBGE_Brasil]
--go

Insert Into Novo_Conjunto_Municipio_IBGE(MunicipioID, Descricao, IBGE, IBGE7, UFID,	SiglaUF,
	Regiao,	Populacao, Porte, Capital)
Select 
	D.MunicipioID,
	D.Nome ,
	L.IBGE,
	D.IBGE7,
	D.UFID,
	D.UF,	
	L.Regiao,
	Cast(L.Populacao_2010 as int) as Populacao2010,
	L.Porte,
	Case L.Capital
		When 'NULL' Then 0
		Else 1
		End as CapitalBit
	from [Dados-Municipios-IBGE7] as D
	INNER JOIN [Lista_Municipios_IBGE_Brasil] as L ON L.IBGE7 =  D.IBGE7
	Order by D.MunicipioID
go


--Select 
--	D.MunicipioID,
--	D.Nome ,
--	D.UF,
--	L.Regiao,
--	L.Capital,
--	L.Porte,	
--	D.UFID,
--	L.Populacao_2010,
--	D.IBGE7,
--	L.IBGE
--	from [Dados-Municipios-IBGE7] as D
--	INNER JOIN [Lista_Municipios_IBGE_Brasil] as L ON L.IBGE7 =  D.IBGE7
--	Order by D.MunicipioID
--go