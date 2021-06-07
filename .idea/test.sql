create table groups (
    id serial primary key,
    name varchar(40) not null unique
    );

create table groups_albums (
    id_group integer references groups (id),
    id_album integer references albums (id)
    );

create table groups_genre (
    id_group integer references groups (id),
    id_genre integer references genre_music (id)
    );

create table genre_music (
    id serial primary key,
    name varchar(40) not null,
    );

create table albums (
    id serial primary key,
    name varchar(40) not null,
    date timestamp not null,
    );

create table collections (
    id serial primary key,
    name varchar(40) not null,
    date timestamp not null
    );

create table track_list (
    id serial primary key,
    id_album integer references albums (id),
    name varchar(40) not null,
    duration time,
    );

create table track_collections (
    id_collections references collections (id),
    id_track references track_list (id)
    );
