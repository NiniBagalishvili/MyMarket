create table EmployeeRoles
(
    Id          int          not null primary key identity (1, 1),
    RoleName    nvarchar(50) not null,
    IsActive    bit          not null default 1,
    CreatedDate  datetime     not null default getdate(),
    UpdatedDate datetime     null
);
