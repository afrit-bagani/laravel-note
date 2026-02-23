--
-- PostgreSQL database dump
--

\restrict GsnvneYpBiis6UswzJaI7UObifZODx39HFIMdRqwupxp9R4unCGF6bMrvufEKxP

-- Dumped from database version 17.7 (bdd1736)
-- Dumped by pg_dump version 18.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cache; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO neondb_owner;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO neondb_owner;

--
-- Name: car_features; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.car_features (
    id bigint NOT NULL,
    car_id bigint NOT NULL,
    abs boolean DEFAULT false NOT NULL,
    air_conditioning boolean DEFAULT false NOT NULL,
    power_windows boolean DEFAULT false NOT NULL,
    power_door_locks boolean DEFAULT false NOT NULL,
    cruise_control boolean DEFAULT false NOT NULL,
    bluetooth_connectivity boolean DEFAULT false NOT NULL,
    remote_start boolean DEFAULT false NOT NULL,
    gps_navigation boolean DEFAULT false NOT NULL,
    heated_seats boolean DEFAULT false NOT NULL,
    climate_control boolean DEFAULT false NOT NULL,
    rear_parking_sensors boolean DEFAULT false NOT NULL,
    leather_seats boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.car_features OWNER TO neondb_owner;

--
-- Name: car_features_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.car_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.car_features_id_seq OWNER TO neondb_owner;

--
-- Name: car_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.car_features_id_seq OWNED BY public.car_features.id;


--
-- Name: car_images; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.car_images (
    id bigint NOT NULL,
    car_id bigint NOT NULL,
    image_path character varying(255),
    "position" character varying(255) NOT NULL
);


ALTER TABLE public.car_images OWNER TO neondb_owner;

--
-- Name: car_images_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.car_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.car_images_id_seq OWNER TO neondb_owner;

--
-- Name: car_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.car_images_id_seq OWNED BY public.car_images.id;


--
-- Name: car_types; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.car_types (
    id bigint NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.car_types OWNER TO neondb_owner;

--
-- Name: car_types_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.car_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.car_types_id_seq OWNER TO neondb_owner;

--
-- Name: car_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.car_types_id_seq OWNED BY public.car_types.id;


--
-- Name: cars; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.cars (
    id bigint NOT NULL,
    maker_id bigint NOT NULL,
    model_id bigint NOT NULL,
    year timestamp(0) without time zone,
    price character varying(255) NOT NULL,
    vin character varying(255) NOT NULL,
    mileage integer NOT NULL,
    car_type_id bigint NOT NULL,
    fuel_type_id bigint NOT NULL,
    user_id bigint NOT NULL,
    city_id bigint NOT NULL,
    address character varying(100) NOT NULL,
    phone character varying(35) NOT NULL,
    description text,
    published_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.cars OWNER TO neondb_owner;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cars_id_seq OWNER TO neondb_owner;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    state_id bigint NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.cities OWNER TO neondb_owner;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_id_seq OWNER TO neondb_owner;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO neondb_owner;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO neondb_owner;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: favourite_cars; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.favourite_cars (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    car_id bigint NOT NULL
);


ALTER TABLE public.favourite_cars OWNER TO neondb_owner;

--
-- Name: favourite_cars_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.favourite_cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.favourite_cars_id_seq OWNER TO neondb_owner;

--
-- Name: favourite_cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.favourite_cars_id_seq OWNED BY public.favourite_cars.id;


--
-- Name: fuel_types; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.fuel_types (
    id bigint NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.fuel_types OWNER TO neondb_owner;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.fuel_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fuel_types_id_seq OWNER TO neondb_owner;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.fuel_types_id_seq OWNED BY public.fuel_types.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO neondb_owner;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO neondb_owner;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO neondb_owner;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: makers; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.makers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.makers OWNER TO neondb_owner;

--
-- Name: makers_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.makers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.makers_id_seq OWNER TO neondb_owner;

--
-- Name: makers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.makers_id_seq OWNED BY public.makers.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO neondb_owner;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO neondb_owner;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.models (
    id bigint NOT NULL,
    maker_id bigint NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.models OWNER TO neondb_owner;

--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.models_id_seq OWNER TO neondb_owner;

--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO neondb_owner;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO neondb_owner;

--
-- Name: states; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.states (
    id bigint NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.states OWNER TO neondb_owner;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.states_id_seq OWNER TO neondb_owner;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255),
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    google_id character varying(45),
    facebook_id character varying(45),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    car_id bigint
);


ALTER TABLE public.users OWNER TO neondb_owner;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO neondb_owner;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: car_features id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_features ALTER COLUMN id SET DEFAULT nextval('public.car_features_id_seq'::regclass);


--
-- Name: car_images id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_images ALTER COLUMN id SET DEFAULT nextval('public.car_images_id_seq'::regclass);


--
-- Name: car_types id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_types ALTER COLUMN id SET DEFAULT nextval('public.car_types_id_seq'::regclass);


--
-- Name: cars id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: favourite_cars id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.favourite_cars ALTER COLUMN id SET DEFAULT nextval('public.favourite_cars_id_seq'::regclass);


--
-- Name: fuel_types id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.fuel_types ALTER COLUMN id SET DEFAULT nextval('public.fuel_types_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: makers id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.makers ALTER COLUMN id SET DEFAULT nextval('public.makers_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: models id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: car_features; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.car_features (id, car_id, abs, air_conditioning, power_windows, power_door_locks, cruise_control, bluetooth_connectivity, remote_start, gps_navigation, heated_seats, climate_control, rear_parking_sensors, leather_seats, created_at, updated_at) FROM stdin;
1	1	t	t	t	f	f	f	f	f	f	f	f	f	\N	\N
\.


--
-- Data for Name: car_images; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.car_images (id, car_id, image_path, "position") FROM stdin;
1	1	test	1
2	2	test2	2
\.


--
-- Data for Name: car_types; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.car_types (id, name) FROM stdin;
4	Jeep
1	Sedan
3	SUV
2	Hatchback
\.


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.cars (id, maker_id, model_id, year, price, vin, mileage, car_type_id, fuel_type_id, user_id, city_id, address, phone, description, published_at, created_at, updated_at, deleted_at) FROM stdin;
3	2	3	2017-02-06 04:05:04	30000	3	20	3	3	1	3	test	1234567890	\N	2026-02-13 10:28:58	\N	\N	\N
4	2	4	2018-02-06 04:05:04	40000	4	10	4	4	1	4	test	1234567890	\N	2026-02-12 00:00:00	\N	\N	\N
2	1	2	2016-02-06 04:05:04	20000	2	30	2	2	1	2	test	1234567890	\N	2026-02-13 10:28:58	\N	\N	\N
1	1	1	2015-02-06 04:05:04	11000	1	40	1	1	1	1	test	1234567890	\N	2026-02-13 10:28:58	\N	2026-02-15 12:23:58	\N
5	1	1	2026-02-15 10:14:51	15000	123	20	1	1	1	1	Kolkata	1234567890	description 1	2026-02-15 15:05:54	2026-02-15 10:14:51	2026-02-15 15:05:54	\N
8	1	1	2026-02-15 10:57:06	14000	8	21	1	1	1	1	Mumbai	1234567890	description 1	2026-02-15 15:05:54	2026-02-15 10:57:06	2026-02-15 15:13:10	2026-02-15 15:13:10
7	1	1	2026-02-15 10:51:38	13000	1223	21	1	1	1	1	Mumbai	1234567890	description 1	2026-02-15 15:05:54	2026-02-15 10:51:38	2026-02-15 15:24:13	2026-02-15 15:24:13
6	1	1	2026-02-15 10:45:35	15000	123	22	1	1	1	1	Kolkata	1234567890	description 1	\N	2026-02-15 10:45:35	2026-02-15 15:39:34	2026-02-15 15:39:34
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.cities (id, state_id, name) FROM stdin;
1	1	Los Angeles
2	1	San Francisco
4	2	Bufallo
3	2	New York
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: favourite_cars; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.favourite_cars (id, user_id, car_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- Data for Name: fuel_types; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.fuel_types (id, name) FROM stdin;
3	Electric
1	Gas
2	Diesel
4	Hybrid
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: makers; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.makers (id, name) FROM stdin;
2	Ford
1	Toyota
3	itaque
4	similique
5	sunt
6	molestiae
7	sunt
8	et
9	voluptatibus
10	dolorem
11	enim
12	explicabo
13	rem
14	unde
15	in
16	omnis
17	cumque
18	voluptas
19	enim
20	veniam
21	vitae
22	laborum
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2026_02_12_070133_create_car_types_table	1
5	2026_02_12_070702_create_fuel_types_table	1
6	2026_02_12_093315_create_makers_table	1
7	2026_02_12_093353_create_models_table	1
8	2026_02_12_093408_create_states_table	1
9	2026_02_12_093456_create_cities_table	1
10	2026_02_13_084716_create_cars_table	1
11	2026_02_15_112158_create_car_features_table	2
12	2026_02_15_112213_create_car_images_table	2
13	2026_02_16_093139_create_favourite_cars_table	3
14	2026_02_16_095153_add_car_id_to_users_table	4
\.


--
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.models (id, maker_id, name) FROM stdin;
1	1	Camry
4	2	Escape
3	2	F-150
2	1	Corolla
5	18	repellat
6	19	et
7	20	placeat
8	21	harum
9	22	enim
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
uOrNOsIkGMWvRbjBOT1FoefTzDlBBQrwrU9hXEC6	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOU50QXpZTGc3Mlk5clB1QnRsV3FoZnROeWw0bElDQVRsNWNJQUJQQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771234216
BRvjButptlXlsFe8D0GG8Z6PGp6Umx9XfpJKt4IY	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2xQaWF4cTVsZEIwd3RubUE1UGhkYTlwZFpYeUpncE1GUnlvZWQ4NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771234471
exLjg6tI3R0adzcRX6LIxHDNzffpLykgpBPVkl7L	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTl4NGFCNzRNOGx2dGg5eWk1ZlNUYkQzUGlKY2R2VkFySElock5tbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771235975
T2yjU74AJuTvJMLqiykeRBcn8v1SudIrN1ywWIyI	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicGJpeVN4Nk1aYURER0E1MTNWd0didnZ0SzFmZUFGdHlUSjVFVk40eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771236152
aIwe79ztn1c8EJkKKioDbVdaJ7xhSAoctRjcHapD	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicGlqQmlLamNHUDJORWFNNzNKUlVzUzllMzdvVEZMMVg1TUFsVFpSRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771236673
hDAFuvbWAyo8BWkpVPaCCbxgIJ9kzEGSVr5ZJz0u	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieE15UWtlcUNkT25GN0Q1dGpwZHo2VTFiY0J4WkMydXB2WjN6Tmx5cSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771259477
HZ964Ykz1BpXgAW3oWLMXZ2vMdjHQvj7Lozo8731	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.25.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDRyT0kwbnFLQ1N0YWF2SHF5dUpiajdzdGc5bVh0NWx3cUhLb0lRbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sZWFybmluZy50ZXN0Lz9oZXJkPXByZXZpZXciO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1771307597
ARbZw2AtRMTCcwP4HOQj1NlSEhWKHs4R3Y9VQFQh	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.25.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWxHN2NGamd4RlZJYU9TMTFRVFhqUG4wckFtYTZQcHI2c2c5QTNnQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sZWFybmluZy50ZXN0Lz9oZXJkPXByZXZpZXciO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1771390379
6SVBLG8lCRCSGStdUTH1cjoMzeF0FFdAqLUK3ilb	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.25.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOW5sd3Rnbk1ndTZyQlhXWlZjUEtyZmd6VEJwREJDVXdtTHBOcnhpRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sZWFybmluZy50ZXN0Lz9oZXJkPXByZXZpZXciO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1771400380
llEZdZMjs2bepun0AbBtqKC56wquVBJUac5LHx7F	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTldUYUVYZk44YmE2ZVZOMjlDTFVjQmNHVmdra3BvMzhWZm1wVG1vQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771221231
3uwcZZOubsOc0ZfTo6CMHM8akq1lX4fbIvUSk81w	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXFlTDBIWHdjZkpvUTBpbjJqVHk4eDlxTUtNc1RDbW13ek95U3lJTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771221279
VEVtpqyMfYWXLVW5n103cyquQCWZJtLbt2AMcho4	\N	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiREwwdzlneXFYYWZiQ29sNGtZZTZuRHhCM3Q1MnJxa3NRNER4dktLZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1771221501
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.states (id, name) FROM stdin;
2	New York
1	California
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

COPY public.users (id, name, email, phone, email_verified_at, password, google_id, facebook_id, remember_token, created_at, updated_at, car_id) FROM stdin;
1	John Parker	john@gmail.com	1234567890	\N	password	\N	\N	\N	\N	\N	1
\.


--
-- Name: car_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.car_features_id_seq', 1, false);


--
-- Name: car_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.car_images_id_seq', 1, false);


--
-- Name: car_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.car_types_id_seq', 1, false);


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.cars_id_seq', 12, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: favourite_cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.favourite_cars_id_seq', 2, true);


--
-- Name: fuel_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.fuel_types_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: makers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.makers_id_seq', 22, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.migrations_id_seq', 14, true);


--
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.models_id_seq', 9, true);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: car_features car_features_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_features
    ADD CONSTRAINT car_features_pkey PRIMARY KEY (id);


--
-- Name: car_images car_images_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_images
    ADD CONSTRAINT car_images_pkey PRIMARY KEY (id);


--
-- Name: car_types car_types_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_types
    ADD CONSTRAINT car_types_pkey PRIMARY KEY (id);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: favourite_cars favourite_cars_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.favourite_cars
    ADD CONSTRAINT favourite_cars_pkey PRIMARY KEY (id);


--
-- Name: fuel_types fuel_types_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.fuel_types
    ADD CONSTRAINT fuel_types_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: makers makers_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.makers
    ADD CONSTRAINT makers_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_phone_unique; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_unique UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: cache_expiration_index; Type: INDEX; Schema: public; Owner: neondb_owner
--

CREATE INDEX cache_expiration_index ON public.cache USING btree (expiration);


--
-- Name: cache_locks_expiration_index; Type: INDEX; Schema: public; Owner: neondb_owner
--

CREATE INDEX cache_locks_expiration_index ON public.cache_locks USING btree (expiration);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: neondb_owner
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: neondb_owner
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: neondb_owner
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: car_features car_features_car_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_features
    ADD CONSTRAINT car_features_car_id_foreign FOREIGN KEY (car_id) REFERENCES public.cars(id) ON DELETE CASCADE;


--
-- Name: car_images car_images_car_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.car_images
    ADD CONSTRAINT car_images_car_id_foreign FOREIGN KEY (car_id) REFERENCES public.cars(id) ON DELETE CASCADE;


--
-- Name: cars cars_car_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_car_type_id_foreign FOREIGN KEY (car_type_id) REFERENCES public.car_types(id) ON DELETE SET NULL;


--
-- Name: cars cars_city_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE SET NULL;


--
-- Name: cars cars_fuel_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_fuel_type_id_foreign FOREIGN KEY (fuel_type_id) REFERENCES public.fuel_types(id) ON DELETE SET NULL;


--
-- Name: cars cars_maker_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_maker_id_foreign FOREIGN KEY (maker_id) REFERENCES public.makers(id) ON DELETE SET NULL;


--
-- Name: cars cars_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_model_id_foreign FOREIGN KEY (model_id) REFERENCES public.models(id) ON DELETE SET NULL;


--
-- Name: cars cars_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: cities cities_state_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_state_id_foreign FOREIGN KEY (state_id) REFERENCES public.states(id) ON DELETE CASCADE;


--
-- Name: favourite_cars favourite_cars_car_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.favourite_cars
    ADD CONSTRAINT favourite_cars_car_id_foreign FOREIGN KEY (car_id) REFERENCES public.cars(id) ON DELETE CASCADE;


--
-- Name: favourite_cars favourite_cars_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.favourite_cars
    ADD CONSTRAINT favourite_cars_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: models models_maker_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_maker_id_foreign FOREIGN KEY (maker_id) REFERENCES public.makers(id) ON DELETE CASCADE;


--
-- Name: users users_car_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_car_id_foreign FOREIGN KEY (car_id) REFERENCES public.cars(id);


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;


--
-- PostgreSQL database dump complete
--

\unrestrict GsnvneYpBiis6UswzJaI7UObifZODx39HFIMdRqwupxp9R4unCGF6bMrvufEKxP

