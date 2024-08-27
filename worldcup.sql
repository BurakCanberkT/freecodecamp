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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 472, 482, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 480, 473, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 482, 473, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 472, 480, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 482, 484, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 473, 479, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 480, 474, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 472, 495, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 473, 494, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 479, 485, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 480, 487, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 474, 477, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 482, 486, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 484, 493, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 495, 481, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 472, 478, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 475, 478, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 488, 474, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 478, 488, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 475, 474, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 488, 491, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 478, 480, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 474, 494, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 475, 472, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 474, 490, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 494, 495, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 472, 476, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 475, 483, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 488, 477, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 491, 489, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 478, 485, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 480, 492, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (472, 'France');
INSERT INTO public.teams VALUES (473, 'England');
INSERT INTO public.teams VALUES (474, 'Brazil');
INSERT INTO public.teams VALUES (475, 'Germany');
INSERT INTO public.teams VALUES (476, 'Nigeria');
INSERT INTO public.teams VALUES (477, 'Mexico');
INSERT INTO public.teams VALUES (478, 'Argentina');
INSERT INTO public.teams VALUES (479, 'Sweden');
INSERT INTO public.teams VALUES (480, 'Belgium');
INSERT INTO public.teams VALUES (481, 'Portugal');
INSERT INTO public.teams VALUES (482, 'Croatia');
INSERT INTO public.teams VALUES (483, 'Algeria');
INSERT INTO public.teams VALUES (484, 'Russia');
INSERT INTO public.teams VALUES (485, 'Switzerland');
INSERT INTO public.teams VALUES (486, 'Denmark');
INSERT INTO public.teams VALUES (487, 'Japan');
INSERT INTO public.teams VALUES (488, 'Netherlands');
INSERT INTO public.teams VALUES (489, 'Greece');
INSERT INTO public.teams VALUES (490, 'Chile');
INSERT INTO public.teams VALUES (491, 'Costa Rica');
INSERT INTO public.teams VALUES (492, 'United States');
INSERT INTO public.teams VALUES (493, 'Spain');
INSERT INTO public.teams VALUES (494, 'Colombia');
INSERT INTO public.teams VALUES (495, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 495, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
