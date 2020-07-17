-- Multi-Table Query Practice



-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

        select p.ProductName, c.CatogoryName
        from Product as p join Category as a c on p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

        SELECT o.id, s.CompanyName
        FROM Product AS p join Category as c on p.CategoryId = c.id;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
        
        SELECT p.ProductName, p.quanityPerUnit
        FROM Product as p 
            join [order] as o
            on p.supplierId = o.shipvia
        WHERE o.id = 10251
        order by p.productName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

        SELECT o.id as "order id", c.companyname as "company name", e.lastname as "last name"
        from [order] as o
                join customers as c on o.customeris = c.id
                join employee as e on o.employeeid = e.id;
