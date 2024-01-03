/* #Encontrar los clientes que han realizado más compras. */

select C.CompanyName as Nombre, C.CustomerID, COUNT(C.CustomerID) as Cantidad
from Orders O
inner join Customers C on C.CustomerID = O.CustomerID
group by C.CustomerID, C.CompanyName
order by Cantidad desc
go