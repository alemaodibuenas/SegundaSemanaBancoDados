Select 
	VW.CategoriaID,
	VW.CategoriaDescricao,
	VW.SubcategoriaID,
	VW.SubCategoriaDescricao,
	VW.ProdutoID,
	VW.ProdutoDescricao,
	P.DataInsert
From dbo.VW_ProdutoPorCateiria as VW
INNER JOIN Produto As P ON VW.ProdutoID = P.ProdutoID
Where (VW.CategoriaID = 10) and (VW.SubCategoriaID = 65)
go


Select Count(*) as teste
From VW_ProdutoPorCateiria
Where (CategoriaID = 10) and (SubCategoriaID = 65)
go