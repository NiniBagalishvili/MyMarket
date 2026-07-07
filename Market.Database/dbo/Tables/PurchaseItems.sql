create table PurchaseItems
(
    PurchaseId int   not null references Purchases (Id),
    ProductId  int   not null references Products (Id),
    Quantity   int   not null,
    UnitPrice  money not null,
    primary key (PurchaseId, ProductId)
);