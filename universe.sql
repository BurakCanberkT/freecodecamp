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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(20) NOT NULL,
    blackhole_id integer NOT NULL,
    desctiption text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer,
    distance_to_earth numeric(9,1),
    galaxy_types character varying(20),
    planet_types character varying(20)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    desctiption text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer,
    distance_to_earth numeric(9,1),
    galaxy_types character varying(20),
    planet_types character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    desctiption text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer,
    distance_to_earth numeric(9,1),
    galaxy_types character varying(20),
    planet_types character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    desctiption text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer,
    distance_to_earth numeric(9,1),
    galaxy_types character varying(20),
    planet_types character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    desctiption text,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years integer,
    distance_to_earth numeric(9,1),
    galaxy_types character varying(20),
    planet_types character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('blackhole1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('blackhole1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.blackhole VALUES ('blackhole1', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromedea', 1, 'Close', true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('a', 3, 'a', true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('b', 4, 'b', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('c', 5, 'b', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('d', 6, 'b', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('e', 7, 'b', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('f', 8, 'b', false, true, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('moon1', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet3', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet4', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet5', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet6', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet7', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet8', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet9', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet10', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet4', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet5', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet6', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet7', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet8', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet9', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet10', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet4', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet5', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet6', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet7', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet8', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet9', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('planet10', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star3', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('star4', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('star5', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('star6', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 44, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: blackhole blackhole_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_id_unique UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

