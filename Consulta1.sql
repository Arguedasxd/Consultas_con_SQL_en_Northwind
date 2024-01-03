use northwind
go

#Calcular el total de ventas por categoría de producto y por año.

select P.ProductID, convert(varchar, O.OrderDate, 23) AS Fecha, sum(Od.UnitPrice*Od.Quantity) as VentaTotal
from [Order Details] Od
Inner join Products P on P.ProductID = Od.ProductID
Inner join Orders O on O.OrderID = Od.OrderID
group by P.ProductID, O.OrderDate
order by P.ProductID asc
go