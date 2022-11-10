--Select
--ANSII
--Select * from Customers
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City='Berlin'

--case insensitive
Select * from Products where CAtegoryId=1 or categoryId=3

Select * from Products where CAtegoryId=1 and UnitPrice>=10

select * from Products where CategoryId=1 order by UnitPrice desc --ascending descending

select count(*) adet from Products where CategoryId=2

select categoryID,count(*) from Products where unitPrice>20 group by CategoryID having count(*)<10

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID 
where UnitPrice>10

--inner join iki tabloda da eşleşenleri getirir
select * from Products p left join [Order Details] od
on p.ProductId = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null