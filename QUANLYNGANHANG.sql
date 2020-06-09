create database QLNH;

use qlnh;

create table Customers(
    customer_id char(10) primary key ,
    full_name nvarchar(50),
    address nvarchar(100),
    email varchar(50),
    phone int
);

create table Accounts(
    account_id char(10),
    account_type varchar(20),
    date date,
    balance double,
    customer_id char(10),
    constraint PK_account primary key (account_id),
    constraint FK_Account_Customer foreign key (customer_id)
        references Customers(customer_id)
);

create table Transactions(
    transaction_id char(10),
    account_id char(10),
    date date,
    amounts double,
    descriptions text,
    constraint PK_Transaction primary key (transaction_id),
    constraint FK_Transaction_Accounts foreign key (account_id)
        references Accounts(account_id)
);

