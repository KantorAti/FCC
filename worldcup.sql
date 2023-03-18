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

INSERT INTO public.games VALUES (417, 2018, 'Final', 3360, 3361, 4, 2);
INSERT INTO public.games VALUES (418, 2018, 'Third Place', 3362, 3363, 2, 0);
INSERT INTO public.games VALUES (419, 2018, 'Semi-Final', 3361, 3363, 2, 1);
INSERT INTO public.games VALUES (420, 2018, 'Semi-Final', 3360, 3362, 1, 0);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 3361, 3364, 3, 2);
INSERT INTO public.games VALUES (422, 2018, 'Quarter-Final', 3363, 3365, 2, 0);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 3362, 3366, 2, 1);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 3360, 3367, 2, 0);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 3363, 3368, 2, 1);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 3365, 3369, 1, 0);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 3362, 3370, 3, 2);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 3366, 3371, 2, 0);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 3361, 3372, 2, 1);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 3364, 3373, 2, 1);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 3367, 3374, 2, 1);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 3360, 3375, 4, 3);
INSERT INTO public.games VALUES (433, 2014, 'Final', 3376, 3375, 1, 0);
INSERT INTO public.games VALUES (434, 2014, 'Third Place', 3377, 3366, 3, 0);
INSERT INTO public.games VALUES (435, 2014, 'Semi-Final', 3375, 3377, 1, 0);
INSERT INTO public.games VALUES (436, 2014, 'Semi-Final', 3376, 3366, 7, 1);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 3377, 3378, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Quarter-Final', 3375, 3362, 1, 0);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 3366, 3368, 2, 1);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 3376, 3360, 1, 0);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 3366, 3379, 2, 1);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 3368, 3367, 2, 0);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 3360, 3380, 2, 0);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 3376, 3381, 2, 1);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 3377, 3371, 2, 1);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 3378, 3382, 2, 1);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 3375, 3369, 1, 0);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 3362, 3383, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (3360, 'France');
INSERT INTO public.teams VALUES (3361, 'Croatia');
INSERT INTO public.teams VALUES (3362, 'Belgium');
INSERT INTO public.teams VALUES (3363, 'England');
INSERT INTO public.teams VALUES (3364, 'Russia');
INSERT INTO public.teams VALUES (3365, 'Sweden');
INSERT INTO public.teams VALUES (3366, 'Brazil');
INSERT INTO public.teams VALUES (3367, 'Uruguay');
INSERT INTO public.teams VALUES (3368, 'Colombia');
INSERT INTO public.teams VALUES (3369, 'Switzerland');
INSERT INTO public.teams VALUES (3370, 'Japan');
INSERT INTO public.teams VALUES (3371, 'Mexico');
INSERT INTO public.teams VALUES (3372, 'Denmark');
INSERT INTO public.teams VALUES (3373, 'Spain');
INSERT INTO public.teams VALUES (3374, 'Portugal');
INSERT INTO public.teams VALUES (3375, 'Argentina');
INSERT INTO public.teams VALUES (3376, 'Germany');
INSERT INTO public.teams VALUES (3377, 'Netherlands');
INSERT INTO public.teams VALUES (3378, 'Costa Rica');
INSERT INTO public.teams VALUES (3379, 'Chile');
INSERT INTO public.teams VALUES (3380, 'Nigeria');
INSERT INTO public.teams VALUES (3381, 'Algeria');
INSERT INTO public.teams VALUES (3382, 'Greece');
INSERT INTO public.teams VALUES (3383, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 3383, true);


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
-- Name: games opponent_id_team_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_team_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id_team_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id_team_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

