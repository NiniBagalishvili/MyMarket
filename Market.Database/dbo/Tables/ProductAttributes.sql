create table ProductAttributes
(
    CategoryAttributeId int            not null references CategoryAttributes (Id),
    ProductId           int            not null references Products (Id),
    StringValue         nvarchar(50)   null,
    NumericValue        decimal(18, 2) null,
    BooleanValue        bit            null,
    DateValue           datetime       null,
    CreatedDate         datetime       not null default getdate(),
    UpdatedDate          datetime       null,
    primary key (ProductId, CategoryAttributeId)
);