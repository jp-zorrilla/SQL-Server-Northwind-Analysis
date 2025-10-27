# Northwind Database Tables

## Table: **Products**
+-------------+---------+------+-----+
| ProductID   | int     | NULL | NO  |
+-------------+---------+------+-----+
| ProductName | varchar | 50   | YES |
+-------------+---------+------+-----+
| SupplierID  | int     | NULL | YES |
+-------------+---------+------+-----+
| CategoryID  | int     | NULL | YES |
+-------------+---------+------+-----+
| Unit        | varchar | 25   | YES |
+-------------+---------+------+-----+
| Price       | numeric | NULL | YES |
+-------------+---------+------+-----+

## Table: **Orders**
+------------+----------+------+-----+
| OrderID    | int      | NULL | NO  |
+------------+----------+------+-----+
| CustomerID | int      | NULL | YES |
+------------+----------+------+-----+
| EmployeeID | int      | NULL | YES |
+------------+----------+------+-----+
| OrderDate  | datetime | NULL | YES |
+------------+----------+------+-----+
| ShipperID  | int      | NULL | YES |
+------------+----------+------+-----+

## Table: Employees**
+------------+----------+------+-----+
| EmployeeID | int      | NULL | NO  |
+------------+----------+------+-----+
| LastName   | varchar  | 15   | YES |
+------------+----------+------+-----+
| FirstName  | varchar  | 15   | YES |
+------------+----------+------+-----+
| BirthDate  | datetime | NULL | YES |
+------------+----------+------+-----+
| Photo      | varchar  | 25   | YES |
+------------+----------+------+-----+
| Notes      | varchar  | 1024 | YES |
+------------+----------+------+-----+

## Table: EmployeeTerritories**
+---------------+-----+------+-----+
| OrderDetailID | int | NULL | NO  |
+---------------+-----+------+-----+
| OrderID       | int | NULL | YES |
+---------------+-----+------+-----+
| ProductID     | int | NULL | YES |
+---------------+-----+------+-----+
| Quantity      | int | NULL | YES |
+---------------+-----+------+-----+

## Table: Categories**
+--------------+---------+------+-----+
| CategoryID   | int     | NULL | NO  |
+--------------+---------+------+-----+
| CategoryName | varchar | 25   | YES |
+--------------+---------+------+-----+
| Description  | varchar | 255  | YES |
+--------------+---------+------+-----+

## Table: Customers**
+--------------+---------+------+-----+
| CustomerID   | int     | NULL | NO  |
+--------------+---------+------+-----+
| CustomerName | varchar | 50   | YES |
+--------------+---------+------+-----+
| ContactName  | varchar | 50   | YES |
+--------------+---------+------+-----+
| Address      | varchar | 50   | YES |
+--------------+---------+------+-----+
| City         | varchar | 20   | YES |
+--------------+---------+------+-----+
| PostalCode   | varchar | 10   | YES |
+--------------+---------+------+-----+
| Country      | varchar | 15   | YES |
+--------------+---------+------+-----+

## Table: OrderDetails**
+---------------+-----+------+-----+
| OrderDetailID | int | NULL | NO  |
+---------------+-----+------+-----+
| OrderID       | int | NULL | YES |
+---------------+-----+------+-----+
| ProductID     | int | NULL | YES |
+---------------+-----+------+-----+
| Quantity      | int | NULL | YES |
+---------------+-----+------+-----+