--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: tama_entries; Type: TABLE; Schema: public; Owner: staenrey
--

CREATE TABLE public.tama_entries (
    id integer NOT NULL,
    brand character varying NOT NULL,
    tama_name character varying NOT NULL,
    based_on character varying NOT NULL,
    toy_type character varying NOT NULL,
    era character varying NOT NULL,
    region character varying NOT NULL,
    release date,
    got_it boolean
);


ALTER TABLE public.tama_entries OWNER TO staenrey;

--
-- Name: tama_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: staenrey
--

CREATE SEQUENCE public.tama_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tama_entries_id_seq OWNER TO staenrey;

--
-- Name: tama_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: staenrey
--

ALTER SEQUENCE public.tama_entries_id_seq OWNED BY public.tama_entries.id;


--
-- Name: tama_entries id; Type: DEFAULT; Schema: public; Owner: staenrey
--

ALTER TABLE ONLY public.tama_entries ALTER COLUMN id SET DEFAULT nextval('public.tama_entries_id_seq'::regclass);


--
-- Data for Name: tama_entries; Type: TABLE DATA; Schema: public; Owner: staenrey
--

COPY public.tama_entries (id, brand, tama_name, based_on, toy_type, era, region, release, got_it) FROM stdin;
15	Bandai	Original Tamagotchi P1	P1/P2	Tamagotchi	Vintage	Japan	1996-11-23	t
16	Bandai	Original Tamagotchi P2	P1/P2	Tamagotchi	Vintage	Japan	1997-02-01	t
17	Bandai	Original Tamagotchi P1	P1/P2	Tamagotchi	Vintage	EU	1997-05-12	f
18	Bandai	Original Tamagotchi P1	P1/P2	Tamagotchi	Vintage	USA	1997-05-01	f
19	Bandai	Original Tamagotchi P2	P1/P2	Tamagotchi	Vintage	USA	1997-09-01	f
20	Bandai	Tamagotchi Angel	Vintage	Tamagotchi	Vintage	Japan	1997-08-01	t
21	Bandai	Tamagotchi Angel	Vintage	Tamagotchi	Vintage	USA	1998-02-01	t
22	Bandai	Tamagotchi Angel	Vintage	Tamagotchi	Vintage	EU	1998-02-01	f
23	Bandai	Mesutchi and Osutchi	OsutchiMesutchi	Tamagotchi	Vintage	Japan	1997-12-01	t
24	Bandai	Tamagotchi Garden (Mori de Hakken! Tamagotch)	Vintage	Tamagotchi	Vintage	Japan	1998-02-01	t
25	Bandai	Tamagotchi Ocean	Vintage	Tamagotchi	Vintage	USA	1998-03-01	f
26	Bandai	Umi de Hakken! Tamagotchi	Vintage	Tamagotchi	Vintage	Japan	1998-03-01	t
27	Bandai	Devilutchi no Tamagotchi	Vintage	Tamagotchi	Vintage	Japan	1998-05-01	f
28	Bandai	Yasashii Tamagotchi	Yasashii	Tamagotchi	Vintage	Japan	1998-09-01	f
29	Bandai	Santaclautchi	Vintage	Tamagotchi	Vintage	Japan	1998-11-01	f
30	Bandai	Mothra Tamagotchi	Vintage	Tamagotchi	Vintage	Japan	1997-07-01	f
31	Bandai	Genjitchi	Vintage	Tamagotchi	Vintage	Japan	1997-11-01	f
32	Bandai	TamaOtchi	Vintage	Tamagotchi	Vintage	Japan	1998-04-01	f
33	Bandai	Tamagotchi Plus	Plus	Tamagotchi	Connection	Japan	2004-03-20	t
34	Bandai	Tamagotchi Connection 1	Plus	Tamagotchi	Connection	USA	2004-08-15	f
35	Bandai	Family Iro Iro! Tamagotchi Plus	FamiTama	Tamagotchi	Connection	Japan	2007-11-23	t
36	Bandai	Tamagotchi Connection v5	FamiTama	Tamagotchi	Connection	Asia	2008-01-06	f
37	Bandai	Tamagotchi Connection v5	FamiTama	Tamagotchi	Connection	Oceania	2008-01-10	f
38	Bandai	Tamagotchi Connection v5	FamiTama	Tamagotchi	Connection	USA	2008-02-01	f
39	Bandai	Tamagotchi Connection v5	FamiTama	Tamagotchi	Connection	EU	2008-02-01	f
40	Bandai	Tamagotchi Connection v2	Keitai	Tamagotchi	Connection	USA	2005-06-21	f
41	Bandai	Tamagotchi Connection v3	Keitai	Tamagotchi	Connection	USA	2006-02-18	f
42	Bandai	Tamagotchi Connection v4	EnTama	Tamagotchi	Connection	USA	2007-06-25	f
43	Bandai	Tamagotchi Connection v4.5	EnTama	Tamagotchi	Connection	USA	2007-06-25	f
45	Bandai	Tamagotchi Connection v5.5	FamiTama	Tamagotchi	Connection	USA	2008-09-01	f
46	Bandai	Tamagotchi Connection v6 Music Star	Music Star	Tamagotchi	Connection	USA	2008-09-29	t
47	Bandai	Tama-Town Tama-Go	Tama-Town Tama-Go	Tamagotchi	Color	USA	2010-08-29	t
48	Bandai	Tamagotchi iD L	id L	Tamagotchi	Color	Japan	2011-03-29	t
49	Bandai	Tamagotchi Friends	Friends	Tamagotchi	Color	Eastern Europe	2014-08-29	t
50	Bandai	Tamagotchi On	Meets	Tamagotchi	Genetics	USA	2019-07-28	t
51	Bandai	Keitai Kaitsuu Tamagotchi Plus	Keitai	Tamagotchi	Connection	Japan	2004-11-23	t
52	Bandai	Tamagotchi Plus Akai	Keitai	Tamagotchi	Connection	Japan	2005-07-23	t
53	Bandai	Hanerutchi	Keitai	Tamagotchi	Connection	Japan	2005-02-01	t
54	Bandai	Chibi/Mini	Chibi/Mini	Tamagotchi	Connection	Japan	2005-05-09	t
55	Bandai	Chibi/Mini	Chibi/Mini	Tamagotchi	Connection	USA	2005-08-01	f
56	Bandai	Hanerutchi 2	Keitai	Tamagotchi	Connection	Japan	2005-08-01	f
57	Bandai	EnTama	EnTama	Tamagotchi	Connection	Japan	2005-11-23	t
58	Bandai	UraTama	EnTama	Tamagotchi	Connection	Japan	2006-07-22	t
59	Bandai	TamagoChu	Tamago Chu	Tamagotchi	Connection	Japan	2007-01-01	t
60	Bandai	Plus Color	Plus Color	Tamagotchi	Color	Japan	2008-11-22	t
61	Bandai	Nano	Nano	Tamagotchi	Color	Japan	2010-10-01	t
62	Bandai	iD L English	id L	Tamagotchi	Color	Asia	2011-04-01	f
63	Bandai	Tamagotchi P's	P's	Tamagotchi	Color	Japan	2012-11-23	t
64	Bandai	Tamagotchi 4U	4U	Tamagotchi	Color	Japan	2014-09-27	t
65	Bandai	M!x	M!x	Tamagotchi	Genetics	Japan	2016-07-16	t
66	Bandai	UsaTama 2017	Nano	Tamagotchi	Genetics	Japan	2017-04-16	t
67	Bandai	Meets	Meets	Tamagotchi	Genetics	Japan	2018-11-23	t
\.


--
-- Name: tama_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: staenrey
--

SELECT pg_catalog.setval('public.tama_entries_id_seq', 67, true);


--
-- Name: tama_entries tama_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: staenrey
--

ALTER TABLE ONLY public.tama_entries
    ADD CONSTRAINT tama_entries_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

