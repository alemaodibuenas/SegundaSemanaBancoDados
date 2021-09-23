Create View dbo.VW_ProdutoPorCateiria
As
	Select 
		P.CategoriaID,
		C.Descricao as CategoriaDescricao,
		P.SubCategoriaID,
		S.Descricao as SubCategoriaDescricao,
		P.ProdutoID,
		P.Descricao as ProdutoDescricao,
		P.DataInsert
	from Produto as P
	INNER JOIN Categoria as C ON P.CategoriaID =  C.CategoriaID
	INNER JOIN Subcategoria as S on P.SubCategoriaID = S.SubCategoriaID
go

Create Procedure dbo.PR_ProdutoPorCateiria
As
	Select 
		P.CategoriaID,
		C.Descricao as CategoriaDescricao,
		P.SubCategoriaID,
		S.Descricao as SubCategoriaDescricao,
		P.ProdutoID,
		P.Descricao as ProdutoDescricao,
		P.DataInsert
	from Produto as P
	INNER JOIN Categoria as C ON P.CategoriaID =  C.CategoriaID
	INNER JOIN Subcategoria as S on P.SubCategoriaID = S.SubCategoriaID
go

Create Procedure dbo.PR_ProdutoPorCategoriaMaisSubCategoria
	@CategoriaID int,
	@SubCategoriaID int
As
	Select 
		P.CategoriaID,
		C.Descricao as CategoriaDescricao,
		P.SubCategoriaID,
		S.Descricao as SubCategoriaDescricao,
		P.ProdutoID,
		P.Descricao as ProdutoDescricao,
		P.DataInsert
	from Produto as P
	INNER JOIN Categoria as C ON P.CategoriaID =  C.CategoriaID
	INNER JOIN Subcategoria as S on P.SubCategoriaID = S.SubCategoriaID
	Where (P.CategoriaID = @CategoriaID) and (P.SubCategoriaID = @SubCategoriaID)
go