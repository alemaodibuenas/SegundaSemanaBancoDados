Create Table Municipio(
	MunicipioID Int Not Null Identity(1,1),
	Descricao Varchar(MAX) Not Null,
	IBGE Int Not Null,
	IBGE7 Int Not Null,
	UFID Int Not Null,
	SiglaUF Char(2) Not Null,
	Regiao Varchar(MAX) Not Null,
	MesoRegiaoID Int Not Null,
	MicroRegiaoID Int Not Null,
	Populacao Int Not Null,
	Porte varchar(MAX) Not Null,
	Capital Int Not Null,
	DataInsert DateTime Null Default GetDate(),
	Constraint PK_Municipio Primary Key (MunicipioID)
)
Go

Set Identity_Insert Municipio On

Insert Into Municipio(	
	MunicipioID,Descricao,IBGE,
	IBGE7,UFID,SiglaUF,Regiao,
	MesoRegiaoID,MicroRegiaoID,
	Populacao,Porte,Capital)
Select 
	L.MunicipioID,
	N.Descricao,
	N.IBGE,
	N.IBGE7,
	N.UFID,
	N.SiglaUF,
	N.Regiao,
	L.MesoregiaoID,
	L.MicroregiaoID,
	N.Populacao,
	N.Porte,
	N.Capital
From Novo_Conjunto_Municipio_IBGE As N
	Inner Join Lista_Municipios_Complementar_IBGE As L On
	N.MunicipioID = L.MunicipioID
	Order By L.MunicipioID
go
Set Identity_Insert Municipio Off


Select * From Municipio

