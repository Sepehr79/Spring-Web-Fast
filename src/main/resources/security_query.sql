DROP DATABASE if EXISTS security_test;
CREATE DATABASE security_test;

use security_test;


DROP TABLE if EXISTS users;
create table users(
  	username varchar(50) not null,
    password varchar(68) not null,
    enabled tinyint(1) NOT null,
    PRIMARY KEY(username)
);

INSERT into users VALUES  
('john', '{bcrypt}$2a$10$s3E9hA7aibglpg6nBooOK.0sH0RzoTDi0WmfwLH1QLTUgYZCwUaQq', 1),
('mary', '{bcrypt}$2a$10$s3E9hA7aibglpg6nBooOK.0sH0RzoTDi0WmfwLH1QLTUgYZCwUaQq', 1),
('susan', '{bcrypt}$2a$10$s3E9hA7aibglpg6nBooOK.0sH0RzoTDi0WmfwLH1QLTUgYZCwUaQq', 1);


drop table if EXISTS authorities;
CREATE table authorities(
    username varchar(50) not null,
    authority varchar(50) not null,
    UNIQUE KEY authorities_idx_1(username,authority),
    CONSTRAINT authorites_ibfk_1 FOREIGN KEY(username) REFERENCES users(username)
    );
    
INSERT INTO authorities VALUES 
('john', 'ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('susan','ROLE_EMPLOYEE'),
('susan','ROLE_ADMIN');