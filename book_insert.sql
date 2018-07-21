use books2;

create table customers
	(customerid int unsigned not null auto_increment primary key,
	name char(50) not null,
	address char(100) not null,
	city char(30) not null);

create table orders
	(orderid int unsigned not null auto_increment primary key,
	customerid int unsigned not null,
	amount float(6,2),
	date date not null);

create table order_items
	(orderid int unsigned not null,
	isbn char(13) not null,
	amount int unsigned,
	primary key(orderid, isbn));

create table books
	(isbn char(13) not null primary key,
	author char(100) not null,
	title char(50) not null,
	price float(6, 2));

create table book_reviews
	(isbn char(13) not null primary key,
	review text);

insert into customers values
	(Null, "Julie Smith", '25 Oak Street', 'Airport West'),
	(Null, 'Alan Wong', '1/4 Haines Avenue', 'Box Hill'),
	(Null, 'Michelle Arthur', '357 North Road', 'Yarraville');

insert into orders values
	(Null, 1, 49.99, '2007-04-02'),
	(Null, 2, 74.98, '2007-04-19'),
	(Null, 3, 24.99, '2007-05-01'),
	(Null, 3, 69.96, '2007-04-02');

insert into order_items values
	(1, '0-672-31697-8', 2),
	(2, '0-672-31769-9', 1),
	(3, '0-672-31769-9', 1),
	(3, '0-672-31509-2', 1),
	(4, '0-672-31745-1', 3);

insert into book_reviews values
	('0-672-31697-8', 'The Morgan book is clearly written and goes well beyond most of the basic Java books out there.');

insert into books values
	('0-672-31745-1', 'Thomas Down', 'Installing Debian GNU/Linus(Other Sams)', 3.49),
	('0-672-31697-8', 'Morgan,Michael', 'Java 2 for Professional Developers', 5.18),
	('0-672-317699', 'Schenk,Thomas;Wilburn,Gene;', 'Caldera OpenLinux System Administration Unleashed(Unleashed)', 9.97),
	('0-672-31509-2', 'Joshua Pruitt,Ramona Pruitt', 'Sams Teach Yourself GIMP in 24 Hours', 9.80);
