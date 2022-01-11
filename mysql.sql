CREATE DATABASE my_blog;

USE my_blog;

CREATE TABLE Users (
    user_id int NOT NULL primary key auto_increment, 
    user_name varchar(100),
    user_password varchar(100),
    user_email varchar(100),
    user_registrade datetime,
    user_active tinyint
);

CREATE TABLE Post (
    post_id int NOT NULL primary key auto_increment ,
    post_url varchar(256),
    post_title varchar(256),
    post_img varchar(256),
    post_author_id int,
    post_content mediumtext COLLATE utf8mb4_bin,
    post_create_date datetime,
    post_modified_date datetime
);

insert into Users values (1, 'jhon', 'admin', 'zero.jhonatas@gmail.com', '2022-01-10T10:23:00', 1);

insert into Post values 
(
    1, 
    'localhost/carne_moida',
    'carne moida',
    'https://static.clubedaanamariabraga.com.br/wp-content/uploads/2019/05/carne-moida-1-1024x683.jpg', 
    1, 
    '2 colheres (sopa) de azeite de oliva
     2 colheres (sopa) de alho picado
     200 g de cebola picada
     1 kg de carne moída
     1 xícara (chá) de vinho tinto seco
     340 g de extrato de tomate
     tomilho, sálvia, manjericão picado, sal, Pimenta-do-reino
     Água quente', 
     '2022-01-10T10:25:00', 
     null
)