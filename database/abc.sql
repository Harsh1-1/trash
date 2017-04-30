CREATE TABLE `actors`
(
    `id` integer NOT NULL,
    `name` varchar(15) NOT NULL,
    PRIMARY KEY ( `a_id`) 
);



insert into `actor` values(1,'fuigehsruighsru');
insert into `actor` values(2,'fuigessruighsru');
insert into `actor` values(3,'fuigedaasighsru');
insert into `actor` values(4,'fussehsruighsru');



CREATE TABLE `movies`
(
    `m_id` integer NOT NULL,
    `name` varchar(10) NOT NULL,
    `year` integer NOT NULL,
    `imdb_score` real NOT NULL,
    `pcompany_id` integer NOT NULL,
    CONSTRAINT `movie_pkey` PRIMARY KEY (`m_id`)
);

insert into `movies` values(1,'fsef',2001,5.0,2);
insert into `movies` values(2,'fsedf',2013,4.0,3);








