CREATE TABLE actor
(
    a_id integer NOT NULL,
    name character(15) NOT NULL,
    CONSTRAINT actor_pkey PRIMARY KEY (a_id),
    CONSTRAINT actor_a_id_check CHECK (a_id >= 1 AND a_id <= 200000)
)

CREATE TABLE production_company
(
    pc_id integer NOT NULL,
    name character(10) NOT NULL,
    address character(30) COLLATE NOT NULL,
    CONSTRAINT production_company_pkey PRIMARY KEY (pc_id),
    CONSTRAINT production_company_pc_id_check CHECK (pc_id >= 1 AND pc_id <= 50000)
)




CREATE TABLE public.movie
(
    m_id integer NOT NULL,
    name character(10) NOT NULL,
    year integer NOT NULL,
    imdb_score real NOT NULL,
    pcompany_id integer NOT NULL,
    CONSTRAINT movie_pkey PRIMARY KEY (m_id)
)




CREATE TABLE casting
(
    m_id integer NOT NULL,
    a_id integer NOT NULL,
    CONSTRAINT pk_casting PRIMARY KEY (m_id, a_id),
    CONSTRAINT casting_a_id_fkey FOREIGN KEY (a_id)
        REFERENCES actor (a_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT casting_m_id_fkey FOREIGN KEY (m_id)
        REFERENCES movie (m_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

