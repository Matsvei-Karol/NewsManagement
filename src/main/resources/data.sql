alter table if exists comment
drop
constraint if exists FKbptqmm7bn3alb6htitgfrlt95;

alter table if exists comment
drop
constraint if exists FKd5joe15pg4yc3p8ndbn9vufvx;

alter table if exists news
drop
constraint if exists FKdufyrf386x0f2jb0a43ejbf18;

alter table if exists user_account
drop
constraint if exists FKgkw7ma4q3ir0loj4p2h7srfep;

drop table if exists comment cascade;

drop table if exists news cascade;

drop table if exists role cascade;

drop table if exists user_account cascade;

create table comment
(
    id              int8 generated by default as identity,
    text            varchar(50000),
    id_news         int8 not null,
    id_user_account int8 not null,
    primary key (id)
);

create table news
(
    id              int8 generated by default as identity,
    created_at      timestamp not null,
    updated_at      timestamp not null,
    text            varchar(50000),
    title           varchar(255),
    id_user_account int8,
    primary key (id)
);

create table role
(
    id   int8 generated by default as identity,
    name varchar(255) not null,
    primary key (id)
);

create table user_account
(
    id       int8 generated by default as identity,
    password varchar(255),
    username varchar(255),
    id_role  int8 not null,
    primary key (id)
);

alter table if exists role
drop
constraint if exists UK_8sewwnpamngi6b1dwaa88askk;

alter table if exists role
    add constraint UK_8sewwnpamngi6b1dwaa88askk unique (name);

alter table if exists user_account
drop
constraint if exists UK_castjbvpeeus0r8lbpehiu0e4;

alter table if exists user_account
    add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (username);

alter table if exists comment
    add constraint FKbptqmm7bn3alb6htitgfrlt95
    foreign key (id_news)
    references news
    on
delete
cascade;

alter table if exists comment
    add constraint FKd5joe15pg4yc3p8ndbn9vufvx
    foreign key (id_user_account)
    references user_account;

alter table if exists news
    add constraint FKdufyrf386x0f2jb0a43ejbf18
    foreign key (id_user_account)
    references user_account;

alter table if exists user_account
    add constraint FKgkw7ma4q3ir0loj4p2h7srfep
    foreign key (id_role)
    references role;



INSERT INTO "role" ("name")
VALUES ('admin'),
       ('journalist'),
       ('subscriber');

INSERT INTO user_account (username, "password", id_role)
VALUES ('admin', '$2y$12$KccPniKh/i1wrugsl00FtOWNwer0gr995RqvtYwnYqMSjkjJYLEGy', 1),
       ('journalist', '$2y$12$vnI7AIg1AzK3JLGQ26zVte1tEn5Uwd/KsWtzm7EtRgsMVrCz3s8G.', 2),
       ('subscriber', '$2y$12$TIOMhRZZy7qeBLvcxDyLReZOmBewOVZgT1zOipUcFmw1UEB2OLcau', 3);

INSERT INTO news (created_at, updated_at, "text", title, id_user_account)
VALUES (current_date, current_date, 'adminNewsText1', 'adminNewsTitle1', 1),
       (current_date, current_date, 'adminNewsText2', 'adminNewsTitle2', 1),
       (current_date, current_date, 'adminNewsText3', 'adminNewsTitle3', 1),
       (current_date, current_date, 'adminNewsText4', 'adminNewsTitle4', 1),
       (current_date, current_date, 'adminNewsText5', 'adminNewsTitle5', 1),
       (current_date, current_date, 'adminNewsText6', 'adminNewsTitle6', 1),
       (current_date, current_date, 'adminNewsText7', 'adminNewsTitle7', 1),
       (current_date, current_date, 'adminNewsText8', 'adminNewsTitle8', 1),
       (current_date, current_date, 'adminNewsText9', 'adminNewsTitle9', 1),
       (current_date, current_date, 'adminNewsText10', 'adminNewsTitle10', 1),
       (current_date, current_date, 'journalistNewsText1', 'journalistNewsTitle1', 2),
       (current_date, current_date, 'journalistNewsText2', 'journalistNewsTitle2', 2),
       (current_date, current_date, 'journalistNewsText3', 'journalistNewsTitle3', 2),
       (current_date, current_date, 'journalistNewsText4', 'journalistNewsTitle4', 2),
       (current_date, current_date, 'journalistNewsText5', 'journalistNewsTitle5', 2),
       (current_date, current_date, 'journalistNewsText6', 'journalistNewsTitle6', 2),
       (current_date, current_date, 'journalistNewsText7', 'journalistNewsTitle7', 2),
       (current_date, current_date, 'journalistNewsText8', 'journalistNewsTitle8', 2),
       (current_date, current_date, 'journalistNewsText9', 'journalistNewsTitle9', 2),
       (current_date, current_date, 'journalistNewsText10', 'journalistNewsTitle10', 2);

INSERT INTO "comment" ("text", id_news, id_user_account)
VALUES ('adminCommentText1', 1, 1),
       ('adminCommentText1', 1, 1),
       ('adminCommentText1', 1, 1),
       ('journalistCommentText1', 1, 2),
       ('journalistCommentText1', 1, 2),
       ('journalistCommentText1', 1, 2),
       ('subscriberCommentText1', 1, 3),
       ('subscriberCommentText1', 1, 3),
       ('subscriberCommentText1', 1, 3),
       ('subscriberCommentText1', 1, 3),

       ('adminCommentText2', 2, 1),
       ('adminCommentText2', 2, 1),
       ('adminCommentText2', 2, 1),
       ('journalistCommentText2', 2, 2),
       ('journalistCommentText2', 2, 2),
       ('journalistCommentText2', 2, 2),
       ('subscriberCommentText2', 2, 3),
       ('subscriberCommentText2', 2, 3),
       ('subscriberCommentText2', 2, 3),
       ('subscriberCommentText2', 2, 3),

       ('adminCommentText3', 3, 1),
       ('adminCommentText3', 3, 1),
       ('adminCommentText3', 3, 1),
       ('journalistCommentText3', 3, 2),
       ('journalistCommentText3', 3, 2),
       ('journalistCommentText3', 3, 2),
       ('subscriberCommentText3', 3, 3),
       ('subscriberCommentText3', 3, 3),
       ('subscriberCommentText3', 3, 3),
       ('subscriberCommentText3', 3, 3),

       ('adminCommentText4', 4, 1),
       ('adminCommentText4', 4, 1),
       ('adminCommentText4', 4, 1),
       ('journalistCommentText4', 4, 2),
       ('journalistCommentText4', 4, 2),
       ('journalistCommentText4', 4, 2),
       ('subscriberCommentText4', 4, 3),
       ('subscriberCommentText4', 4, 3),
       ('subscriberCommentText4', 4, 3),
       ('subscriberCommentText4', 4, 3),

       ('adminCommentText5', 5, 1),
       ('adminCommentText5', 5, 1),
       ('adminCommentText5', 5, 1),
       ('journalistCommentText5', 5, 2),
       ('journalistCommentText5', 5, 2),
       ('journalistCommentText5', 5, 2),
       ('subscriberCommentText5', 5, 3),
       ('subscriberCommentText5', 5, 3),
       ('subscriberCommentText5', 5, 3),
       ('subscriberCommentText5', 5, 3),

       ('adminCommentText6', 6, 1),
       ('adminCommentText6', 6, 1),
       ('adminCommentText6', 6, 1),
       ('journalistCommentText6', 6, 2),
       ('journalistCommentText6', 6, 2),
       ('journalistCommentText6', 6, 2),
       ('subscriberCommentText6', 6, 3),
       ('subscriberCommentText6', 6, 3),
       ('subscriberCommentText6', 6, 3),
       ('subscriberCommentText6', 6, 3),

       ('adminCommentText7', 7, 1),
       ('adminCommentText7', 7, 1),
       ('adminCommentText7', 7, 1),
       ('journalistCommentText7', 7, 2),
       ('journalistCommentText7', 7, 2),
       ('journalistCommentText7', 7, 2),
       ('subscriberCommentText7', 7, 3),
       ('subscriberCommentText7', 7, 3),
       ('subscriberCommentText7', 7, 3),
       ('subscriberCommentText7', 7, 3),

       ('adminCommentText8', 8, 1),
       ('adminCommentText8', 8, 1),
       ('adminCommentText8', 8, 1),
       ('journalistCommentText8', 8, 2),
       ('journalistCommentText8', 8, 2),
       ('journalistCommentText8', 8, 2),
       ('subscriberCommentText8', 8, 3),
       ('subscriberCommentText8', 8, 3),
       ('subscriberCommentText8', 8, 3),
       ('subscriberCommentText8', 8, 3),

       ('adminCommentText9', 9, 1),
       ('adminCommentText9', 9, 1),
       ('adminCommentText9', 9, 1),
       ('journalistCommentText9', 9, 2),
       ('journalistCommentText9', 9, 2),
       ('journalistCommentText9', 9, 2),
       ('subscriberCommentText9', 9, 3),
       ('subscriberCommentText9', 9, 3),
       ('subscriberCommentText9', 9, 3),
       ('subscriberCommentText9', 9, 3),

       ('adminCommentText10', 10, 1),
       ('adminCommentText10', 10, 1),
       ('adminCommentText10', 10, 1),
       ('journalistCommentText10', 10, 2),
       ('journalistCommentText10', 10, 2),
       ('journalistCommentText10', 10, 2),
       ('subscriberCommentText10', 10, 3),
       ('subscriberCommentText10', 10, 3),
       ('subscriberCommentText10', 10, 3),
       ('subscriberCommentText10', 10, 3);

