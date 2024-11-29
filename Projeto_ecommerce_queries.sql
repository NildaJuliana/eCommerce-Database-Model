-- inserção de dado de queries

use ecommerce;

show tables;
-- idCliente, Fname, Minit, Lname, CPF, Address
insert into clients (Fname, Minit, Lname, CPF, Address) values
	('Alice', 'J', 'Smith', '98765432101', '123 Elm Street, New York'),
    ('Carlos', 'M', 'Rodriguez', '12378945602', '456 Maple Ave, Madrid'),
    ('Hana', 'K', 'Tanaka', '65412398703', '789 Sakura Rd, Tokyo'),
    ('Fatima', 'N', 'Ahmed', '32165498704', '101 Desert St, Cairo'),
    ('Liam', 'B', 'O\'Connor', '98712365405', '345 River Ln, Dublin');
    

-- idProduct, Pname, Classification_kids bool, Category('Electronic','House','Books','Games','Garden', 'Toys'), Rate, Size
insert into product (Pname, Classification_kids, Category, Rate, Size) values
	('Gaming Chair', FALSE, 'House', 4.8, '120x60x70'),
    ('Toy Car', TRUE, 'Toys', 4.5, NULL),
    ('E-Book Reader', FALSE, 'Electronic', 4.9, '15x10x1'),
    ('Board Game', TRUE, 'Games', 4.6, NULL),
    ('Gardening Kit', FALSE, 'Garden', 4.3, '50x30x10');
    
    
    -- idClient, idPayment, cardNumber, ValidThru, SecurityCode, MoreOptions('PIX','Payment slip')
insert into payments (idClient, idPayment, cardNumber, ValidThru, SecurityCode, MoreOptions) values
	(1, '4111111111111111', '2025-07-31', '123', 'PIX'),
    (2, '5500000000000004', '2026-05-31', '456', 'Payment slip'),
    (3, '340000000000009', '2027-03-31', '789', 'PIX'),
    (4, '6011000000000004', '2028-01-31', '321', 'Payment slip'),
    (5, '301000000000000', '2024-12-31', '654', 'PIX');
