create table base_de_dados.users (
	id int unsigned auto_increment NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
	created_at varchar(255),
	constraint users_pk PRIMARY KEY (id),
	constraint users_un_email unique KEY (email),
	constraint users_un_password unique KEY (password_hash)
	)
	ENGINE=InnoDB
	DEFAULT CHARSET=utf8mb4
	COLLATE=utf8mb4_unicode_ci;

create table base_de_dados.profiles (
	id int unsigned auto_increment NOT NULL,
	bio varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	user_id int unsigned NOT NULL,
	constraint profiles_pk PRIMARY KEY (id),
	constraint profiles_fk FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

create table base_de_dados.roles (
	id int unsigned auto_increment NOT NULL,
	name varchar(255) NOT NULL,
	constraint roles_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

create table base_de_dados.users_roles (
	user_id int unsigned NOT NULL,
	role_id int unsigned NOT NULL	,
	constraint users_roles_pk PRIMARY KEY (user_id,role_id),
	constraint users_roles_fk FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	constraint users_roles_fk_1 FOREIGN KEY (role_id) REFERENCES base_de_dados.roles(id) ON DELETE CASCADE ON UPDATE CASCADE	
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;




