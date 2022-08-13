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
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (384, 2018, 'Final', 673, 674, 4, 2);
INSERT INTO public.games VALUES (385, 2018, 'Third Place', 675, 676, 2, 0);
INSERT INTO public.games VALUES (386, 2018, 'Semi-Final', 674, 676, 2, 1);
INSERT INTO public.games VALUES (387, 2018, 'Semi-Final', 673, 675, 1, 0);
INSERT INTO public.games VALUES (388, 2018, 'Quarter-Final', 674, 679, 3, 2);
INSERT INTO public.games VALUES (389, 2018, 'Quarter-Final', 676, 680, 2, 0);
INSERT INTO public.games VALUES (390, 2018, 'Quarter-Final', 675, 681, 2, 1);
INSERT INTO public.games VALUES (391, 2018, 'Quarter-Final', 673, 682, 2, 0);
INSERT INTO public.games VALUES (392, 2018, 'Eighth-Final', 676, 683, 2, 1);
INSERT INTO public.games VALUES (393, 2018, 'Eighth-Final', 680, 684, 1, 0);
INSERT INTO public.games VALUES (394, 2018, 'Eighth-Final', 675, 685, 3, 2);
INSERT INTO public.games VALUES (395, 2018, 'Eighth-Final', 681, 686, 2, 0);
INSERT INTO public.games VALUES (396, 2018, 'Eighth-Final', 674, 687, 2, 1);
INSERT INTO public.games VALUES (397, 2018, 'Eighth-Final', 679, 688, 2, 1);
INSERT INTO public.games VALUES (398, 2018, 'Eighth-Final', 682, 689, 2, 1);
INSERT INTO public.games VALUES (399, 2018, 'Eighth-Final', 673, 690, 4, 3);
INSERT INTO public.games VALUES (400, 2014, 'Final', 691, 690, 1, 0);
INSERT INTO public.games VALUES (401, 2014, 'Third Place', 693, 681, 3, 0);
INSERT INTO public.games VALUES (402, 2014, 'Semi-Final', 690, 693, 1, 0);
INSERT INTO public.games VALUES (403, 2014, 'Semi-Final', 691, 681, 7, 1);
INSERT INTO public.games VALUES (404, 2014, 'Quarter-Final', 693, 697, 1, 0);
INSERT INTO public.games VALUES (405, 2014, 'Quarter-Final', 690, 675, 1, 0);
INSERT INTO public.games VALUES (406, 2014, 'Quarter-Final', 681, 683, 2, 1);
INSERT INTO public.games VALUES (407, 2014, 'Quarter-Final', 691, 673, 1, 0);
INSERT INTO public.games VALUES (408, 2014, 'Eighth-Final', 681, 701, 2, 1);
INSERT INTO public.games VALUES (409, 2014, 'Eighth-Final', 683, 682, 2, 0);
INSERT INTO public.games VALUES (410, 2014, 'Eighth-Final', 673, 703, 2, 0);
INSERT INTO public.games VALUES (411, 2014, 'Eighth-Final', 691, 704, 2, 1);
INSERT INTO public.games VALUES (412, 2014, 'Eighth-Final', 693, 686, 2, 1);
INSERT INTO public.games VALUES (413, 2014, 'Eighth-Final', 697, 706, 2, 1);
INSERT INTO public.games VALUES (414, 2014, 'Eighth-Final', 690, 684, 1, 0);
INSERT INTO public.games VALUES (415, 2014, 'Eighth-Final', 675, 708, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (673, 'France');
INSERT INTO public.teams VALUES (674, 'Croatia');
INSERT INTO public.teams VALUES (675, 'Belgium');
INSERT INTO public.teams VALUES (676, 'England');
INSERT INTO public.teams VALUES (679, 'Russia');
INSERT INTO public.teams VALUES (680, 'Sweden');
INSERT INTO public.teams VALUES (681, 'Brazil');
INSERT INTO public.teams VALUES (682, 'Uruguay');
INSERT INTO public.teams VALUES (683, 'Colombia');
INSERT INTO public.teams VALUES (684, 'Switzerland');
INSERT INTO public.teams VALUES (685, 'Japan');
INSERT INTO public.teams VALUES (686, 'Mexico');
INSERT INTO public.teams VALUES (687, 'Denmark');
INSERT INTO public.teams VALUES (688, 'Spain');
INSERT INTO public.teams VALUES (689, 'Portugal');
INSERT INTO public.teams VALUES (690, 'Argentina');
INSERT INTO public.teams VALUES (691, 'Germany');
INSERT INTO public.teams VALUES (693, 'Netherlands');
INSERT INTO public.teams VALUES (697, 'Costa Rica');
INSERT INTO public.teams VALUES (701, 'Chile');
INSERT INTO public.teams VALUES (703, 'Nigeria');
INSERT INTO public.teams VALUES (704, 'Algeria');
INSERT INTO public.teams VALUES (706, 'Greece');
INSERT INTO public.teams VALUES (708, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 415, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 708, true);


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

