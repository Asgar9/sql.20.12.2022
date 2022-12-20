use Northwind
select FirstName Adı,LastName Soyadı,TitleOfCourtesy Ünvanı,Title Görevi,
HireDate [İşe başlama tarihi],CompanyName  [Firma adı],ContactName as [Firma Temsilci adı],
Phone [Firma Telefonu] ,Quantity [Sifarişin adeti],OD.UnitPrice [Satış Fiyatı],
ProductName [Ürünün adı] ,UnitsInStock [Stok miktarı],P.UnitPrice [Birim fiyatı],
CategoryName [Kategori adı]
from Employees E 
join Orders O on E.EmployeeID=O.EmployeeID 
join Customers C on O.CustomerID=C.CustomerID
join [Order Details] OD on O.OrderID = OD.OrderID
join Products P on OD.ProductID = P.ProductID
join Categories CA on P.CategoryID = P.CategoryID
