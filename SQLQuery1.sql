create table Flats(
	Id int primary key not null,
	Price int not null,
	Mark float not null,
	[Floor] int not null,
	RoomsCount int not null,
	Area float not null,
	[Address] nvarchar(max) not null,
	IsRepairedCurrentYear bit not null,
	IsSold bit not null
);

create table Houses(
	Id int primary key not null,
	Price int not null,
	Mark float not null,
	DistanceToThe�ity int not null,
    WallsMaterial nvarchar(max) not null,
    FloorsCount int not null,
    [Address] nvarchar(max) not null,
    Area float not null,
    IsInfrastructure bit not null,
    IsGarage bit not null,
    IsWarehouse bit not null,
	IsSold bit not null
);

create table HouseFeedbacks (
	Id int primary key not null,
	[Text] nvarchar(max) not null,
	UserName nvarchar(max) not null,
	PublishDate nvarchar(max) not null,
	ProductId int not null,

	constraint FK_HouseFeedbacks_Houses foreign key(ProductId)
		references Houses(Id)
);

alter table FlatFeedbacks
add [Type] int not null default 0

create table FlatFeedbacks (
	Id int primary key not null,
	[Text] nvarchar(max) not null,
	UserName nvarchar(max) not null,
	PublishDate nvarchar(max) not null,
	ProductId int not null,

	constraint FK_FlatFeedbacks_Flats foreign key(ProductId)
		references Flats(Id)
);

alter table HouseFeedbacks
drop column [Type]



insert into HouseFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(1, '����', '������ ���!', '12.02.2020', 1);
insert into HouseFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(2, '����', '����� �������� ���, ���� �������!', '12.02.2020', 2);
insert into HouseFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(3, '�����', '������� �� ���!', '12.02.2020', 1);
insert into HouseFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(4, '�������', '�����!!', '12.02.2020', 2);
insert into HouseFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(5, '�����', '��� �����!', '12.02.2020', 3);

insert into FlatFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(1, '����', '������ ���!', '12.02.2020', 1);
insert into FlatFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(2, '����', '����� �������� ���, ���� �������!', '12.02.2020', 2);
insert into FlatFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(3, '�����', '������� �� ���!', '12.02.2020', 1);
insert into FlatFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(4, '�������', '�����!!', '12.02.2020', 2);
insert into FlatFeedbacks(Id, [Text], UserName, PublishDate, ProductId) values(5, '�����', '��� �����!', '12.02.2020', 3);

insert into Houses (Id, Price, Mark, DistanceToThe�ity, WallsMaterial, FloorsCount, Address, Area, IsInfrastructure, IsGarage, IsWarehouse, IsSold) values (1, 19026767, 4.9, 31, '��� ������', 2, '55153 Summer Ridge Junction', 149.0, 1, 0, 0, 0);
insert into Houses (Id, Price, Mark, DistanceToThe�ity, WallsMaterial, FloorsCount, Address, Area, IsInfrastructure, IsGarage, IsWarehouse, IsSold) values (2, 25908525, 2.2, 36, '�������� �����', 3, '4 Merchant Road', 231.7, 0, 0, 1, 0);
insert into Houses (Id, Price, Mark, DistanceToThe�ity, WallsMaterial, FloorsCount, Address, Area, IsInfrastructure, IsGarage, IsWarehouse, IsSold) values (3, 25698407, 1.3, 49, '��� ������', 1, '526 Dunning Park', 231.2, 1, 1, 0, 1);
insert into Houses (Id, Price, Mark, DistanceToThe�ity, WallsMaterial, FloorsCount, Address, Area, IsInfrastructure, IsGarage, IsWarehouse, IsSold) values (4, 27158407, 3.1, 64, '������', 2, '886 Menomonie Avenue', 212.7, 0, 0, 0, 1);
insert into Houses (Id, Price, Mark, DistanceToThe�ity, WallsMaterial, FloorsCount, Address, Area, IsInfrastructure, IsGarage, IsWarehouse, IsSold) values (5, 19202436, 1.4, 22, '������', 3, '59941 Union Crossing', 183.5, 1, 1, 0, 0);

insert into Flats (Id, Price, Mark, Floor, RoomsCount, Area, Address, IsRepairedCurrentYear, IsSold) values (1, 7589264, 1.2, 5, 3, 127.9, '26 Ridgeway Parkway', 0, 0);
insert into Flats (Id, Price, Mark, Floor, RoomsCount, Area, Address, IsRepairedCurrentYear, IsSold) values (2, 16376622, 1.8, 3, 1, 57.8, '4 Homewood Circle', 0, 1);
insert into Flats (Id, Price, Mark, Floor, RoomsCount, Area, Address, IsRepairedCurrentYear, IsSold) values (3, 15716254, 1.1, 1, 1, 118.9, '06 Mifflin Lane', 1, 0);
insert into Flats (Id, Price, Mark, Floor, RoomsCount, Area, Address, IsRepairedCurrentYear, IsSold) values (4, 8735985, 3.4, 18, 3, 139.4, '1 Shelley Crossing', 0, 0);
insert into Flats (Id, Price, Mark, Floor, RoomsCount, Area, Address, IsRepairedCurrentYear, IsSold) values (5, 7802547, 1.4, 9, 3, 54.3, '3075 Arizona Circle', 1, 1);

select * from Flats h
join FlatFeedbacks hf on hf.ProductId = h.Id
where h.Id = 1



select * from Flats

select * from FlatFeedbacks

select sourse.Id, sourse.ProductId, sourse.PublishDate, sourse.Text, sourse.UserName 
from FlatFeedbacks sourse 
join Flats ref on ref.Id = sourse.ProductId 
--where ref.Id = 2
order by sourse.Id
offset 3 rows fetch next 3 rows only