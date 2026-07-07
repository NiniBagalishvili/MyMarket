create table Categories
(
	Id			 int primary key identity(1,1),
	CategoryName nvarchar(100) not null unique check(len(CategoryName) > 2),
	Description	 nvarchar(500) null,
	ParentId	 int		   null,
	IsActive	 bit		   not null default 1,
	CreateDate	 datetime	   not null default getdate(),
	UpdatedDate  datetime	   null
);