--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (15, 2018, 'Final', 34, 35, 4, 2);
INSERT INTO public.games VALUES (16, 2018, 'Third Place', 36, 37, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Semi-Final', 35, 37, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Semi-Final', 34, 36, 1, 0);
INSERT INTO public.games VALUES (19, 2018, 'Quarter-Final', 35, 38, 3, 2);
INSERT INTO public.games VALUES (20, 2018, 'Quarter-Final', 37, 39, 2, 0);
INSERT INTO public.games VALUES (21, 2018, 'Quarter-Final', 36, 40, 2, 1);
INSERT INTO public.games VALUES (22, 2018, 'Quarter-Final', 34, 41, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 37, 42, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 39, 43, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 36, 44, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 40, 45, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 35, 46, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Eighth-Final', 38, 47, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 41, 48, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 34, 49, 4, 3);
INSERT INTO public.games VALUES (31, 2014, 'Final', 50, 49, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Third Place', 51, 40, 3, 0);
INSERT INTO public.games VALUES (33, 2014, 'Semi-Final', 49, 51, 1, 0);
INSERT INTO public.games VALUES (34, 2014, 'Semi-Final', 50, 40, 7, 1);
INSERT INTO public.games VALUES (35, 2014, 'Quarter-Final', 51, 52, 1, 0);
INSERT INTO public.games VALUES (36, 2014, 'Quarter-Final', 49, 36, 1, 0);
INSERT INTO public.games VALUES (37, 2014, 'Quarter-Final', 40, 42, 2, 1);
INSERT INTO public.games VALUES (38, 2014, 'Quarter-Final', 50, 34, 1, 0);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 40, 53, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 42, 41, 2, 0);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 34, 54, 2, 0);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 50, 55, 2, 1);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 51, 45, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Eighth-Final', 52, 56, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 49, 43, 1, 0);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 36, 57, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (34, 'France');
INSERT INTO public.teams VALUES (35, 'Croatia');
INSERT INTO public.teams VALUES (36, 'Belgium');
INSERT INTO public.teams VALUES (37, 'England');
INSERT INTO public.teams VALUES (38, 'Russia');
INSERT INTO public.teams VALUES (39, 'Sweden');
INSERT INTO public.teams VALUES (40, 'Brazil');
INSERT INTO public.teams VALUES (41, 'Uruguay');
INSERT INTO public.teams VALUES (42, 'Colombia');
INSERT INTO public.teams VALUES (43, 'Switzerland');
INSERT INTO public.teams VALUES (44, 'Japan');
INSERT INTO public.teams VALUES (45, 'Mexico');
INSERT INTO public.teams VALUES (46, 'Denmark');
INSERT INTO public.teams VALUES (47, 'Spain');
INSERT INTO public.teams VALUES (48, 'Portugal');
INSERT INTO public.teams VALUES (49, 'Argentina');
INSERT INTO public.teams VALUES (50, 'Germany');
INSERT INTO public.teams VALUES (51, 'Netherlands');
INSERT INTO public.teams VALUES (52, 'Costa Rica');
INSERT INTO public.teams VALUES (53, 'Chile');
INSERT INTO public.teams VALUES (54, 'Nigeria');
INSERT INTO public.teams VALUES (55, 'Algeria');
INSERT INTO public.teams VALUES (56, 'Greece');
INSERT INTO public.teams VALUES (57, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 46, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 57, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


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

