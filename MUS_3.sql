create table if not exists Genre(
	id serial primary key, 
	name varchar(100) not null unique);

create table if not exists Artist (
	id serial primary key, 
	name varchar(100) not null, 
	nick_name varchar(100) unique);

create table if not exists Album (
	id serial primary key, 
	name varchar(100) not null unique, 
	year_of_release integer);

create table if not exists Track (
	id serial primary key, 
	name varchar(100) not null, 
	duration interval, 	
	album_id integer references Album(id));

create table if not exists Genre_Artist (
	id serial primary key, 
	artist_id integer references Artist(id), 
	genre_id integer references Genre(id));

create table if not exists Album_Artist(
	id serial primary key,
	album_id integer references Album(id),
	artist_id integer references Artist(id));
	
create table if not exists Collection(
	id serial primary key,
	name varchar(80) not null,
	year_of_release integer);

create table if not exists Collection_Track(
	id serial primary key,
	track_id integer references Track(id),
	collection_id integer references Collection(id));
	