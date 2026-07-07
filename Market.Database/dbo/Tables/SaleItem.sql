create table SaleItems
(
    SaleId    int   not null references Sales (Id),
    ProductId int   not null references Products (Id),
    Quantity  int   not null,
    UnitPrice money not null,
    primary key (SaleId, ProductId)
);