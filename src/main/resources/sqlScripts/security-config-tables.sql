CREATE TABLE users (
    username varchar(50) not null ,
    password varchar(50) not null ,
    enabled tinyint(1) not null,

    primary key (username)

);

Insert into users
values
('john', '{noop}test123', 1),
('mary', '{noop}test123', 2),
('susan', '{noop}test123', 3);

create table authorities (
    username varchar(50) not null ,
    authority varchar(50) not null,

    unique key authorities_idx_1 (username, authority),

    constraint authorities_ibfk_1
    foreign key (username)
    references users (username)
);

insert into authorities
values (('john', 'ROLE_EMPLOYEE'),
        ('mary', 'ROLE_EMPLOYEE'),
        ('mary', 'ROLE_MANAGER'),
        ('susan', 'ROLE_EMPLOYEE'),
        ('susan', 'ROLE_MANAGER'),
        ('susan', 'ROLE_ADMIN'));
