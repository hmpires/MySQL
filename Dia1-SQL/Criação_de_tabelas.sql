create table users (
	id int PRIMARY KEY NOT NULL auto_increment,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
	created_at varchar(255)
	);

create table profiles (
	id int primary key NOT NULL auto_increment,
	bio varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	user_id int
);

create table roles (
	id int PRIMARY KEY NOT NULL auto_increment,
	name varchar(255) NOT NULL
);

create table users_roles (
	user_id int ,
	role_id int
);




