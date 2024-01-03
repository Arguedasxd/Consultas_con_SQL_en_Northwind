select Od.ProductID, P.ProductName, sum(Od.Quantity) as Cantidad
from [Order Details] Od
inner join Products P on P.ProductID = Od.ProductID
group by Od.ProductID, P.ProductName
Order by Cantidad desc
go