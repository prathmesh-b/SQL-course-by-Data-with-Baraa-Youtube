/* this script code is for backup suppose you do changes and
want to go back to original table created
so this is for backup
*/


-- Table: public.persons

-- DROP TABLE IF EXISTS public.persons;

CREATE TABLE IF NOT EXISTS public.persons
(
    id integer NOT NULL,
    person_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    birth_date date,
    phone character varying(15) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.persons
    OWNER to postgres;