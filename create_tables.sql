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
