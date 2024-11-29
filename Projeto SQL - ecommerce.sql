-- criação de banco de dados para o cenário de E-commerce
-- drop database ecommerce;
create database ecommerce;
use ecommerce; 


create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11),
    Address varchar(100),
    constraint unique_cpf_client unique (CPF)
);

desc clients;
alter table clients modify column Fname varchar(50);


-- size = dimensão do produto
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10) not null,
    Classification_kids bool default false,
    Category enum('Electronic','House','Books','Games','Garden') not null,
    Rate float default 0,
    Size varchar(10)
    
);

alter table product modify column Pname varchar(50);

-- Modificação para adicionar a nova categoria 'toys'
alter table product
modify column Category enum('Electronic', 'House', 'Books', 'Games', 'Garden', 'Toys') not null;

create table payments(
	idClient int,
    idPayment int,
    cardNumber char(16) not null,
    validThru date not null,
    securityCode char(3) not null,
    moreOptions enum('PIX','Payment slip'),
    primary key(idClient, idPayment),
    constraint unique_cardNumber_payment unique (cardNumber)
);

desc payments;

-- Modificação para adicionar a nova categoria 'cartão'
alter table payments
modify column moreOptions enum('PIX','Payment slip', 'Cartão') default 'Cartão',
modify column moreOptions enum('PIX', 'Payment slip') not null; 


create table orders(
	idOrder int auto_increment primary key, 
    idOrderClient int,
    idPayClient int,
    orderStatus enum('Confirmado','Em processamento','Cancelado') default 'Em processamento',
    orderDescription varchar(250),
    shipping float default 20,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient),
    constraint fk_payment_client foreign key (idOrderClient, idPayClient) references payments(idClient, idPayment)
);



create table Stock(
	idStock int auto_increment primary key,
    stockLocation varchar(200),
    quantity int default 0
);

create table supplier(
	idSupplier int auto_increment primary key,
    corporateName varchar (200) not null,
    CNPJ char(15) not null,
    Contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);


create table seller(
	idSeller int auto_increment primary key,
    corporateName varchar (200) not null,
    tradeName varchar(250),
    CNPJ char(15) not null,
    CPF char(9),
    Contact char(11) not null,
    Address varchar(250),
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
);

create table productSeller(
	idProdSeller int,
    idProduct int,
    prodQuantity int default 1,
    primary key (idProdSeller, idProduct),
    constraint fk_product_seller foreign key (idProdSeller) references seller(idSeller),
    constraint fk_product_product foreign key (idProduct) references product(idProduct)
);


create table productOrder(
	idProdOrder int,
    idProduct int,
    prodQuantity int default 1,
    prodStatus enum('Disponível','Indisponível') default 'Disponível',
    primary key (idProdOrder, idProduct),
    constraint fk_product_order foreign key (idProdOrder) references orders(idOrder),
    constraint fk_product_productOrder foreign key (idProduct) references product(idProduct)
);


create table productSupplier(
	idProdSupplier int,
    idProduct int,
    primary key (idProdSupplier, idProduct),
    constraint fk_product_supplier foreign key (idProdSupplier) references supplier(idSupplier),
    constraint fk_product_productSupplier foreign key (idProduct) references product(idProduct)
);


create table productStock(
	idProdStock int,
    idProduct int,
    prodQuantity int default 1,
    Location varchar(200) not null,
    primary key (idProdStock , idProduct),
    constraint fk_product_stock foreign key (idProdStock ) references stock(idStock),
    constraint fk_product_productStock foreign key (idProduct) references product(idProduct)
);

show tables;
