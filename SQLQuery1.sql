create database booklibrary;
create table auther
(
autherID int identity(1,1) Primary key,
autherName nvarchar(200) not null

);
create table Publishers
(
publishersID int identity (1,1) primary key,
PName nvarchar(100) not null,

);
create table Categories
(
categoriesID int identity(1,1) primary key,
categoreName nvarchar(100) not null,

);

create table book
(
bookID int identity(1,1) primary key,
titel nvarchar(100) not null,
Yearpubliued date not null,
seriseinfo nvarchar(100) not null,
publishersID int,
foreign key(publishersID) REFERENCES Publishers(PublishersID)
);
create table bookcategoris
(
bookID int  ,
categorisID int identity(1,1) ,
primary key(bookID,categorisID),
foreign key(bookID)references book(bookID),
foreign key (categorisID) references  Categories(categoriesID )
);
create table bookAutcher
(
bookID int ,
AuthorID int identity (1,1),
primary key(bookID,authorID),
foreign key (bookID)references book(bookID),
foreign key (AuthorID) references auther(autherID)
);
create table members
(
memberID int identity(1,1) primary key,
Mname nvarchar(100 ) not null,
addres nvarchar(100)not null,
datejoine date ,
IsPremium  nvarchar(50)
);
create table Librarians
(
LibrarianID int identity (1,1) primary key,
LName nvarchar(50) not null,
EmployeeID int not null,
EmployeeName nvarchar(50) not null,
workhours int not null,
);
create table borrwoing
(
borrwnoingID int identity(1,1) primary key,
borrwingdate date not null,
retrundate date not null,
bookID int,
memberID int,
LibrarianID int,
foreign key (bookID) REFERENCES book(bookID),
foreign key (memberID) references members(memberID),
foreign key (LibrarianID) references Librarians(LibrarianID)

);





