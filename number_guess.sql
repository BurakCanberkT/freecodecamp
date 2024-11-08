--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1731067179540', 2, 79);
INSERT INTO public.users VALUES (1, 'user_1731067179541', 5, 336);
INSERT INTO public.users VALUES (21, 'user_1731068249820', 2, 139);
INSERT INTO public.users VALUES (4, 'user_1731067216846', 2, 144);
INSERT INTO public.users VALUES (20, 'user_1731068249821', 5, 118);
INSERT INTO public.users VALUES (3, 'user_1731067216847', 5, 177);
INSERT INTO public.users VALUES (6, 'user_1731067328568', 2, 155);
INSERT INTO public.users VALUES (23, 'user_1731068358829', 2, 363);
INSERT INTO public.users VALUES (5, 'user_1731067328569', 5, 163);
INSERT INTO public.users VALUES (22, 'user_1731068358830', 5, 112);
INSERT INTO public.users VALUES (8, 'user_1731067429157', 2, 546);
INSERT INTO public.users VALUES (7, 'user_1731067429158', 5, 78);
INSERT INTO public.users VALUES (10, 'user_1731067438852', 2, 76);
INSERT INTO public.users VALUES (25, 'user_1731068387744', 2, 154);
INSERT INTO public.users VALUES (9, 'user_1731067438853', 5, 112);
INSERT INTO public.users VALUES (24, 'user_1731068387745', 5, 140);
INSERT INTO public.users VALUES (12, 'user_1731067443727', 2, 419);
INSERT INTO public.users VALUES (11, 'user_1731067443728', 5, 186);
INSERT INTO public.users VALUES (14, 'user_1731067446611', 2, 16);
INSERT INTO public.users VALUES (13, 'user_1731067446612', 5, 101);
INSERT INTO public.users VALUES (15, 'test', 1, 11);
INSERT INTO public.users VALUES (17, 'user_1731067598938', 2, 494);
INSERT INTO public.users VALUES (16, 'user_1731067598939', 5, 24);
INSERT INTO public.users VALUES (19, 'user_1731067623241', 2, 335);
INSERT INTO public.users VALUES (18, 'user_1731067623242', 5, 87);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

