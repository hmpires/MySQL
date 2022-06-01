ALTER TABLE base_de_dados.users DROP COLUMN created_at;
ALTER TABLE base_de_dados.users ADD created_at datetime DEFAULT now() NOT NULL;
ALTER TABLE base_de_dados.users ADD updated_at datetime DEFAULT now() on update now() NOT NULL;

ALTER TABLE base_de_dados.users_roles  ADD created_at datetime DEFAULT now() NOT NULL;
ALTER TABLE base_de_dados.users_roles  ADD updated_at datetime DEFAULT now() on update now() NOT NULL;
