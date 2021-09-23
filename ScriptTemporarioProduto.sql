create table TempProduto(
CategoriaID int not null,
CategoriaDescri��o varchar(MAX) not null,
SubCategoriaID int not null,
SubCategoriaDescri��o varchar(MAX) not null,
ProdutoID int not null PRIMARY KEY,
ProdutoDescri��o varchar(MAX) not null,
DataInsert datetime null default getdate()
)
go

insert into TempProduto(CategoriaID,CategoriaDescri��o,SubCategoriaID,SubCategoriaDescri��o,ProdutoID,ProdutoDescri��o)
	select 
	P.CategoriaID,
	C.Descricao as CategoriaDescri��o,
	P.SubCategoriaID,
	S.Descricao as SubCategoriaDescri��o,
	P.ProdutoID,
	P.Descricao as ProdutoDescri��o
	from Produto as P
	INNER JOIN Categoria as C ON P.CategoriaID =  C.CategoriaID
	INNER JOIN Subcategoria as S on P.SubCategoriaID = S.SubCategoriaID
go

select * from TempProduto
go