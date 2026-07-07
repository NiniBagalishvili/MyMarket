create table Discounts    
(
    Id              int primary key identity (1,1),
    ProductId       int           references Products (Id),
    DiscountPercent money not null check (DiscountPercent > 0),
    StartDate       datetime      not null,
    EndDate         datetime      null,
    IsActive        bit           not null default 1,
    CreatedDate     datetime      not null default getdate(),
    UpdatedDate     datetime      null
);