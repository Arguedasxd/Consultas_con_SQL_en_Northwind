/* Calcular el valor promedio de las compras de cada cliente. */

select C.CompanyName as Nombre, round(sum(Od.UnitPrice*(1-Od.Discount)*Od.Quantity)/sum(Od.Quantity),3) as PromedioCompras
from Orders O
Inner join Customers C on C.CustomerID = O.CustomerID
Inner join [Order Details] Od on Od.OrderID = O.OrderID
group by C.CompanyName
order by PromedioCompras desc
go