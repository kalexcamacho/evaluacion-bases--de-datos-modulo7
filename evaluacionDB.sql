create database evaluacion_notas
use evaluacion_notas

create table users(
id int not null primary key auto_increment,
name text not null,
email text not null
)

create table notes(
id int not null primary key auto_increment,
title varchar(100) not null,
creation_date DATE null,
last_update_date DATE null,
description text not null,
can_be_deleted tinyint not null,
id_user int not null,
foreign key(id_user) references users(id)
)

create table categories(
id int not null primary key auto_increment,
name text not null
)

create table notes_categories(
id int not null primary key auto_increment,
id_note int not null,
foreign key(id_note) references notes(id),
id_category int not null,
foreign key(id_category) references categories(id)
)

insert into users (name, email) values
('Kevin Camacho', 'camachokevin34@email.com'),
('Danna Lozano', 'Danna@email.com'),
('Sandra Ferreira', 'sandra@email.com'),
('Karol Baez', 'karol@email.com'),
('Edgar Lozano', 'edgar@email.com'),
('Janeth Bernal', 'janeth@email.com'),
('Mauricio Baez', 'mauricio@email.com'),
('Kiara Lozano', 'kiara@email.com'),
('Diego Benitez', 'diego@email.com'),
('Alexandra Camacho', 'alexa@email.com')

insert into notes (title, creation_date, last_update_date, description, can_be_deleted, id_user) values
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 1),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 2),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 3),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 4),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 5),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 6),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 7),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 8),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 9),
('Lorem Ipsum', now(), now(), 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 10)

insert into categories (name) values
('perros'),
('gatos'),
('camionetas'),
('edificios'),
('termos'),
('computadores'),
('copitos'),
('camas'),
('discos'),
('equipos')

insert into notes_categories (id_note, id_category) values
(1,10),
(2,9),
(3,8),
(4,7),
(5,6),
(6,5),
(7,4),
(8,3),
(9,2),
(10,1)