use coursework;
create table places(
	gPlusPlaceId decimal(21,0),
	name varchar,
	price varchar,
	address varchar,
	hours varchar,
	phone varchar,
	closed varchar)
row format delimited fields terminated by '\t';

create table reviews(
	gPlusPlaceId decimal(21,0),
	gPlusUserId decimal(21,0),
	rating double,
	reviewerName varchar,
	reviewText varchar,
	categories varchar,
	reviewTime varchar)
row format delimited fields terminated by '\t';

create table users(
	gPlusUserId decimal(21,0),
	username varchar,
	jobs varchar,
	currentPlace varchar,
	previousPlace varchar,
	education varchar)

row format delimited fields terminated by '\t';
	
