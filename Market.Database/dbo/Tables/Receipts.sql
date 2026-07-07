create table Receipts
(
    Id            int primary key references Sales (Id),
    ReceiptNumber varchar(50) not null unique,
    PrintedDate   datetime    not null
);