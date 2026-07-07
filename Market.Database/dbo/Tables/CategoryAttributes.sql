create table CategoryAttributes   
(
    Id            int          not null primary key identity (1,1),
    CategoryId    int          not null references Categories (Id),
    AttributeName nvarchar(50) not null check (len(AttributeName) > 2),
    AttributeType tinyint      not null check (AttributeType in (1, 2, 3, 4)),
    OrderPosition int          not null default 0,
    IsActive      bit          not null default 1,
    CreatedDate    datetime     not null default getdate(),
    UpdatedDate   datetime     null,
    unique (CategoryId, AttributeName)
);