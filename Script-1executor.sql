create table if not exists genre (
id serial primary key,
gener_name varchar(60) not null
);

create table if not exists executor (
id serial primary key,
executor_name varchar(60) not null
);

create table if not exists genre_executor (
genre_id INTEGER references genre(id),
executor_id INTEGER references executor(id)
);

create table if not exists album (
id serial primary key,
album_name varchar(60) not null,
yar_of_relese INTEGER
);

create table if not exists album_executor (
executor_id INTEGER references executor(id),
album_id INTEGER references album(id)
);

create table if not exists track (
id serial primary key,
name_track varchar(60) not null,
duration INTEGER,
album_id INTEGER references album(id)
);

create table if not exists collection (
id serial primary key,
collection_name varchar(60) not null,
yar_of_relese INTEGER
);

create table if not exists collection_track (
track_id INTEGER references track(id),
collection_id INTEGER references collection(id)
);