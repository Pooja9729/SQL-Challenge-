Create database online_bookstore;
use online_bookstore;
Create table  Books(
    Book_ID int Primary key ,
    Title varchar(100) Not null,
    Author varchar(50) Not null,
    ISBN Varchar(20) Unique,
    Price Decimal(8,2) Check(price>0)
    );
create table Orders(
		Order_ID int Primary key,
        Book_ID int,
        Order_Date Date Not null,
        Quantity int Check (Quantity>0),
        foreign key (Book_ID) references Books(Book_ID)
        );
	
ALTER TABLE Books
ALTER COLUMN ISBN SET DEFAULT 'DEFAULT-ISBN';

insert into Books(Book_ID,Title,Author,ISBN,Price) values
(1, 'The Alchemist', 'Paulo Coelho', 'A100', 350.00),
(2, 'Atomic Habits', 'James Clear', 'B100', 499.00),
(3, 'Ikigai', 'Héctor García', 'C100', 299.00),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'D100', 450.00),
(5, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'E100', 399.00);
Select * from Books;
select * from Orders;
Update Books set price = 375.00 where Book_ID = 1;
update Orders set Quantity = 3 where Order_ID = 101;

Delete from orders where Order_ID = 101;
truncate table Orders;
