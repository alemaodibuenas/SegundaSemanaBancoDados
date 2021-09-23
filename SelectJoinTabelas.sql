Create View dbo.VW_ProdutoPorCateiria
As
Select 
P.CategoriaID,
C.Descricao as CategoriaDescri��o,
P.SubCategoriaID,
S.Descricao as SubCategoriaDescri��o,
P.ProdutoID,
P.Descricao as ProdutoDescri��o
from Produto as P
INNER JOIN Categoria as C ON P.CategoriaID =  C.CategoriaID
INNER JOIN Subcategoria as S on P.SubCategoriaID = S.SubCategoriaID
where (P.CategoriaID = 10) and (P.SubCategoriaID = 65 )
go