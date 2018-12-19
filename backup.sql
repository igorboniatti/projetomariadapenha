--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_levels; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.access_levels (
    id bigint NOT NULL,
    name character varying,
    level integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.access_levels OWNER TO projetomariadapenha;

--
-- Name: access_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.access_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.access_levels_id_seq OWNER TO projetomariadapenha;

--
-- Name: access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.access_levels_id_seq OWNED BY public.access_levels.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.addresses (
    id bigint NOT NULL,
    public_place character varying,
    number character varying,
    neighborhood character varying,
    complement character varying,
    zip_code character varying,
    city character varying,
    federative_unit character varying,
    reference text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    latitude double precision,
    longitude double precision
);


ALTER TABLE public.addresses OWNER TO projetomariadapenha;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO projetomariadapenha;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: anonymous_denounciations; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.anonymous_denounciations (
    id bigint NOT NULL,
    occurrence_date date,
    uncertain_date character varying,
    location_type character varying,
    report text,
    address_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.anonymous_denounciations OWNER TO projetomariadapenha;

--
-- Name: anonymous_denounciations_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.anonymous_denounciations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anonymous_denounciations_id_seq OWNER TO projetomariadapenha;

--
-- Name: anonymous_denounciations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.anonymous_denounciations_id_seq OWNED BY public.anonymous_denounciations.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO projetomariadapenha;

--
-- Name: archives; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.archives (
    id bigint NOT NULL,
    name character varying,
    category_id bigint,
    description text,
    arch_file_name character varying,
    arch_content_type character varying,
    arch_file_size bigint,
    arch_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.archives OWNER TO projetomariadapenha;

--
-- Name: archives_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.archives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archives_id_seq OWNER TO projetomariadapenha;

--
-- Name: archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.archives_id_seq OWNED BY public.archives.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    link text,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO projetomariadapenha;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO projetomariadapenha;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: comentaries; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.comentaries (
    id bigint NOT NULL,
    date date,
    content text,
    publication_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comentaries OWNER TO projetomariadapenha;

--
-- Name: comentaries_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.comentaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentaries_id_seq OWNER TO projetomariadapenha;

--
-- Name: comentaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.comentaries_id_seq OWNED BY public.comentaries.id;


--
-- Name: doubts; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.doubts (
    id bigint NOT NULL,
    answer text,
    question_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.doubts OWNER TO projetomariadapenha;

--
-- Name: doubts_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.doubts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doubts_id_seq OWNER TO projetomariadapenha;

--
-- Name: doubts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.doubts_id_seq OWNED BY public.doubts.id;


--
-- Name: institutes; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.institutes (
    id bigint NOT NULL,
    name character varying,
    description text,
    note text,
    email character varying,
    attendance_locals text,
    phone_id bigint,
    address_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.institutes OWNER TO projetomariadapenha;

--
-- Name: institutes_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.institutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutes_id_seq OWNER TO projetomariadapenha;

--
-- Name: institutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.institutes_id_seq OWNED BY public.institutes.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    title character varying,
    description text,
    link character varying,
    "time" character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.news OWNER TO projetomariadapenha;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO projetomariadapenha;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: occurrence_bulletins; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.occurrence_bulletins (
    id bigint NOT NULL,
    occurrence_date date,
    uncertain_date character varying,
    location_type character varying,
    report text,
    person_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.occurrence_bulletins OWNER TO projetomariadapenha;

--
-- Name: occurrence_bulletins_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.occurrence_bulletins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.occurrence_bulletins_id_seq OWNER TO projetomariadapenha;

--
-- Name: occurrence_bulletins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.occurrence_bulletins_id_seq OWNED BY public.occurrence_bulletins.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.people (
    id bigint NOT NULL,
    name character varying,
    birth_date date,
    email character varying,
    phone_id bigint,
    address_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.people OWNER TO projetomariadapenha;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO projetomariadapenha;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: phones; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.phones (
    id bigint NOT NULL,
    country_code integer,
    ddd integer,
    number integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.phones OWNER TO projetomariadapenha;

--
-- Name: phones_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.phones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phones_id_seq OWNER TO projetomariadapenha;

--
-- Name: phones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.phones_id_seq OWNED BY public.phones.id;


--
-- Name: publications; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.publications (
    id bigint NOT NULL,
    title character varying,
    date date,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.publications OWNER TO projetomariadapenha;

--
-- Name: publications_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.publications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publications_id_seq OWNER TO projetomariadapenha;

--
-- Name: publications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.publications_id_seq OWNED BY public.publications.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    ask text,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.questions OWNER TO projetomariadapenha;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO projetomariadapenha;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO projetomariadapenha;

--
-- Name: sub_categories; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    name character varying,
    link text,
    status boolean,
    category_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sub_categories OWNER TO projetomariadapenha;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_categories_id_seq OWNER TO projetomariadapenha;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: projetomariadapenha
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying,
    password character varying,
    access_level_id bigint,
    person_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO projetomariadapenha;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: projetomariadapenha
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO projetomariadapenha;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetomariadapenha
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: access_levels id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.access_levels ALTER COLUMN id SET DEFAULT nextval('public.access_levels_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: anonymous_denounciations id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.anonymous_denounciations ALTER COLUMN id SET DEFAULT nextval('public.anonymous_denounciations_id_seq'::regclass);


--
-- Name: archives id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.archives ALTER COLUMN id SET DEFAULT nextval('public.archives_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: comentaries id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.comentaries ALTER COLUMN id SET DEFAULT nextval('public.comentaries_id_seq'::regclass);


--
-- Name: doubts id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.doubts ALTER COLUMN id SET DEFAULT nextval('public.doubts_id_seq'::regclass);


--
-- Name: institutes id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.institutes ALTER COLUMN id SET DEFAULT nextval('public.institutes_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: occurrence_bulletins id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.occurrence_bulletins ALTER COLUMN id SET DEFAULT nextval('public.occurrence_bulletins_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: phones id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.phones ALTER COLUMN id SET DEFAULT nextval('public.phones_id_seq'::regclass);


--
-- Name: publications id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.publications ALTER COLUMN id SET DEFAULT nextval('public.publications_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: sub_categories id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: access_levels; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.access_levels (id, name, level, created_at, updated_at) FROM stdin;
1	Administrador	1	2018-11-25 00:29:11.499805	2018-11-25 00:29:11.499805
2	Editor	2	2018-12-04 13:51:25.717923	2018-12-04 13:51:25.717923
3	Publicador	3	2018-12-04 13:52:05.282615	2018-12-04 13:52:05.282615
4	Policial	4	2018-12-04 13:52:46.128849	2018-12-04 13:52:46.128849
\.


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.addresses (id, public_place, number, neighborhood, complement, zip_code, city, federative_unit, reference, created_at, updated_at, latitude, longitude) FROM stdin;
1	Rua Pomerode	269-E	Cristo Rei		89801000	Chapecó	SC	Esquina com Pouso Redondo	2018-11-17 13:46:22.215855	2018-11-17 13:46:22.215855	\N	\N
2	Rua Uru	449-E	Efapi	Loteamento Tiago	89801-000	Chapecó	SC		2018-11-17 17:22:59.281853	2018-11-17 17:22:59.281853	\N	\N
3	Rua John Kennedy	1388-E	Líder		89805501	Chapecó	SC		2018-11-17 17:24:41.388573	2018-11-17 17:24:41.388573	\N	\N
4	Rua João Antunes de Almeida	386-D	Distrito de Marechal Bormann		89816-130	Chapecó	SC		2018-11-17 17:26:59.841907	2018-11-17 17:26:59.841907	\N	\N
5	Rua Lions Club	507-E	Seminário		89813-030	Chapecó	SC		2018-11-17 17:28:18.327861	2018-11-17 17:28:18.327861	\N	\N
6	Rua João Anselmo Santa Catarina	697-E	Presidente Médice		89806-210	Chapecó	SC		2018-11-17 17:30:25.788943	2018-11-17 17:30:25.788943	\N	\N
7	Rua Clevelândia	540D	Jardim Itália		89802405	Chapecó	SC		2018-12-05 16:35:35.172469	2018-12-05 16:35:35.172469	\N	\N
8	Rua Anselmo Santa Catarina	697E	Presidente Médici		89802100	Chapecó	SC		2018-12-05 16:37:43.989712	2018-12-05 16:37:43.989712	\N	\N
9	Rua Assis Brasil	140-E	Maria Goretti		8807-210	Chapecó	SC		2018-12-05 16:39:58.901868	2018-12-05 16:39:58.901868	\N	\N
10								Dispostos pela cidade.	2018-12-05 16:42:18.747059	2018-12-05 16:42:18.747059	\N	\N
11	Rua Pequim	79	Passo dos Fortes		89807210	Chapecó	SC	Plantão	2018-12-05 16:44:47.56959	2018-12-05 16:44:47.56959	\N	\N
12	Rua Porto Alegre	220	Centro	Sala 2o2	89807210	Chapecó	SC		2018-12-05 16:46:40.862297	2018-12-05 16:46:40.862297	\N	\N
13	Avenida Nereu Ramos	75-D	Centro	Salas 705/707	89807210	Chapecó	SC	Edifício CPC, 7º Andar	2018-12-05 16:50:22.22623	2018-12-05 16:50:22.22623	\N	\N
14	Duque de Caxias	119	Centro		89802420	Chapecó	SC		2018-12-05 16:53:22.169806	2018-12-05 16:53:22.169806	\N	\N
15	Rua Carlos Pinho	30-D	Centro		89807210	Chapecó	SC		2018-12-05 16:55:43.444124	2018-12-05 16:55:43.444124	\N	\N
16	Avenida Nereu Ramos	31	Centro		89801020	Chapecó	SC		2018-12-05 16:56:51.236619	2018-12-05 16:56:51.236619	\N	\N
17	Rua Assis Brasil	372-E	Maria Goretti		89805600	Chapecó	SC		2018-12-05 16:58:30.509491	2018-12-05 16:58:30.509491	\N	\N
\.


--
-- Data for Name: anonymous_denounciations; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.anonymous_denounciations (id, occurrence_date, uncertain_date, location_type, report, address_id, created_at, updated_at) FROM stdin;
1	2018-12-02	Perto das 18h	Apartamento	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum felis orci, condimentum a risus quis, condimentum feugiat magna. Proin nec interdum purus. Proin id gravida nibh. Quisque sit amet tempor massa, non tristique erat. Nunc at urna sem. In pretium orci lacus, ut dictum nisl scelerisque non. Proin malesuada ac augue ac dapibus. Nulla posuere dapibus dui sit amet ultricies. Nullam mollis tellus ante, quis semper dui luctus eget. Cras vel justo et libero convallis aliquam. Vestibulum non ullamcorper ligula, in sollicitudin erat. Nullam convallis posuere nisl eu congue. Quisque a neque non dui tristique tincidunt quis at lacus.\r\n\r\nCras mattis gravida fermentum. Suspendisse at rutrum metus, laoreet commodo nulla. Praesent at felis et eros mattis mollis. Integer maximus ultricies mi, vitae tempus ex imperdiet id. Duis at pharetra risus, at aliquam nisi. Cras scelerisque diam eleifend urna commodo euismod. Curabitur vel ex in orci efficitur tincidunt.\r\n\r\nMaecenas ac libero quis diam feugiat laoreet. Suspendisse risus arcu, rhoncus sit amet nisi eu, sodales mollis elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nec nibh maximus, consectetur enim nec, porttitor neque. Quisque porta orci id ultrices lobortis. Praesent ut odio ac sem suscipit consectetur. In luctus dictum est. Proin ac tortor eu sapien consectetur sollicitudin. In non ligula urna. Aenean pretium sapien ut feugiat sodales. Maecenas pellentesque porttitor purus, sit amet molestie sapien porttitor sit amet. Etiam gravida nisl non hendrerit pulvinar.\r\n\r\nNam in aliquet nibh. Aenean varius laoreet libero tincidunt tincidunt. Fusce tincidunt ligula ac felis iaculis vulputate. Donec nibh nisl, tincidunt a tortor non, fermentum aliquet nunc. Duis pharetra turpis in fringilla elementum. Donec eget eleifend lorem. Sed aliquet, ipsum quis tincidunt rutrum, dui diam aliquet tellus, ut fringilla nulla neque vitae dui. Donec sagittis pretium lorem eget elementum. Maecenas quis magna dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nProin laoreet eget lectus sit amet gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis ante orci, et porta purus facilisis ac. Nullam tincidunt dui vitae ligula auctor, eget ullamcorper neque elementum. Nullam dapibus tincidunt interdum. Duis tincidunt posuere scelerisque. Mauris ultricies eget ipsum quis elementum. Vivamus laoreet faucibus dui eget lacinia. Proin ligula orci, faucibus quis felis eu, sagittis faucibus ex. Maecenas a vulputate purus. Ut pellentesque ante pretium, scelerisque tortor in, pharetra nisl. Phasellus sit amet ultrices turpis. Nam diam odio, elementum sit amet nisl quis, finibus cursus diam. Ut id nulla pulvinar, eleifend mauris convallis, cursus risus. Maecenas ex magna, consequat eget imperdiet nec, euismod quis leo.\r\n\r\nCurabitur et tincidunt nisl. Integer ex lorem, bibendum at dolor at, mollis fermentum libero. Proin feugiat diam non justo aliquam, in auctor sapien laoreet. Maecenas molestie ultricies orci, nec finibus neque iaculis sit amet. Praesent dictum ipsum nec lectus facilisis, vitae placerat neque interdum. Etiam non nibh in quam pretium pharetra lobortis sit amet nisi. Suspendisse tempus venenatis magna quis venenatis. Aenean bibendum est non vulputate venenatis. Curabitur nisl odio, viverra in porttitor quis, molestie quis purus. Vivamus laoreet, ex a facilisis sollicitudin, leo lorem auctor velit, vel faucibus lectus sem ac enim. Quisque vitae metus vitae felis maximus dignissim. Vivamus malesuada consectetur tincidunt. Nullam vitae mi sit amet odio egestas vulputate. Etiam pellentesque vel eros quis pulvinar. Donec in vulputate velit, vitae tristique velit.\r\n\r\nNunc odio eros, efficitur gravida nunc vel, auctor ultricies mauris. Sed mollis nisi lorem. Duis feugiat sapien eu rutrum vulputate. Aenean blandit purus quis rutrum posuere. Aenean dignissim eros in felis venenatis, in rutrum neque finibus. Integer id massa vel diam facilisis egestas id eu ex. Nullam porta felis at purus eleifend viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut ac maximus diam, in consectetur sapien. Praesent tincidunt nibh ut velit varius commodo. In hac habitasse platea dictumst. Donec rhoncus ante pulvinar dapibus malesuada. Ut nec elit id dolor luctus accumsan. Maecenas semper sem id quam accumsan consectetur.\r\n\r\nNullam leo sem, vehicula ut urna in, facilisis accumsan lacus. Donec at sapien at arcu vestibulum volutpat sit amet eget dolor. Praesent sollicitudin porttitor lorem, vel faucibus ante. Donec molestie velit sed lacus euismod, ac ultrices felis elementum. Donec vel auctor risus. Nulla rhoncus eros libero, nec tristique ligula cursus eu. Donec tincidunt felis libero, quis faucibus nibh elementum semper.\r\n\r\nDonec ligula felis, tempor eget vehicula sit amet, commodo efficitur dui. Vestibulum id libero sed nibh sagittis laoreet. Ut eget urna lorem. Nunc tincidunt nisl tortor, eget egestas purus venenatis at. Sed iaculis augue vitae ligula feugiat faucibus. Curabitur faucibus hendrerit sem at lacinia. Phasellus enim urna, ornare in nisi nec, vehicula tempus enim. Morbi volutpat erat a mi blandit laoreet. Aliquam aliquet enim lectus, tristique ultricies velit rhoncus eu. Suspendisse ac nibh lobortis, dignissim neque quis, scelerisque libero. Vivamus rutrum dui nec mauris lobortis semper.\r\n\r\nSuspendisse sagittis finibus velit. Proin vulputate enim erat, in finibus ante malesuada dapibus. In vel imperdiet magna. Aenean eleifend nisi leo, quis malesuada est sagittis a. Aliquam nec sem vitae odio luctus pellentesque. Pellentesque erat turpis, iaculis a nunc sit amet, egestas porttitor libero. Nullam sem dolor, blandit vel magna sed, condimentum sodales nibh. Nullam id consectetur urna, et accumsan odio. Sed vel mi quis nisi accumsan blandit id id odio. Nam vulputate bibendum odio, eget porta velit. Cras gravida leo id erat commodo pharetra. Proin eu ornare tortor, vitae rhoncus nulla. Cras nec orci in tortor vestibulum eleifend. Etiam sollicitudin lobortis dui. Phasellus vel velit ultricies, tempus orci a, eleifend quam.	4	2018-12-04 22:52:35.337327	2018-12-04 22:52:35.337327
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-11-16 22:22:24.929251	2018-11-16 22:22:24.929251
\.


--
-- Data for Name: archives; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.archives (id, name, category_id, description, arch_file_name, arch_content_type, arch_file_size, arch_updated_at, created_at, updated_at) FROM stdin;
1	VAGA PARA REPRESENTANTE COMERCIAL	1	Requisitos: Ensino médio completo. Atribuições: Oportunidade para representante comercial no\r\nsegmento alimentício e bebidas. Necessário ter experiência na função, registro no core ou\r\ndisponibilidade para registrar.	Vaga_de_Representante_Comercial_em_Chapeco___SC__4174505___Trabalha_Brasil_-_SINE.pdf	application/pdf	90433	2018-11-16 22:35:52.356251	2018-11-16 22:35:52.383906	2018-11-16 22:35:52.383906
2	VAGA PARA TÉCNICO DE OPERAÇÕES DE RENDA FIXA E VARIÁVEL	1	Você deseja aumentar sua renda? estamos cadastrando pessoas para serem consultoras jequiti, é uma ótima oportunidade para ganhar um dinheiro extra.	Vaga_de_Representante_Comercial_em_Chapeco___SC__4174505___Trabalha_Brasil_-_SINE.pdf	application/pdf	90433	2018-11-16 23:00:09.912394	2018-11-16 23:00:09.916213	2018-11-19 12:43:26.942946
3	VAGA PARA ASSISTENTE ADMINISTRATIVO	1	Realizar atendimento ao cliente motorista proprietário; \r\n Efetuar abertura e fechamento do os;\r\n Realizar manuseio ao sistema da empresa;\r\n Manter o controle de entrada e saída do estoque;\r\n Apoiar a administração da filial; 	Vaga_de_Representante_Comercial_em_Chapeco___SC__4174505___Trabalha_Brasil_-_SINE.pdf	application/pdf	90433	2018-11-19 12:44:04.926337	2018-11-19 12:44:04.932715	2018-11-19 12:44:04.932715
4	VAGA PARA PROFESSOR DE ENSINO MÉDIO	1	O sesi de chapecó está com processo seletivo aberto para instrutor nível médio na área de robótica: Pré-requisitos:técnico completo em mecânica ou elétrica ou mecatrônica ou automação e experiência prática ou docência na área de mecânica ou elétrica ou mecatrônica ou automação. Inscrições até 19/11.	Vaga_de_Representante_Comercial_em_Chapeco___SC__4174505___Trabalha_Brasil_-_SINE.pdf	application/pdf	90433	2018-11-19 12:44:30.739446	2018-11-19 12:44:30.745704	2018-11-19 12:44:30.745704
5	VAGA PARA SUPERVISOR ADMINISTRATIVO	1	Habilidades: Profissional proativo, comunicação clara, flexibilidade, relação interpessoal, liderança e resiliência.\r\n \r\n Atividades:\r\n Supervisionar as atividades administrativas e de rh;\r\n \r\n Controle de planejamento orçamentário;\r\n Lançamento e acompanhamento de notas de despesas;	Vaga_de_Representante_Comercial_em_Chapeco___SC__4174505___Trabalha_Brasil_-_SINE.pdf	application/pdf	90433	2018-11-19 12:44:53.165183	2018-11-19 12:44:53.171066	2018-11-19 12:44:53.171066
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.categories (id, name, link, status, created_at, updated_at) FROM stdin;
1	VAGA DE EMPREGO		f	2018-11-16 22:30:38.407891	2018-11-16 22:30:38.407891
3	A LEI MARIA DA PENHA	http://www.planalto.gov.br/ccivil_03/_Ato2004-2006/2006/Lei/L11340.htm	t	2018-12-04 22:57:39.459468	2018-12-04 22:57:39.459468
4	TIRA-DÚVIDAS	http://localhost:3000/doubts	t	2018-12-04 22:57:52.685187	2018-12-04 22:57:52.685187
5	PUBLICAÇÕES	http://localhost:3000/publications	t	2018-12-04 22:58:06.265867	2018-12-04 22:58:06.265867
6	REDES DE ATENDIMENTO	http://localhost:3000/institutes	t	2018-12-04 22:58:19.429981	2018-12-04 22:58:19.429981
7	LINKS ÚTEIS	http://localhost:3000/archives	t	2018-12-04 22:58:32.96626	2018-12-04 22:58:32.96626
8	SOBRE O PROJETO	http://localhost:3000/about	t	2018-12-04 22:58:46.145201	2018-12-04 22:58:46.145201
\.


--
-- Data for Name: comentaries; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.comentaries (id, date, content, publication_id, created_at, updated_at) FROM stdin;
1	\N	A primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocupar	4	2018-11-17 13:34:48.546864	2018-11-17 13:34:48.546864
2	\N	A primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocuparA primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocupar	3	2018-11-17 13:34:54.96755	2018-11-17 13:34:54.96755
3	\N	A primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocuparA primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocupar	2	2018-11-17 13:35:04.562069	2018-11-17 13:35:04.562069
4	\N	A primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocuparA primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocuparA primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocupar	3	2018-11-17 13:35:16.487636	2018-11-17 13:35:16.487636
5	2018-11-30	TESTE	1	2018-11-30 21:31:32.894973	2018-11-30 21:31:32.894973
6	2018-11-30	TESTE	1	2018-11-30 21:31:58.797229	2018-11-30 21:31:58.797229
7	2018-12-03	teste	4	2018-12-03 18:08:00.755144	2018-12-03 18:08:00.755144
8	2018-12-03	teste	1	2018-12-03 18:31:25.207956	2018-12-03 18:31:25.207956
9	2018-12-03	teste	1	2018-12-03 18:31:45.786164	2018-12-03 18:31:45.786164
10	2018-12-03	teste	1	2018-12-03 18:32:26.192247	2018-12-03 18:32:26.192247
11	2018-12-03	teste	1	2018-12-03 18:32:57.484207	2018-12-03 18:32:57.484207
12	2018-12-03	teste	1	2018-12-03 18:33:04.392071	2018-12-03 18:33:04.392071
40	\N	WOW, que legal!!!	4	2018-12-05 17:00:31.002124	2018-12-05 17:00:31.002124
41	\N	SHOWWWW, Apresentando o TCC!!!!	4	2018-12-05 20:48:54.085989	2018-12-05 20:48:54.085989
42	\N	Apresentação Monografia =D	4	2018-12-06 11:47:51.391811	2018-12-06 11:47:51.391811
43	\N	Apresentação do TCC!!!	4	2018-12-06 16:32:02.991431	2018-12-06 16:32:02.991431
\.


--
-- Data for Name: doubts; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.doubts (id, answer, question_id, created_at, updated_at) FROM stdin;
3	<p>Violência doméstica e familiar contra a mulher caracteriza-se pelos diversos tipos de violência, sendo qualquer ação ou omissão baseada no gênero, ou seja, quando uma pessoa é agredida por ser mulher pelo sexo oposto (homem) ou mesmo sexo outra (mulher), que lhe cause morte, lesão, sofrimento físico, sexual ou psicológico e dano moral ou patrimonial.</p>\r\n<p>Esses crimes violam os direitos humanos da mulher.</p>	3	2018-11-25 02:20:23.60103	2018-11-25 02:20:23.60103
4	<p>É qualquer ato de agressão praticada sobre o corpo da mulher.</p>\r\n<p><b>Exemplos:</b> pode ocorre por meio de empurrões, queimaduras, mordidas, chutes, socos; pelo uso de armas brancas ou de fogo etc.</p>	4	2018-11-25 02:21:31.789939	2018-11-25 02:21:31.789939
5	<p>Entendida como qualquer conduta que lhe cause dano emocional e diminuição da auto-estima ou que lhe prejudique e perturbe o pleno desenvolvimento ou que vise degradar ou controlar suas ações, comportamentos, crenças e decisões, mediante ameaça, constrangimento, humilhação, manipulação, isolamento, vigilância constante, perseguição contumaz, insulto, chantagem, ridicularização, exploração e limitação do direito de ir e vir ou qualquer outro meio que lhe cause prejuízo à saúde psicológica e à autodeterminação.</p>\r\n\r\n<p><b>Exemplos:</b> proibir a mulher de escolher uma religião, de ter contato com a família, de ter amigos; xingamento na presença dos familiares; desrespeitos físicos como: chamar de gorda, magra; ameaças como: falar para a mulher que em caso de separação a guarda vai ficar com o\r\npai, que caso decida ir embora perderá o direito ao bens móveis e imóveis etc.</p>	6	2018-11-25 16:43:56.706275	2018-11-25 16:43:56.706275
6	<p>Entendida como qualquer conduta que a constranja a presenciar, a manter ou a participar de relação sexual não desejada, mediante intimidação, ameaça, coação ou uso da força; que a induza a comercializar ou a utilizar, de qualquer modo, a sua sexualidade, que a impeça de usar qualquer método contraceptivo ou que a force ao matrimônio, à gravidez, ao aborto ou à prostituição, mediante coação, chantagem, suborno ou manipulação; ou que limite ou anule o exercício de seus direitos sexuais e reprodutivos;</p>\r\n\r\n<p><b>Exemplos:</b> sexo sob pressão (a vítima não querendo); sexo forçado fisicamente; sexo acompanhado de violência; sexo forçado com outras pessoas; sexo que as vítimas julgam ofensivo; sexo com palavras de baixo-calão/ofensivas; sentir sexo violento etc.</p>	7	2018-11-25 16:45:23.553957	2018-11-25 16:45:23.553957
7	<p>Entendida como qualquer conduta que configure retenção, subtração, destruição parcial ou total de seus objetos, instrumentos de trabalho, documentos pessoais, bens, valores e direitos ou recursos econômicos, incluindo os destinados a satisfazer suas necessidades;</p>\r\n\r\n<p><b>Exemplos:</b> destruição parcial ou total de objetos seus, instrumentos de trabalho, documentos pessoais, bens. Podem ser aqui enquadrados casos em que a mulher, por medo, coagida ou induzida a erro, transfere bens ao agressor.</p>	8	2018-11-25 16:46:25.075803	2018-11-25 16:46:25.075803
8	É qualquer conduta que configure calúnia, difamação ou injúria. Ocorre nos casos em que\r\na mulher for caluniada, difamada ou injuriada pelo marido ou companheiro, e sempre que a\r\nconduta violenta for praticada, no espaço de uma relação doméstica ou familiar.	9	2018-11-25 16:46:40.520662	2018-11-25 16:46:40.520662
9	Sim. A Lei afirma que a violência doméstica e familiar pode ocorrer em qualquer relação\r\nintima de afeto, e não depende do tempo que o relacionamento aconteceu ou durou, isto é, a\r\nmulher que sofrer agressão depois que tiver encerrado seu relacionamento com ex-marido, ex-\r\n-namorado, ex-noivo, ex-ficante está amparada pela Lei Maria da Penha que é aplicada às\r\npessoas casadas, amasiadas, conviventes, ex namorados, “ficantes” (pessoas que têm relação\r\nafetiva esporádica) e mulheres que têm relação afetiva com pessoas do mesmo sexo.	10	2018-11-25 16:46:52.230311	2018-11-25 16:46:52.230311
10	Sim. A Lei pode ser aplicada também em casos de violência doméstica com relação a\r\nparentes próximos como: pai, irmãos, filhos, netos, netas, genros noras, sobrinha etc.	11	2018-11-25 16:47:05.642963	2018-11-25 16:47:05.642963
11	O primeiro passo é fazer a denúncia na Delegacia da Mulher ou qualquer outra delegacia,\r\ndenunciar os atos dele Registrando Boletim de Ocorrência, pedindo medida protetiva para que\r\nele não se aproxime e não mantenha contato e seja afastado do Lar.	12	2018-11-25 16:47:18.806862	2018-11-25 16:47:18.806862
12	Na delegacia da mulher ou em qualquer delegacia de policia que você denunciar, fazendo\r\no Boletim de Ocorrência, o delegado informará que é seu direito ser encaminhada para a Casa\r\nAbrigo para mulheres vitimas de violência doméstica junto com suas filhas e filhos menores de\r\n18 anos, até que o Juiz conceda as medidas protetivas medida protetiva para que ele não se\r\naproxime e não mantenha contato e seja afastado do Lar.	13	2018-11-25 16:47:34.551897	2018-11-25 16:47:34.551897
13	Na delegacia da mulher ou em qualquer delegacia de policia que você denunciar fazendo\r\no Boletim de Ocorrência, deverá pedir para o delegado que encaminha ao juiz pedido de\r\nsuspensão do direito de visitas sobre os filhos, e que conceda as medidas protetivas medida\r\nprotetiva para que ele não se aproxime e não mantenha contato com os menores.	14	2018-11-25 16:47:48.046827	2018-11-25 16:47:48.046827
14	Na delegacia da mulher ou em qualquer delegacia de policia que você denunciar fazendo\r\no Boletim de Ocorrência, deverá pedir para o delegado que encaminha ao juiz e que conceda as\r\nmedidas protetivas medida protetiva para que ele não se aproxime e não mantenha contato com\r\nos familiares.	15	2018-11-25 16:48:00.136348	2018-11-25 16:48:00.136348
15	Você deve denunciar os atos dele registrando Boletim de Ocorrência junto Delegacia da\r\nMulher ou qualquer Delegacia de Policia e pedindo medida protetiva para que ele não se\r\naproxime e não mantenha contato.	16	2018-11-25 16:48:10.788653	2018-11-25 16:48:10.788653
16	Você deve denunciar os atos dele registrando Boletim de Ocorrência junto Delegacia da\r\nMulher ou qualquer Delegacia de Policia. Existem outras formas de comprovar a violência além\r\ndas evidências físicas, como a palavra da vítima e testemunhas.	17	2018-11-25 16:48:25.246272	2018-11-25 16:48:25.246272
17	Os sinais que se apresentam são: baixa autoestima, sinais de depressão, isolamento social\r\nda família e amigos, distúrbios alimentares, hematomas e síndrome do pânico.	18	2018-11-25 16:48:38.042664	2018-11-25 16:48:38.042664
18	Recomenda-se pedir socorro e/ou procurar refúgio e auxílio de vizinhos ou outras\r\npessoas, essas atitudes podem reduzir ou fazer cessar a agressão no momento da ocorrência. As\r\npessoas que viram a violência podem servir de testemunhas caso a vítima faça a denuncia.	19	2018-11-25 16:48:51.17894	2018-11-25 16:48:51.17894
\.


--
-- Data for Name: institutes; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.institutes (id, name, description, note, email, attendance_locals, phone_id, address_id, created_at, updated_at) FROM stdin;
1	CRAS CRISTO REI	CENTRO DE REFERÊNCIA DE ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00	crascristorei@chapeco.sc.gov.br	Bairro Cristo Rei, Bairro Eldorado, Bairro Belvedere, Bairro Bela Vista, Bairro Trevo, Bairro Alvorada, Bairro Engenho Braun, Bairro São Cristóvão, Água Santa, Colônia Cella, Sede Figueira, Lajeado São José, Linha Cascavel, Linha Sarapião, Linha Tormen, Linha Pinheiro, Comunidade Vila Nova, Linha Sperotto, Loteamento Espelho das Águas, Comunidade Maria Bianck.	1	1	2018-11-17 13:46:50.28079	2018-11-17 13:46:50.28079
2	CRAS EFAPI	CENTRO DE REFERÊNCIA DE ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00	crasefapi@chapeco.sc.gov.br	Bairro Efapi: Loteamento Alta  Floresta, Loteamento Aurora, Loteamento Nova Aurora, Loteamento Colatto,  Loteamento Colina do Sol, Loteamento Dona Rita, Loteamento Jardim do Lago, Loteamento Juliana, Loteamento Parati, Loteamento Sereno Soprana, Loteamento Tiago, Loteamento Universidade, Loteamento Zanrosso, Linha Cabeceira da  Antinha, Linha Cabeceira da Divisa, Linha Cascalheiro, Linha Simoneto, Linha Faxinal  dos Rosas, Distrito do Alto da  Serra,  Linha Tomazelli, Linha Pedro e Paulo, Linha Boa Vista, Linha Cabeceira da Barragem,  Linha Campinas II, Linha Batistelo, Loteamento Parque das Mansões, Loteamento Dom Leonardo, Loteamento New Villas.	2	2	2018-11-17 17:23:02.100097	2018-11-17 17:23:02.100097
3	CRAS LÍDER	CENTRO DE REFERÊNCIA DE ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00	craslider@chapeco.sc.gov.br	Bairro Passo dos Fortes (Loteamento Dom Fabiano, Loteamentos Walville I e II), Rodeio Bonito, Bairro Líder, Bairro Vila Real (Loteamentos Desbravador I e II), Santa Paulina, Linha Caravágio, Vila Militar, Santa Lúzia, Bairro Vila Rica.	3	3	2018-11-17 17:24:42.786602	2018-11-17 17:24:42.786602
4	CRAS MARECHAL BORMANN	CENTRO DE REFERÊNCIA EM ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00.	crasborman@chapeco.sc.gov.br	Distritos de Marechal Bormann e Goio-Ên: Barra da Chalana, Barra do Carneiro, Beira Rio, Bom Retiro, Linha Almeida, Linha Alto Capinzal, Linha Cachoeira, Linha Campinas, Linha Cerne, Linha São Francisco, Linha São José do Capinzal, Linha Saquetti, Linha Vailon, Passo Ferreira, Rodeio do Herval, Serraria Reato, Linha Serrinha, Tope da Serra, Linha Gamelão, Rondinha e Linha Goiabal, Loteamentos Nova Vida I e II, Loteamento Scheffer, Linha Henrique, Linha Martins de Quadros, Linha Nossa Senhora de Lourdes, Núcleo Hortifrutigranjeiro, Vila Aurora.	4	4	2018-11-17 17:27:01.070868	2018-11-17 17:27:01.070868
5	CRAS SEMINÁRIO	CENTRO DE REFERÊNCIA EM ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00.	crasseminario@chapeco.sc.gov.br	Bairro Universitário (Loteamento Dom José Gomes), Bairro Palmital, Bairro Esplanada, Bairro Seminário (Loteamento Aline, Bem Viver e São Francisco), Bairro Jardim Itália, Bairro Quedas do Palmital, Bairro Saic, Bairro Santo Antônio, Palmital dos Fundos, Água Amarela, Gramadinho, Lajeado Veríssimo, Linha das Palmeiras, Linha Pequena, Linha São Rafael, Monte Alegre, Praia Bonita, Santa Maria, São Vedelino, Rodeio Chato, Bairro Campestre, Bairro Dom Pascoal, Bairro Industrial, Bairro Progresso (Loteamento Expoente, Loteamento Monte Castelo), Bairro Santos Dumont.	5	5	2018-11-17 17:28:24.94414	2018-11-17 17:28:24.94414
6	CRAS SÃO PEDRO	CENTRO DE REFERÊNCIA EM ASSISTÊNCIA SOCIAL (CRAS)	Dias e Horário de Atendimento: de segunda a sexta-feira das 8:00 às 12:00  às 13:00 às 17:00.	crassp@chapeco.sc.gov.br	Bairro Boa Vista, Bairro Bom Pastor, Bairro Maria Goretti, Bairro Presidente Médici, Bairro São Pedro, Linha Monte Belo, Linha Baronesa da Limeira, Linha Independência, Linha Irani, Linha São Pedro A, Linha São Pedro B, Vila Zonta, Linha São Roque, Linha Sede Trentin, Linha Tafona, Bairro Paraíso, Bairro Pinheirinho, Linha Pinhalzinho.	6	6	2018-11-17 17:30:27.006736	2018-11-17 17:30:27.006736
7	CREAS I	CENTRO DE REFERÊNCIA ESPECIALIZADOS DE ASSISTÊNCIA SOCIAL\r\n(CREAS)	HORÁRIOS DE ATENDIMENTO: de segunda a sexta-feira das 8:00 às 12:00 às 13:00 às\r\n17:00.	creas1@chapeco.sc.gov.br	Localidades próximas.	7	7	2018-12-05 16:35:37.28569	2018-12-05 16:35:37.28569
8	CREAS II	CENTRO DE REFERÊNCIA ESPECIALIZADOS DE ASSISTÊNCIA SOCIAL\r\n(CREAS)	HORÁRIOS DE ATENDIMENTO: de segunda a sexta-feira das 8:00 às 12:00 às 13:00 às 17:00.	creas2@chapeco.sc.gov.br	Localidades próximas	8	8	2018-12-05 16:37:45.936594	2018-12-05 16:37:45.936594
9	DPCAMI	DELEGACIA DE PROTEÇÃO À CRIANÇA, ADOLESCENTE, MULHER E IDOSO	Horários de atendimento variáveis.	dpcamichapeco@pc.sc.gov.br	Localidades próximas.	9	9	2018-12-05 16:40:01.244567	2018-12-05 16:40:01.244567
10	POLÍCIA MILITAR/GUARDIÃO MARIA DA PENHA	POLÍCIA MILITAR/GUARDIÃO MARIA DA PENHA	Horários de atendimento variados.	Sem email cadastrado. Fone de Emergência: 190	Localidades próximas.	10	10	2018-12-05 16:42:20.803622	2018-12-05 16:42:20.803622
11	CENTRAL DE PLANTÃO POLICIAL	CENTRAL DE PLANTÃO POLICIAL	Horários de atendimento variados.	Sem email cadastrado.	Localidades próximas.	11	11	2018-12-05 16:44:49.477077	2018-12-05 16:44:49.477077
12	GRUPO REFLEXIVO DE MULHERES COSTURANDO SENTIMENTOS	GRUPO REFLEXIVO DE MULHERES	Horários de atendimento variáveis.	Sem email cadastrado.	Localidades próximas.	12	12	2018-12-05 16:46:42.270904	2018-12-05 16:46:42.270904
13	CMDM	CONSELHO MUNICIPAL DOS DIREITOS DA MULHER	Horários de atendimento variados.	conselhos@chapeco.sc.gov.br.	Localidades próximas.	13	13	2018-12-05 16:50:28.823805	2018-12-05 16:50:28.823805
14	GAPA	GRUPO DE APOIO E PREVENÇÃO A AIDS	Horários de atendimento variáveis.	Sem email cadastrado.	Localidades próximas.	14	14	2018-12-05 16:54:12.414956	2018-12-05 16:54:12.414956
15	BALÇÃO MUNICIPAL DE EMPREGOS	BALÇÃO MUNICIPAL DE EMPREGOS	Horários de atendimento variados.	Sem email cadastrado	Localidades próximas.	15	15	2018-12-05 16:55:44.747829	2018-12-05 16:55:44.747829
16	SINE BALÇÃO DE EMPREGOS	SINE BALÇÃO DE EMPREGOS	Horários de atendimento variados.	Sem email cadastrado.	Localidades próximas.	16	16	2018-12-05 16:56:53.571024	2018-12-05 16:56:53.571024
17	REDE FEMININA DE COMBATE AO CÂNCER	REDE FEMININA DE COMBATE AO CÂNCER	Horários de atendimento variados.	Sem email cadastrado.	Localidades próximas.	17	17	2018-12-05 16:58:32.534908	2018-12-05 16:58:32.534908
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.news (id, title, description, link, "time", created_at, updated_at) FROM stdin;
1	Emerj promove Seminário Internacional Gênero e Direito – RJ, 6 e 7/12/2018	Especialistas de diferentes países vão se reunir na EMERJ (Escola de Magistratura do Estado do Rio de Janeiro) para debater Gênero e Direito: Desafios para a Despatriarcalização do Sistema de Justiça na América Latina.	http://www.compromissoeatitude.org.br/emerj-promove-seminario-internacional-genero-e-direito-rj-6-e-7122018/	4 12 2018	2018-12-04 23:05:43.960088	2018-12-04 23:05:43.960088
2	Assista ao vivo: Instituto Avon promove A CASA, em prol do enfrentamento à violência contra a mulher – SP/SP, 4 a 10/12/2018	Evento vai de 4 a 10 de dezembro e acontece na Casa Mulheres do Brasil, próximo ao Metrô Paraíso, em São Paulo.\r\n\r\nDe 4 a 10 de dezembro, em São Paulo, A CASA, concebida pelo Instituto Avon em parceria com Promundo, vai reunir agentes, atores e iniciativas com um objetivo em comum, a promoção de uma sociedade mais igualitária, justa e livre das violências contra as mulheres. A programação acontece na Casa Mulheres do Brasil, onde profissionais abordarão temas como saúde, empreendedorismo, assédio, participação política, entre outros assuntos importantes.	http://www.compromissoeatitude.org.br/assista-ao-vivo-instituto-avon-promove-casa-em-prol-do-enfrentamento-violencia-contra-mulher-spsp-4-10122018/	4 12 2018	2018-12-04 23:06:03.667515	2018-12-04 23:06:03.667515
3	Raquel Dodge recebe representantes de entidades europeias de combate à violência contra as mulheres	A presidente do Conselho Nacional do Ministério Público (CNMP) e procuradora-geral da República, Raquel Dodge, se reuniu, na manhã desta segunda-feira, três de dezembro, com representantes de entidades europeias de referência no combate à violência contra a mulher, para compartilhar experiências nas áreas de prevenção desse crime e proteção às vítimas. A representante da Peripherie na Áustria, Doris Kapeller, e a secretária-geral do Lobby Europeu de Mulheres na Espanha, Maria Teresa Nevado Bueno, visitaram a Procuradoria-Geral da República (PGR), em Brasília, para conhecer o trabalho do Ministério Público Federal (MPF) e falar sobre os atuais desafios e boas práticas adotadas em seus países. Pela tarde, Kapeller e Nevado Bueno estiveram no CNMP para visitar o conselheiro Valter Shuenquener, presidente da Comissão de Defesa dos Direitos Fundamentais (CDDF), a fim de entender a atuação dessa comissão.	http://www.compromissoeatitude.org.br/raquel-dodge-recebe-representantes-de-entidades-europeias-de-combate-violencia-contra-as-mulheres/	4 12 2018	2018-12-04 23:06:20.620377	2018-12-04 23:06:20.620377
4	Casa da Mulher Brasileira de Boa Vista/RR contará com equipe da ONU Mulheres	Foi realizada nesta segunda-feira (03), a cerimônia de inauguração da Casa da Mulher Brasileira de Boa Vista (RR), localizada na região central do bairro São Vicente. A abertura oficial da Casa foi conduzida pela secretária nacional de Políticas para Mulheres do Ministério dos Direitos Humanos (MDH), Andreza Colatto, e a secretária do Trabalho e Bem-Estar Social do estado, Emília Campos. Em discurso, as representantes do Governo Federal e estadual destacaram a importância da instalação da unidade no estado, que apresenta os maiores índices de violência contra a mulher no Brasil, de acordo com o Mapa da Violência.	http://www.compromissoeatitude.org.br/casa-da-mulher-brasileira-de-boa-vistarr-contara-com-equipe-da-onu-mulheres/	4 12 2018	2018-12-04 23:06:39.977329	2018-12-04 23:06:39.977329
5	MDH, CNMP e CNJ assinam acordo para aprimorar mecanismos de prevenção de violência contra mulheres	Ministério dos Direitos Humanos (MDH), o Conselho Nacional do Ministério Público (CNMP) e o Conselho Nacional de Justiça (CNJ) assinam na próxima quarta-feira, 5 de dezembro, acordo de cooperação para implementar um formulário nacional de avaliação de risco para a prevenção e o enfrentamento de crimes praticados no contexto de violência doméstica e familiar contra a mulher.	http://www.compromissoeatitude.org.br/mdh-cnmp-e-cnj-assinam-acordo-para-aprimorar-mecanismos-de-prevencao-de-violencia-contra-mulheres/	3 12 2018	2018-12-04 23:07:03.240542	2018-12-04 23:07:03.240542
6	TJMS homenageia os vencedores do 1º Prêmio de Jornalismo ComunicAÇÃO pela Igualdade de Gênero	Uma solenidade diferente. Prestigiada por quem tem o poder de mudar opiniões, quem leva a informação para milhares de pessoas, nos mais longínquos locais de todo o país. Assim foi a cerimônia de entrega da premiação do 1º Prêmio de Jornalismo do Tribunal de Justiça de MS que teve a ComunicAÇÃO pela Igualdade de Gênero.	http://www.compromissoeatitude.org.br/tjms-homenageia-os-vencedores-do-1o-premio-de-jornalismo-comunicacao-pela-igualdade-de-genero/	30 11 2018	2018-12-04 23:07:21.616174	2018-12-04 23:07:21.616174
7	Casa da Mulher Brasileira de Boa Vista (RR) será inaugurada nesta segunda-feira (3)	Nesta segunda-feira (03), será realizada a cerimônia de inauguração da Casa da Mulher Brasileira (CMB) de Boa Vista, em Roraima. O serviço permite a integração de instituições que atuam no processo de enfrentamento à violência contra a mulher e maior humanização no atendimento. A CMB, que foi projetada para atender até 200 pessoas por hora, se trata da principal ação do Programa Mulher, Viver sem Violência, desenvolvido pelo Ministério dos Direitos Humanos (MDH), por meio da Secretaria Nacional de Políticas para Mulheres (SNPM).	http://www.compromissoeatitude.org.br/casa-da-mulher-brasileira-de-boa-vista-rr-sera-inaugurada-nesta-segunda-feira-3/	30 11 2018	2018-12-04 23:07:38.529318	2018-12-04 23:07:38.529318
8	Justiça pela Paz em Casa: Juíza Maria Aparecida Cury participa de evento da ASGORR (TJRR – 30/11/2018)	A juíza Maria Aparecida Cury, titular do 1ª Juizado de Violência Doméstica do Tribunal de Justiça de Roraima, coordenadora das ações de Combate a Violência Doméstica e Familiar e a pedagoga da Coordenadoria Estadual de Violência Doméstica e Familiar, Aurilene Moura, participaram na tarde desta sexta-feira (30), da “IV Jornada de Ginecologia e Obstetrícia de Roraima” realizada no SEBRAE-RR. A Iniciativa é da associação de Ginecologia de Roraima-ASGORR.	http://www.compromissoeatitude.org.br/justica-pela-paz-em-casa-juiza-maria-aparecida-cury-participa-de-evento-da-asgorr-tjrr-30112018/	30 11 2018	2018-12-04 23:07:52.542186	2018-12-04 23:07:52.542186
10	Justiça Federal é competente para analisar ameaça cometida em rede social por residente no exterior (STJ – 28/11/2018)	A Terceira Seção do Superior Tribunal de Justiça (STJ) estabeleceu a competência da Justiça Federal para julgar caso de crime de ameaça em que o suposto agressor, que vive nos Estados Unidos, teria utilizado a rede social Facebook para ameaçar uma ex-namorada residente no Brasil.	http://www.compromissoeatitude.org.br/justica-federal-e-competente-para-analisar-ameaca-cometida-em-rede-social-por-residente-no-exterior/	28 11 2018	2018-12-04 23:08:24.352141	2018-12-04 23:08:24.352141
9	Juizado Itinerante da Lei Maria da Penha encerra Semana da Justiça pela Paz em Casa com mais de 40 atendimentos (TJES – 30/11/2018)	Os atendimentos foram realizados no ônibus rosa, em frente ao Fórum da Prainha, em Vila Velha.\r\n\r\nO encerramento da 12° edição da Semana Nacional Justiça pela Paz em Casa no Espírito Santo aconteceu nesta sexta-feira, 30, às 17 horas. A mobilização, que acontece em todo o país, foi realizada pelo Tribunal de Justiça do Estado, por meio da Coordenadoria da Violência Doméstica e Familiar.	http://www.compromissoeatitude.org.br/juizado-itinerante-da-lei-maria-da-penha-encerra-semana-da-justica-pela-paz-em-casa-com-mais-de-40-atendimentos-tjes-30112018/	30 11 2018	2018-12-04 23:08:10.592547	2018-12-04 23:11:32.069253
11	Números da Violência contra a mulher aumentam	Mesmo com legislação específica, a violência contra a mulher ainda é um problema em todo país. A omissão da denúncia por parte das mulheres é um dos fatores que dificulta a atuação dos órgãos competentes na punição do crime.	https://www.mpsc.mp.br/noticias/numeros-da-violencia-contra-a-mulher-aumentam-	26/11/2015	2018-12-04 23:30:31.292824	2018-12-04 23:30:31.292824
12	ENFRENTAMENTO À VIOLÊNCIA DOMÉSTICA E FAMILIAR CONTRA A MULHER	Até pouco tempo, a violência doméstica contra a mulher era considerada um assunto de interesse privado e exclusivo da família. Mas não é mais assim. A sociedade evoluiu e com ela a legislação aplicada ao tema. Porém, quando o perigo está dentro de casa, o enfrentamento é mais difícil; o medo de denunciar as agressões sofridas é maior.	https://www.mpsc.mp.br/campanhas/enfrentamento-a-violencia-domestica-e-familiar-contra-a-mulher		2018-12-04 23:30:54.302833	2018-12-04 23:30:54.302833
13	Violência contra mulheres: saiba como agir	Neste Dia Internacional da Mulher, o MPSC traz uma matéria especial sobre dados e serviços prestados à sociedade para o enfrentamento da violência contra as mulheres.	https://www.mpsc.mp.br/noticias/violencia-contra-mulheres-saiba-como-agir	7/3/2014	2018-12-04 23:31:12.16069	2018-12-04 23:31:12.16069
14	Promotora orienta sobre o combate à violência contra a mulher	A Promotora de Justiça Helen Crystine Corrêa Sanches explica os tipos de agressão à que as mulheres estão sujeitas em seus lares, local onde deveriam estar mais seguras.	https://mpsc.mp.br/noticias/promotora-orienta-sobre-o-combate-a-violencia-contra-a-mulher	21/6/2017	2018-12-04 23:31:34.122245	2018-12-04 23:31:34.122245
15	TJ e MP assinam convênio para ampliar proteção à mulher vítima de violência doméstica	O acordo foi assinado na última segunda-feira e será colocado em prática ainda este ano nas comarcas da Capital, Jaraguá do Sul e Imbituba de forma experimental.	https://www.mpsc.mp.br/noticias/tj-e-mp-assinam-convenio-para-ampliar-protecao-a-mulher-vitima-de-violencia-domestica	20/11/2018	2018-12-04 23:31:50.212551	2018-12-04 23:31:50.212551
16	MPSC cria Grupo de Enfrentamento à Violência contra a Mulher	O Grupo tem como objetivo promover a atuação articulada dos órgãos do Ministério Público na defesa e proteção dos direitos das mulheres em situação de violência doméstica e familiar, por meio da implementação de ações e projetos voltados à efetivação da Lei Maria da Penha.	https://www.mpsc.mp.br/noticias/mpsc-cria-grupo-de-enfrentamento-a-violencia-contra-a-mulher	11/4/2016	2018-12-04 23:32:09.99055	2018-12-04 23:32:09.99055
17	Assinado pacto para prevenir e combater a violência contra mulher	O termo de compromisso do Pacto Estadual Maria da Penha foi assinado entre MPSC e diversas instituições estaduais e municipais e tem como objetivo coibir, prevenir, punir e erradicar a violência doméstica e familiar contra as mulheres.	https://www.mpsc.mp.br/noticias/assinado-pacto-para-prevenir-e-combater-a-violencia-contra-mulher	7/3/2018	2018-12-04 23:32:34.348447	2018-12-04 23:32:34.348447
18	MPSC debate violência contra a mulher e divulga parceria com TJ/SC	Em seminário que ocorre durante quinta e sexta-feira (29 e 30/11), foi anunciado um Acordo de Cooperação técnica com o Tribunal de Justiça para dar mais efetividade às medidas protetivas de urgência.	https://www.mpsc.mp.br/noticias/mpsc-debate-violencia-contra-a-mulher-e-divulga-parceria-com-tjsc	29/11/2018	2018-12-04 23:32:49.05583	2018-12-04 23:32:49.05583
19	Programa de proteção à mulher passa a trabalhar de forma mais integrada na Capital	A Patrulha Maria da Penha da Rede Catarina, iniciativa da Polícia Militar implementada na Capital em parceria com o Ministério Público de Santa Catarina, agora fará registros de atendimento de forma online e integrada entre Batalhões de Polícia da cidade.\r\n	https://www.mpsc.mp.br/noticias/programa-de-protecao-a-mulher-passa-a-trabalhar-de-forma-mais-integrada-na-capital	20/7/2018	2018-12-04 23:33:30.790207	2018-12-04 23:33:30.790207
20	Mulher é condenada a 20 anos de reclusão por latrocínio em Videira	Denunciada pelo Ministério Público de Santa Catarina (MPSC) no final de fevereiro deste ano por crime de latrocínio (art. 157, § 3º, do Código Penal), cometido no dia 2 do mesmo mês, Sandra de Fátima Evangelista, 21 anos, foi condenada a 20 anos de reclusão, em regime integralmente fechado, e 15 dias-multa.	https://mpsc.mp.br/noticias/mulher-e-condenada-a-20-anos-de-reclusao-por-latrocinio-em-videira	12/7/2005	2018-12-04 23:33:44.598417	2018-12-04 23:33:44.598417
21	Conheça a atuação do MPSC na defesa dos direitos das mulheres	Apesar de leis específicas para proteger as mulheres da violência de gênero, como a Lei Maria da Penha e a Lei do Feminicídio, muito ainda precisa ser feito. Por isso o Ministério Público de Santa Catarina (MPSC) promove ações e participa de campanhas para coibir os crimes contra a mulher.	https://www.mpsc.mp.br/noticias/conheca-a-atuacao-do-mpsc-na-defesa-dos-direitos-das-mulheres	8/3/2016	2018-12-04 23:34:00.421436	2018-12-04 23:34:00.421436
22	MPSC debate em seminário a violência contra mulher	O Ministério Público de Santa Catarina (MPSC) realizará em Gaspar nos dias 17, 18 e 19 do mês de agosto o "I Seminário Municipal de Políticas para Mulheres: 10 anos da Lei Maria da Penha, e agora?". O evento servirá para debater a violência de gênero, os avanços no enfrentamento e as dificuldades na implementação integral da Lei Maria da Penha. O período de inscrições encerra-se nesta terça-feira (16/08). Clique aqui e inscreva-se.	https://www.mpsc.mp.br/noticias/mpsc-debate-em-seminario-a-violencia-contra-mulher	 15/8/2016	2018-12-04 23:34:18.060159	2018-12-04 23:34:18.060159
23	TJ e MP assinam convênio para ampliar proteção à mulher vítima de violência doméstica	MPSC notícias: O acordo foi assinado na última segunda-feira e será colocado em prática ainda este ano nas comarcas da Capital, Jaraguá do Sul e Imbituba de forma experimental.	https://www.mpsc.mp.br/radio-mpsc/tj-e-mp-assinam-convenio-para-ampliar-protecao-a-mulher-vitima-de-violencia-domestica-		2018-12-04 23:34:31.082872	2018-12-04 23:34:31.082872
\.


--
-- Data for Name: occurrence_bulletins; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.occurrence_bulletins (id, occurrence_date, uncertain_date, location_type, report, person_id, created_at, updated_at) FROM stdin;
1	2018-12-02	Anteontem	Apartamento	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum felis orci, condimentum a risus quis, condimentum feugiat magna. Proin nec interdum purus. Proin id gravida nibh. Quisque sit amet tempor massa, non tristique erat. Nunc at urna sem. In pretium orci lacus, ut dictum nisl scelerisque non. Proin malesuada ac augue ac dapibus. Nulla posuere dapibus dui sit amet ultricies. Nullam mollis tellus ante, quis semper dui luctus eget. Cras vel justo et libero convallis aliquam. Vestibulum non ullamcorper ligula, in sollicitudin erat. Nullam convallis posuere nisl eu congue. Quisque a neque non dui tristique tincidunt quis at lacus.\r\n\r\nCras mattis gravida fermentum. Suspendisse at rutrum metus, laoreet commodo nulla. Praesent at felis et eros mattis mollis. Integer maximus ultricies mi, vitae tempus ex imperdiet id. Duis at pharetra risus, at aliquam nisi. Cras scelerisque diam eleifend urna commodo euismod. Curabitur vel ex in orci efficitur tincidunt.\r\n\r\nMaecenas ac libero quis diam feugiat laoreet. Suspendisse risus arcu, rhoncus sit amet nisi eu, sodales mollis elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nec nibh maximus, consectetur enim nec, porttitor neque. Quisque porta orci id ultrices lobortis. Praesent ut odio ac sem suscipit consectetur. In luctus dictum est. Proin ac tortor eu sapien consectetur sollicitudin. In non ligula urna. Aenean pretium sapien ut feugiat sodales. Maecenas pellentesque porttitor purus, sit amet molestie sapien porttitor sit amet. Etiam gravida nisl non hendrerit pulvinar.\r\n\r\nNam in aliquet nibh. Aenean varius laoreet libero tincidunt tincidunt. Fusce tincidunt ligula ac felis iaculis vulputate. Donec nibh nisl, tincidunt a tortor non, fermentum aliquet nunc. Duis pharetra turpis in fringilla elementum. Donec eget eleifend lorem. Sed aliquet, ipsum quis tincidunt rutrum, dui diam aliquet tellus, ut fringilla nulla neque vitae dui. Donec sagittis pretium lorem eget elementum. Maecenas quis magna dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nProin laoreet eget lectus sit amet gravida. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis ante orci, et porta purus facilisis ac. Nullam tincidunt dui vitae ligula auctor, eget ullamcorper neque elementum. Nullam dapibus tincidunt interdum. Duis tincidunt posuere scelerisque. Mauris ultricies eget ipsum quis elementum. Vivamus laoreet faucibus dui eget lacinia. Proin ligula orci, faucibus quis felis eu, sagittis faucibus ex. Maecenas a vulputate purus. Ut pellentesque ante pretium, scelerisque tortor in, pharetra nisl. Phasellus sit amet ultrices turpis. Nam diam odio, elementum sit amet nisl quis, finibus cursus diam. Ut id nulla pulvinar, eleifend mauris convallis, cursus risus. Maecenas ex magna, consequat eget imperdiet nec, euismod quis leo.\r\n\r\nCurabitur et tincidunt nisl. Integer ex lorem, bibendum at dolor at, mollis fermentum libero. Proin feugiat diam non justo aliquam, in auctor sapien laoreet. Maecenas molestie ultricies orci, nec finibus neque iaculis sit amet. Praesent dictum ipsum nec lectus facilisis, vitae placerat neque interdum. Etiam non nibh in quam pretium pharetra lobortis sit amet nisi. Suspendisse tempus venenatis magna quis venenatis. Aenean bibendum est non vulputate venenatis. Curabitur nisl odio, viverra in porttitor quis, molestie quis purus. Vivamus laoreet, ex a facilisis sollicitudin, leo lorem auctor velit, vel faucibus lectus sem ac enim. Quisque vitae metus vitae felis maximus dignissim. Vivamus malesuada consectetur tincidunt. Nullam vitae mi sit amet odio egestas vulputate. Etiam pellentesque vel eros quis pulvinar. Donec in vulputate velit, vitae tristique velit.\r\n\r\nNunc odio eros, efficitur gravida nunc vel, auctor ultricies mauris. Sed mollis nisi lorem. Duis feugiat sapien eu rutrum vulputate. Aenean blandit purus quis rutrum posuere. Aenean dignissim eros in felis venenatis, in rutrum neque finibus. Integer id massa vel diam facilisis egestas id eu ex. Nullam porta felis at purus eleifend viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut ac maximus diam, in consectetur sapien. Praesent tincidunt nibh ut velit varius commodo. In hac habitasse platea dictumst. Donec rhoncus ante pulvinar dapibus malesuada. Ut nec elit id dolor luctus accumsan. Maecenas semper sem id quam accumsan consectetur.\r\n\r\nNullam leo sem, vehicula ut urna in, facilisis accumsan lacus. Donec at sapien at arcu vestibulum volutpat sit amet eget dolor. Praesent sollicitudin porttitor lorem, vel faucibus ante. Donec molestie velit sed lacus euismod, ac ultrices felis elementum. Donec vel auctor risus. Nulla rhoncus eros libero, nec tristique ligula cursus eu. Donec tincidunt felis libero, quis faucibus nibh elementum semper.\r\n\r\nDonec ligula felis, tempor eget vehicula sit amet, commodo efficitur dui. Vestibulum id libero sed nibh sagittis laoreet. Ut eget urna lorem. Nunc tincidunt nisl tortor, eget egestas purus venenatis at. Sed iaculis augue vitae ligula feugiat faucibus. Curabitur faucibus hendrerit sem at lacinia. Phasellus enim urna, ornare in nisi nec, vehicula tempus enim. Morbi volutpat erat a mi blandit laoreet. Aliquam aliquet enim lectus, tristique ultricies velit rhoncus eu. Suspendisse ac nibh lobortis, dignissim neque quis, scelerisque libero. Vivamus rutrum dui nec mauris lobortis semper.\r\n\r\nSuspendisse sagittis finibus velit. Proin vulputate enim erat, in finibus ante malesuada dapibus. In vel imperdiet magna. Aenean eleifend nisi leo, quis malesuada est sagittis a. Aliquam nec sem vitae odio luctus pellentesque. Pellentesque erat turpis, iaculis a nunc sit amet, egestas porttitor libero. Nullam sem dolor, blandit vel magna sed, condimentum sodales nibh. Nullam id consectetur urna, et accumsan odio. Sed vel mi quis nisi accumsan blandit id id odio. Nam vulputate bibendum odio, eget porta velit. Cras gravida leo id erat commodo pharetra. Proin eu ornare tortor, vitae rhoncus nulla. Cras nec orci in tortor vestibulum eleifend. Etiam sollicitudin lobortis dui. Phasellus vel velit ultricies, tempus orci a, eleifend quam.\r\n\r\nAliquam erat volutpat. Cras feugiat tempus erat, elementum porta justo sodales et. Aenean a pharetra purus, at porta sem. In vitae mi magna. Sed egestas, odio nec tincidunt placerat, quam eros ultricies neque, cursus dignissim velit eros sit amet est. Donec diam magna, scelerisque sit amet molestie id, ullamcorper non lectus. Sed id viverra lorem.\r\n\r\nCras ultrices sollicitudin felis, a ullamcorper metus lacinia at. Pellentesque velit nibh, fringilla ac pellentesque eget, tincidunt sit amet nibh. Praesent suscipit malesuada urna eu aliquam. Mauris ut malesuada orci, nec lobortis ipsum. Sed non eros mattis, gravida nisi quis, tempor urna. Praesent volutpat nunc leo, aliquet vehicula sapien rhoncus quis. Phasellus eleifend sed ligula ut mollis. Cras aliquet, ligula eget consectetur euismod, libero erat pharetra felis, non tempor ligula arcu ut arcu. Phasellus iaculis pretium ipsum, sed condimentum urna tempor et. Integer non gravida turpis, non mattis nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer vel pellentesque velit.\r\n\r\nPellentesque dapibus non quam facilisis vestibulum. Nam sit amet aliquam orci. Pellentesque eu ultricies enim. Donec pharetra, libero scelerisque gravida lobortis, tortor ipsum molestie turpis, eget aliquam mauris sapien in dolor. Cras molestie risus metus, sed tincidunt massa elementum a. Vestibulum euismod nisl eu egestas porttitor. Pellentesque ullamcorper sapien eget mi pulvinar congue. Donec pellentesque tortor eu nulla mollis luctus. Proin ornare molestie rhoncus. Donec quis purus mattis nisl molestie mattis quis tincidunt quam. Fusce tempus eros ac dui efficitur pulvinar. Phasellus non vulputate lorem.\r\n\r\nUt in volutpat lorem. Praesent rhoncus sem sit amet orci sodales rutrum. Donec sem neque, tincidunt id blandit eget, molestie ut urna. Suspendisse maximus id tortor a consequat. Fusce sed lorem id ante euismod accumsan non sit amet nibh. Quisque bibendum auctor ultrices. Curabitur quis felis risus.\r\n\r\nDonec quis laoreet quam. Phasellus vehicula cursus tempus. Mauris vitae urna quis nisi pellentesque feugiat. Fusce orci nisi, fringilla at arcu ut, malesuada blandit purus. Aliquam arcu diam, bibendum eget lorem vitae, semper consectetur nisi. Nunc consectetur suscipit ante, id sodales massa. Cras egestas iaculis lectus, ut faucibus turpis pulvinar nec. Ut bibendum vitae erat vel tempor. Praesent molestie urna enim, eget vestibulum libero cursus dictum. Curabitur id velit eu velit semper vehicula sed eu odio. Proin id eros lacus.	1	2018-12-04 21:44:59.547889	2018-12-04 21:44:59.547889
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.people (id, name, birth_date, email, phone_id, address_id, created_at, updated_at) FROM stdin;
1	Igor Felipe Boniatti	1997-10-07	igorboniatti@unochapeco.edu.br	1	1	2018-11-25 00:29:41.552513	2018-12-04 13:50:10.925627
\.


--
-- Data for Name: phones; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.phones (id, country_code, ddd, number, created_at, updated_at) FROM stdin;
1	55	49	33313016	2018-11-17 13:45:26.273481	2018-11-17 13:45:26.273481
2	54	49	33239338	2018-11-17 17:22:02.404967	2018-11-17 17:22:02.404967
3	55	49	33246126	2018-11-17 17:24:01.513544	2018-11-17 17:24:01.513544
4	55	49	33292421	2018-11-17 17:26:08.946446	2018-11-17 17:26:08.946446
5	55	49	33225551	2018-11-17 17:27:50.880491	2018-11-17 17:27:50.880491
6	55	54	33229163	2018-11-17 17:29:10.104102	2018-11-17 17:29:10.104102
7	55	54	33221948	2018-12-05 16:34:57.310087	2018-12-05 16:34:57.310087
8	55	49	33293572	2018-12-05 16:36:34.112111	2018-12-05 16:36:34.112111
9	55	49	20497874	2018-12-05 16:39:26.398053	2018-12-05 16:39:26.398053
10	55	49	999902929	2018-12-05 16:41:31.861249	2018-12-05 16:41:31.861249
11	55	49	33240004	2018-12-05 16:43:26.920757	2018-12-05 16:43:26.920757
12	55	49	30257072	2018-12-05 16:46:06.771488	2018-12-05 16:46:06.771488
13	55	49	20499264	2018-12-05 16:48:24.646384	2018-12-05 16:48:24.646384
14	55	49	33238830	2018-12-05 16:51:17.08772	2018-12-05 16:51:17.08772
15	55	49	999852217	2018-12-05 16:55:18.716974	2018-12-05 16:55:18.716974
16	54	49	33239409	2018-12-05 16:56:19.258179	2018-12-05 16:56:19.258179
17	55	49	33235634	2018-12-05 16:58:04.537771	2018-12-05 16:58:04.537771
18	55	54	999999999	2018-12-19 12:40:58.710102	2018-12-19 12:40:58.710102
\.


--
-- Data for Name: publications; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.publications (id, title, date, content, created_at, updated_at) FROM stdin;
4	Quando Cileide achava que nada mais ia mudar, tudo mudou	2018-11-14	<p class="card-text">No dia em que a lei Maria da Penha entrou em vigor, em 2006, pernambucana denunciou agressor. Segundo ONU Mulheres, 17% das nordestinas já foram agredidas alguma vez</p><p class="card-text">"Eu acho até bom contar minha história, porque chega mais longe, chega em mais pessoas que vivem o que eu vivi", começa dizendo Cileide Cristina da Silva, que por muito tempo sentiu na pele o fato de ter nascido mulher e pobre em uma cidade do nordeste do Brasil. "Outro dia eu e minha filha estávamos olhando que eu tenho dois perfumes fechados. Aí eu lembrei que ele dizia que mulher que usava perfume era para 'botar gaia' [trair]. Minha filha não podia usar creme no cabelo, ele dizia para colocar óleo de cozinha. Hoje a gente ter um perfume fechado é muito, sabe? E faz a gente pensar em coisas que já passou", prossegue. "Ele" é seu ex-marido Francisco, que durante duas décadas agrediu Cileide de todas as formas possíveis.</p><p class="card-text">Mas na manhã de um sábado de dezembro de 2017, em uma barraca que fica embaixo de uma passarela no acostamento da rodovia BR-101, Cileide trabalha tranquila. Vende água de coco, amendoim, biscoitos e frutas para os motoristas que passam por lá, na altura do município de Cabo Santo Agostinho, região metropolitana do Recife (Pernambuco). Sua jornada é longa e vai até o fim do dia, mas ela tem a certeza de que, ao chegar em casa, poderá dormir em paz. Há 11 anos, quando achava que nada mais ia mudar, tudo mudou: encontrou o apoio de um centro de mulheres da cidade, juntou coragem e denunciou seu algoz. Fez isso no mesmo dia em que a lei Maria da Penha entrou em vigor. "No dia 22 de setembro de 2006 aconteceu tudo", diz ela.</p><p class="card-text">Cileide, hoje com 48 anos, é considerada a primeira mulher a usufruir da lei Maria da Penha no Brasil, essencial para romper o ciclo de violência ao qual estava submetida. Sua história é a mesma de outras milhões de mulheres que sofrem nas mãos de homens e demonstra a importância de uma legislação que aumentou o rigor das punições sobre os crimes praticados contra elas. Mas ainda que represente um avanço no combate à violência de gênero no país, ela não impediu que, nos últimos 12 meses, 11% das mulheres nordestinas fossem vítimas de violência psicológica, 5% de agressões físicas e 2% de estupro no contexto doméstico e familiar, segundo um estudo divulgado em novembro deste ano pela ONU Mulheres. Elaborado pela Universidade Federal do Ceará (UFC) em parceria com o Instituto Maria da Penha e o Institute for Advanced Study in Toulouse, o documento, que foca na região Nordeste, também revelou que 17% das mulheres nordestinas foram agredidas fisicamente pelo menos uma vez na vida.</p><p class="card-text">Cabo de Santo Agostinho (200.000 habitantes), a cidade onde ainda mora Cileide, registrou nove feminicídios em 2016 e oito até julho de 2017, segundo dados da Secretaria de Defesa Social de Pernambuco reunidos pela ONG Centro Mulheres do Cabo. O município, que é o décimo mais violento do país segundo o Atlas da Violência do IPEA, está em sexto lugar no ranking de cidades de Pernambuco mais violentas para mulheres. Em todo o Estado, 280 feminicídios foram registrados em 2016 e 181 até julho deste ano.</p><p class="card-text">O estudo da ONU Mulheres também revela uma transmissão da violência entre gerações: quatro de cada dez mulheres nordestinas que cresceram em um lar violento sofreram o mesmo tipo de violência na vida adulta. Ou seja, há uma maior incidência de violência doméstica "em lares onde a mulher, seu parceiro ou ambos estiveram expostos à violência na infância". Cileide concorda: "Quando uma mulher passa a ser agredida quando casa, é porque a infância dela já foi ruim. Ela se coloca naquela posição de casar cedo, de não estudar, por conta da infância", diz ela, que conta ter passado por alguns traumas.</p><p class="card-text">Seus pais se separaram quando ela tinha dois anos — até hoje ela não sabe o motivo, mas garante que sua mãe não era agredida — e ela acabou entregue para tias e avó. Rejeitada, cada ano mudava de casa. Praticamente não ia na escola e até hoje é analfabeta. Muito apegada ao pai, foi morar com ele aos 10 anos, mas sua vida ficou pior do que já era: quando sua madrasta brigava com ele, algo que ocorria com frequência, os dois acabavam expulsos. Decidiu então morar com a mãe, mas, para ajudá-la, começou aos 12 anos a trabalhar como babá. Teve então de enfrentar empurrões, gritos e tapas de suas patroas.</p><p class="card-text">Ansiosa por deixar para trás uma infância difícil, Cileide decidiu se casar com Francisco quando tinha apenas 15 anos e logo após engatar o namoro. Ele era dez anos mais velho e parecia uma boa pessoa. Era o momento, ela pensava, de finalmente ser feliz. "Mas o agressor tem esse dom, de esconder o que ele realmente é. Quando a mulher vem perceber, ela já tá presa", afirma. Isso porque um ano depois de se casar, e quando já estava grávida do primeiro dos quatro filhos, começaram as agressões verbais. "Ele começou me proibindo de ver minha família. O começo de tudo é isso. Ele dizia que minha família ia me botar no mau caminho, ia dar conselhos ruins pra mim. Ele já sabia o que ia fazer pela frente e sabia que minha família ia atrapalhar”, conta Cileide, que tampouco podia dar ou receber um simples bom dia da vizinha. “Eu passava semanas ou meses sem ver minha mãe, e isso porque ela morava numa rua e eu na outra", lembra.</p><p class="card-text">Referência: https://brasil.elpais.com/brasil/2017/12/06/politica/1512579402_832697.html</p>	2018-11-17 13:33:53.770135	2018-11-30 21:22:20.950566
3	BBB 17: A violência contra a mulher ganha mais um capítulo na rede Globo	2018-11-05	<p class="card-text">Expulso do Big Brother Brasil, Marcos responde inquérito por agressão de sua companheira Emily</p><p class="card-text">Nesta segunda-feira, uma semana depois da TV Globo ter afastado o ator José Mayer, acusado de assédio sexual, a edição do Jornal Nacional já anunciava que algo diferente aconteceria no Big Brother Brasil, reality show de maior sucesso da televisão brasileira. Poucas horas depois, quando o programa veio ao ar, o apresentador Thiago Leifert anunciou que o competidor Marcos Harter, 37 anos, estava sendo expulso da competição. O motivo foram as contínuas discussões entre Marcos e a estudante Emily Araújo, 20, que terminaram, em diferentes ocasiões, em gritos, apertões, beliscadas e terror psicológico.</p><p class="card-text">As cenas, em que Emily reclamou de dor diferentes vezes, impressionaram um país já sensível com a temática do assédio sexual desde que a denúncia da figurinista Sullem Tonani veio a público. Alguns internautas e telespectadores já cobravam ações da TV Globo para o caso, mas foi na última discussão, em que Marcos encurralou Emily e gritou em seu rosto, que as redes sociais foram tomadas por pedidos de expulsão do competidor.</p><p class="card-text">Nas imagens, vê-se que num primeiro momento o participante tentou passar uma impressão de autocontrole. Deu risada do nervosismo de Emily, que reclamava de falta de apoio do parceiro na competição, e fez gestos para que, em português corrente, ela abaixasse a bola. Se a tentativa foi mostrar que controlava a situação, não conseguiu. A atitude exalava cinismo. Não à toa, daí ao momento em que ele encurralou seu par contra a parede, botou o dedo em seu rosto calando sua boca, e começou a gritar, foi uma virada de centésimos de segundos.</p><p class="card-text">As cenas correram a internet até chegarem à delegada Márcia Noeli, diretora da Divisão de Polícia de Atendimento à Mulher, do Rio de Janeiro. “Eu não assisto ao programa, mas quando vi as imagens logo percebi que se tratava de um caso clássico de violência doméstica que poderia ser enquadrado na Lei Maria da Penha”, diz Noeli. Para ela, a intimidação e o fato de ele não deixar espaço para Emily falar são sinais claros de violência. Ao pesquisar na internet sobre a relação dos dois, Noeli descobriu uma série de outros vídeos em que os dois discutiam e Emily reclamava de dores. Em um deles, depois de ter o braço apertado, a estudante aparecia com um roxo.</p><p class="card-text">“Quando a coisa fica na agressão verbal, na intimidação, não é possível abrir inquérito sem a denúncia da vítima, mas ao ver a imagem em que ela aparecia ferida, levei o caso para a delegada Viviane da Costa que abriu o inquérito”, diz Noeli. Ao anunciar a expulsão de Marcos, Leifert disse que com base na abertura de inquérito, a Globo teve uma “nova e profunda conversa com Emily, inclusive com exame médico” e que “comprovados os indícios de agressão física”, a Globo resolveu tirar o competidor do programa. Agora, o caso segue em investigação. Em seu Facebook, Marcos disse que “como todo casal” eles passaram “por momentos de alegria, ansiedade, euforia e tensão” e que ele nunca teve “a intenção de machucar física ou emocionalmente” a parceira.</p><p class="card-text">Para a promotora de Justiça Gabriela Manssur, especializada em violência contra a mulher, as imagens não deixam dúvidas sobre a intenção de Marcos. Ao saber da expulsão dele, contudo, Emily chorou copiosamente e disse “não saber por que aquilo estava acontecendo”. “Hoje, entre 25 pessoas que atendi, ao menos cinco mulheres estavam na mesma situação de Emily: eram vítimas de um relacionamento abusivo que não conseguiam reconhecer, assumindo para si a culpa pela ação deles”, diz Manssur. Segundo ela, se há algo de positivo no episódio é deixar claro do que se trata o abuso dentro de relacionamentos. “Toda mulher ao assistir essas imagens lembra-se de algo que já viveu ou presenciou”, reflete a promotora.</p><p class="card-text">Referência: https://brasil.elpais.com/brasil/2017/04/11/politica/1491942352_737658.html</p>	2018-11-17 13:33:07.569469	2018-11-30 21:22:32.850412
2	Uma vida sem violência de gênero	2018-11-14	<p class="card-text">Autoridades precisam de uma melhor formação para promover a responsabilização dos autores de violência contra mulheres</p><p class="card-text">Terminam hoje, no dia internacional dos direitos humanos, dezesseis dias de ativismo global contra a violência de gênero. A convergência não é coincidência; busca enfatizar que os direitos das mulheres são direitos humanos. Isso pode parecer óbvio nos dias de hoje, mas nem sempre foi assim. Há 25 anos, a Human Rights Watch publicou um relatório denunciando absolvições de homens que matavam suas esposas ou namoradas no Brasil sob a justificativa de “legítima defesa da honra”.</p><p class="card-text">A legislação brasileira avançou muito desde então. A aprovação da lei Maria da Penha em 2006 foi um marco, estabelecendo uma série de dispositivos que protegem os direitos das mulheres, previnem a violência e promovem a justiça quando a violência ocorre. Uma das principais conquistas da lei foi a previsão da concessão de medidas protetivas que normalmente exigem que o suposto agressor de uma mulher não possa dela se aproximar. A obtenção dessas medidas protetivas e a garantia de que sejam cumpridas, entretanto, continuam a ser mais difíceis do que deveriam.</p><p class="card-text">Apesar dos avanços legislativos, mais de 4.700 mulheres no Brasil foram mortas em 2013 – o último ano para o qual há dados disponíveis – metade delas por um parente, companheiro ou ex-companheiro. Muitas outras foram vítimas de tentativas de homicídio, estupro ou espancamento.</p><p class="card-text">Referência: https://brasil.elpais.com/brasil/2016/12/09/opinion/1481306242_192736.html</p>	2018-11-17 13:27:49.046998	2018-11-30 21:22:38.641622
1	Lei Maria da Penha completa dez anos entre comemorações e preocupações	2018-11-12	<p class="card-text">A primeira década da lei contra violência doméstica são de comemoração, avaliam as feministas. Mas, em um país machista cada vez mais conservador, também é preciso se preocupar</p><p class="card-text">A delegada Camila Delcaro Fernandes conversava com a reportagem quando foi interrompida por uma funcionária da delegacia, localizada na zona leste de São Paulo. Ela informava que, na sala ao lado, havia uma mulher aos prantos. Maria Lúcia, uma dona de casa de 50 anos, estava desesperada porque, um dia antes, tinha ido ao Fórum e, sem entender direito, assinara um documento em que se comprometia a retirar a medida protetiva que mantém seu ex-companheiro violento longe dela. Em troca, segundo o acordo, ele voltaria a incluir o filho do casal no convênio médico que recebe da empresa, do qual o menino, com problemas de saúde, havia sido excluído. Só entendeu direito o documento quando já estava no ônibus a caminho de casa e o lia com calma.</p><p class="card-text">- Se isso acontecer, ele vai me matar dentro da minha própria casa!, soluçava ela.</p><p class="card-text">Referência: https://brasil.elpais.com/brasil/2016/12/09/opinion/1481306242_192736.html</p>	2018-11-17 13:24:29.479899	2018-11-30 21:22:43.468618
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.questions (id, ask, status, created_at, updated_at) FROM stdin;
1	TESTEEEEEE	t	2018-11-25 02:03:41.22217	2018-11-25 02:03:41.22217
2	What is Lorem Ipsum	t	2018-11-25 02:04:24.104893	2018-11-25 02:04:24.104893
3	O que é a violência doméstica contra a mulher?	t	2018-11-25 02:19:31.929548	2018-11-25 02:19:31.929548
4	O que é a Violência Física na Lei Maria Penha?	t	2018-11-25 02:20:42.339824	2018-11-25 02:20:42.339824
5	Violência psicológica na Lei Maria Penha?	t	2018-11-25 02:21:44.152373	2018-11-25 02:21:44.152373
6	Violência psicológica na Lei Maria Penha?	t	2018-11-25 16:42:49.9375	2018-11-25 16:42:49.9375
7	Violência Sexual na Lei Maria Penha?	t	2018-11-25 16:44:25.506494	2018-11-25 16:44:25.506494
8	Violência Patrimonial na Lei Maria Penha?	t	2018-11-25 16:46:18.805251	2018-11-25 16:46:18.805251
9	Violência Moral na Lei Maria Penha?	t	2018-11-25 16:46:39.137101	2018-11-25 16:46:39.137101
10	A Lei Maria da Penha pode ser usada pelas mulheres que sofrem violência mesmo\r\ndepois do fim do relacionamento?	t	2018-11-25 16:46:47.190468	2018-11-25 16:46:47.190468
11	A Lei Maria da Penha pode ser usada pelas mulheres que sofrem violência de parentes?	t	2018-11-25 16:46:59.795105	2018-11-25 16:46:59.795105
12	O que fazer quando o agressor/agressora mora com você e se recusa a sair da casa?	t	2018-11-25 16:47:14.395739	2018-11-25 16:47:14.395739
13	Não tenho para onde ir enquanto espero as medidas protetivas sejam concedidas pelo\r\njuiz, o que fazer?	t	2018-11-25 16:47:25.482773	2018-11-25 16:47:25.482773
14	O que fazer quando o agressor/agressora além de ser agressivo comigo é agressivo\r\ncom os filhos?	t	2018-11-25 16:47:43.061899	2018-11-25 16:47:43.061899
15	O que fazer quando o agressor/agressora além de ser agressivo e ameaçar você\r\nameaça a sua família?	t	2018-11-25 16:47:55.465646	2018-11-25 16:47:55.465646
16	O que fazer quando um ex-namorado, ex-marido ou ex-companheiro te ameaça,\r\npersegue e impede que você saia e viva sua vida sozinha?	t	2018-11-25 16:48:07.12194	2018-11-25 16:48:07.12194
17	Sofri agressão, mas não tenho marcas que comprovem. O que devo fazer?	t	2018-11-25 16:48:19.496557	2018-11-25 16:48:19.496557
18	Quais são os sinais de que uma mulher está sofrendo violência doméstica?	t	2018-11-25 16:48:33.090247	2018-11-25 16:48:33.090247
19	O que fazer em caso de violência?	t	2018-11-25 16:48:45.683658	2018-11-25 16:48:45.683658
20	Levei um soco, o que faço?	f	2018-12-03 18:58:53.166844	2018-12-03 18:58:53.166844
21	Teste 2, será?	f	2018-12-03 19:00:01.742251	2018-12-03 19:00:01.742251
22	Teste 4, vai?	f	2018-12-03 19:01:06.686107	2018-12-03 19:01:06.686107
23	teste 5	f	2018-12-03 19:01:30.27664	2018-12-03 19:01:30.27664
24	teste 49	f	2018-12-03 19:02:42.813385	2018-12-03 19:02:42.813385
25	Qual o centro mais próximo?	f	2018-12-03 19:48:00.718757	2018-12-03 19:48:00.718757
26	Qual o centro mais próximo?	f	2018-12-03 19:48:00.845906	2018-12-03 19:48:00.845906
27	Estou cadastrando a dúvida?	f	2018-12-05 20:47:53.656932	2018-12-05 20:47:53.656932
28	Apresentando o TCC, será?	f	2018-12-06 16:31:03.29452	2018-12-06 16:31:03.29452
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.schema_migrations (version) FROM stdin;
20181113154509
20181107132305
20181107132225
20181107132309
20181107132713
20181107132115
20181107132302
20181107132111
20181107132705
20181107132312
20181107132316
20181107132110
20181107132658
20181107132255
20181107132109
20181116222542
20181125161855
20181204182326
\.


--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.sub_categories (id, name, link, status, category_id, created_at, updated_at) FROM stdin;
2	NOTÍCIAS	http://localhost:3000/publications	t	5	2018-12-04 22:59:24.86724	2018-12-04 22:59:24.86724
3	COMPROMISSO E ATITUDE	http://localhost:3000/compromisso_e_atitude	t	5	2018-12-04 22:59:46.343842	2018-12-04 22:59:46.343842
4	MINISTÉRIO PÚBLICO	http://localhost:3000/ministerio_publico	t	5	2018-12-04 23:00:04.483321	2018-12-04 23:00:04.483321
5	TODOS OS ARQUIVOS	http://localhost:3000/archives	t	7	2018-12-04 23:00:34.269924	2018-12-04 23:00:34.269924
6	VAGAS DE EMPREGO	http://localhost:3000/vagas	t	7	2018-12-04 23:00:56.511051	2018-12-04 23:00:56.511051
7	VIDEOS	http://localhost:3000/videos	t	7	2018-12-04 23:01:14.63979	2018-12-04 23:01:14.63979
8	SOBRE	http://localhost:3000/about	t	8	2018-12-04 23:01:31.505141	2018-12-04 23:01:31.505141
9	GAME	http://localhost:3000/game	t	8	2018-12-04 23:01:40.484238	2018-12-04 23:01:40.484238
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: projetomariadapenha
--

COPY public.users (id, username, password, access_level_id, person_id, created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at) FROM stdin;
3	igorfb	\N	3	1	2018-12-04 13:52:31.506423	2018-12-04 13:52:31.506423	igorboniatti@gmail.com	$2a$11$kS.b8fe8MPYtjG1ME7TkAOYPYCbA.fBwZtwPsdFYF2ynp.uyHy0p.	\N	\N	\N
4	igorfelipe	\N	4	1	2018-12-04 13:53:02.765	2018-12-04 13:53:02.765	igorboniatti@yahoo.com	$2a$11$cQx21fCMktlZYKm.PQ9uWuYaWFW9.Y.ocqqdS.cnPOoIOrQLB3S9W	\N	\N	\N
2	igorboniatti	\N	2	1	2018-12-04 13:51:46.813454	2018-12-04 21:23:16.862076	igorboniatti@hotmail.com	$2a$11$m2xunFVUANQHw08PlT3DgegDMz2Hivh196KZuCxc1cQG3oJ0W/Y32	\N	\N	\N
1	ifboniatti	\N	1	1	2018-12-04 13:50:55.861415	2018-12-06 16:40:48.402247	igorboniatti@unochapeco.edu.br	$2a$11$S8rHLPlPt4uvoPtHvgWwO.tinBNQdmqFNKwhvqn8acEscZAo5JfuK	\N	\N	\N
\.


--
-- Name: access_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.access_levels_id_seq', 4, true);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.addresses_id_seq', 17, true);


--
-- Name: anonymous_denounciations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.anonymous_denounciations_id_seq', 1, true);


--
-- Name: archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.archives_id_seq', 5, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.categories_id_seq', 8, true);


--
-- Name: comentaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.comentaries_id_seq', 43, true);


--
-- Name: doubts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.doubts_id_seq', 18, true);


--
-- Name: institutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.institutes_id_seq', 17, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.news_id_seq', 23, true);


--
-- Name: occurrence_bulletins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.occurrence_bulletins_id_seq', 1, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.people_id_seq', 1, true);


--
-- Name: phones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.phones_id_seq', 18, true);


--
-- Name: publications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.publications_id_seq', 4, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.questions_id_seq', 28, true);


--
-- Name: sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.sub_categories_id_seq', 9, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetomariadapenha
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: access_levels access_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.access_levels
    ADD CONSTRAINT access_levels_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: anonymous_denounciations anonymous_denounciations_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.anonymous_denounciations
    ADD CONSTRAINT anonymous_denounciations_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: archives archives_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.archives
    ADD CONSTRAINT archives_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comentaries comentaries_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.comentaries
    ADD CONSTRAINT comentaries_pkey PRIMARY KEY (id);


--
-- Name: doubts doubts_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.doubts
    ADD CONSTRAINT doubts_pkey PRIMARY KEY (id);


--
-- Name: institutes institutes_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.institutes
    ADD CONSTRAINT institutes_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: occurrence_bulletins occurrence_bulletins_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.occurrence_bulletins
    ADD CONSTRAINT occurrence_bulletins_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: phones phones_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);


--
-- Name: publications publications_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sub_categories sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_anonymous_denounciations_on_address_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_anonymous_denounciations_on_address_id ON public.anonymous_denounciations USING btree (address_id);


--
-- Name: index_archives_on_category_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_archives_on_category_id ON public.archives USING btree (category_id);


--
-- Name: index_comentaries_on_publication_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_comentaries_on_publication_id ON public.comentaries USING btree (publication_id);


--
-- Name: index_doubts_on_question_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_doubts_on_question_id ON public.doubts USING btree (question_id);


--
-- Name: index_institutes_on_address_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_institutes_on_address_id ON public.institutes USING btree (address_id);


--
-- Name: index_institutes_on_phone_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_institutes_on_phone_id ON public.institutes USING btree (phone_id);


--
-- Name: index_occurrence_bulletins_on_person_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_occurrence_bulletins_on_person_id ON public.occurrence_bulletins USING btree (person_id);


--
-- Name: index_people_on_address_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_people_on_address_id ON public.people USING btree (address_id);


--
-- Name: index_people_on_phone_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_people_on_phone_id ON public.people USING btree (phone_id);


--
-- Name: index_sub_categories_on_category_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_sub_categories_on_category_id ON public.sub_categories USING btree (category_id);


--
-- Name: index_users_on_access_level_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_users_on_access_level_id ON public.users USING btree (access_level_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_person_id; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE INDEX index_users_on_person_id ON public.users USING btree (person_id);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: projetomariadapenha
--

CREATE UNIQUE INDEX index_users_on_username ON public.users USING btree (username);


--
-- Name: doubts fk_rails_0bcc1c89e8; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.doubts
    ADD CONSTRAINT fk_rails_0bcc1c89e8 FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: people fk_rails_15f655d702; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT fk_rails_15f655d702 FOREIGN KEY (phone_id) REFERENCES public.phones(id);


--
-- Name: comentaries fk_rails_26db9c8db0; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.comentaries
    ADD CONSTRAINT fk_rails_26db9c8db0 FOREIGN KEY (publication_id) REFERENCES public.publications(id);


--
-- Name: archives fk_rails_3f7be1a86a; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.archives
    ADD CONSTRAINT fk_rails_3f7be1a86a FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: sub_categories fk_rails_8e75c2ee78; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT fk_rails_8e75c2ee78 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: occurrence_bulletins fk_rails_907634123e; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.occurrence_bulletins
    ADD CONSTRAINT fk_rails_907634123e FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- Name: institutes fk_rails_935ae8e870; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.institutes
    ADD CONSTRAINT fk_rails_935ae8e870 FOREIGN KEY (phone_id) REFERENCES public.phones(id);


--
-- Name: users fk_rails_fa67535741; Type: FK CONSTRAINT; Schema: public; Owner: projetomariadapenha
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_fa67535741 FOREIGN KEY (person_id) REFERENCES public.people(id);


--
-- PostgreSQL database dump complete
--

