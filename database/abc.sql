CREATE TABLE `actor`
(
    `a_id` integer NOT NULL,
    `name` character(15) NOT NULL,
    CONSTRAINT `actor_pkey` PRIMARY KEY (a_id),
    CONSTRAINT `actor_a_id_check` CHECK (a_id >= 1 AND a_id <= 200000)
);



insert into `actor` values(1,'fuigehsruighsru');
insert into `actor` values(2,'fuigessruighsru');
insert into `actor` values(3,'fuigedaasighsru');
insert into `actor` values(4,'fussehsruighsru');



CREATE TABLE `movies`
(
    `m_id` integer NOT NULL,
    `name` character(10) NOT NULL,
    `year` integer NOT NULL,
    `imdb_score` real NOT NULL,
    `pcompany_id` integer NOT NULL,
    CONSTRAINT `movie_pkey` PRIMARY KEY (`m_id`)
);

insert into `movies` values(1,'fsef',2001,5.0,2);
insert into `movies` values(2,'fsedf',2013,4.0,3);








