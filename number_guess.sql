--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 272);
INSERT INTO public.games VALUES (2, 4, 344);
INSERT INTO public.games VALUES (3, 3, 227);
INSERT INTO public.games VALUES (4, 3, 516);
INSERT INTO public.games VALUES (5, 3, 335);
INSERT INTO public.games VALUES (6, 1, 5);
INSERT INTO public.games VALUES (7, 5, 638);
INSERT INTO public.games VALUES (8, 6, 273);
INSERT INTO public.games VALUES (9, 5, 158);
INSERT INTO public.games VALUES (10, 5, 352);
INSERT INTO public.games VALUES (11, 5, 757);
INSERT INTO public.games VALUES (12, 7, 176);
INSERT INTO public.games VALUES (13, 8, 445);
INSERT INTO public.games VALUES (14, 7, 252);
INSERT INTO public.games VALUES (15, 7, 537);
INSERT INTO public.games VALUES (16, 7, 559);
INSERT INTO public.games VALUES (17, 1, 8);
INSERT INTO public.games VALUES (18, 9, 961);
INSERT INTO public.games VALUES (19, 10, 133);
INSERT INTO public.games VALUES (20, 9, 524);
INSERT INTO public.games VALUES (21, 9, 720);
INSERT INTO public.games VALUES (22, 9, 678);
INSERT INTO public.games VALUES (23, 11, 311);
INSERT INTO public.games VALUES (24, 12, 749);
INSERT INTO public.games VALUES (25, 11, 110);
INSERT INTO public.games VALUES (26, 11, 841);
INSERT INTO public.games VALUES (27, 11, 391);
INSERT INTO public.games VALUES (28, 13, 339);
INSERT INTO public.games VALUES (29, 14, 195);
INSERT INTO public.games VALUES (30, 13, 208);
INSERT INTO public.games VALUES (31, 13, 81);
INSERT INTO public.games VALUES (32, 13, 506);
INSERT INTO public.games VALUES (33, 15, 953);
INSERT INTO public.games VALUES (34, 16, 929);
INSERT INTO public.games VALUES (35, 15, 929);
INSERT INTO public.games VALUES (36, 15, 36);
INSERT INTO public.games VALUES (37, 15, 256);
INSERT INTO public.games VALUES (38, 1, 6);
INSERT INTO public.games VALUES (39, 1, 11);
INSERT INTO public.games VALUES (40, 17, 321);
INSERT INTO public.games VALUES (41, 18, 54);
INSERT INTO public.games VALUES (42, 17, 764);
INSERT INTO public.games VALUES (43, 17, 324);
INSERT INTO public.games VALUES (44, 17, 367);
INSERT INTO public.games VALUES (45, 1, 11);
INSERT INTO public.games VALUES (46, 19, 830);
INSERT INTO public.games VALUES (47, 20, 439);
INSERT INTO public.games VALUES (48, 19, 996);
INSERT INTO public.games VALUES (49, 19, 974);
INSERT INTO public.games VALUES (50, 19, 849);
INSERT INTO public.games VALUES (51, 21, 466);
INSERT INTO public.games VALUES (52, 22, 559);
INSERT INTO public.games VALUES (53, 21, 489);
INSERT INTO public.games VALUES (54, 21, 617);
INSERT INTO public.games VALUES (55, 21, 765);
INSERT INTO public.games VALUES (56, 23, 124);
INSERT INTO public.games VALUES (57, 24, 485);
INSERT INTO public.games VALUES (58, 23, 843);
INSERT INTO public.games VALUES (59, 23, 942);
INSERT INTO public.games VALUES (60, 23, 584);
INSERT INTO public.games VALUES (61, 1, 12);
INSERT INTO public.games VALUES (62, 25, 132);
INSERT INTO public.games VALUES (63, 25, 258);
INSERT INTO public.games VALUES (64, 26, 881);
INSERT INTO public.games VALUES (65, 26, 125);
INSERT INTO public.games VALUES (66, 25, 790);
INSERT INTO public.games VALUES (67, 25, 251);
INSERT INTO public.games VALUES (68, 25, 929);
INSERT INTO public.games VALUES (69, 27, 7);
INSERT INTO public.games VALUES (70, 28, 19);
INSERT INTO public.games VALUES (71, 29, 803);
INSERT INTO public.games VALUES (72, 29, 880);
INSERT INTO public.games VALUES (73, 30, 875);
INSERT INTO public.games VALUES (74, 30, 272);
INSERT INTO public.games VALUES (75, 29, 153);
INSERT INTO public.games VALUES (76, 29, 450);
INSERT INTO public.games VALUES (77, 29, 21);
INSERT INTO public.games VALUES (78, 31, 440);
INSERT INTO public.games VALUES (79, 31, 90);
INSERT INTO public.games VALUES (80, 32, 517);
INSERT INTO public.games VALUES (81, 32, 577);
INSERT INTO public.games VALUES (82, 31, 813);
INSERT INTO public.games VALUES (83, 31, 639);
INSERT INTO public.games VALUES (84, 31, 150);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Whiskey');
INSERT INTO public.users VALUES (2, 'WHISKEY');
INSERT INTO public.users VALUES (3, 'user_1794662099134');
INSERT INTO public.users VALUES (4, 'user_1794662099133');
INSERT INTO public.users VALUES (5, 'user_1794662957109');
INSERT INTO public.users VALUES (6, 'user_1794662957108');
INSERT INTO public.users VALUES (7, 'user_1794663152883');
INSERT INTO public.users VALUES (8, 'user_1794663152882');
INSERT INTO public.users VALUES (9, 'user_1794663453589');
INSERT INTO public.users VALUES (10, 'user_1794663453588');
INSERT INTO public.users VALUES (11, 'user_1794663887761');
INSERT INTO public.users VALUES (12, 'user_1794663887760');
INSERT INTO public.users VALUES (13, 'user_1794665131494');
INSERT INTO public.users VALUES (14, 'user_1794665131493');
INSERT INTO public.users VALUES (15, 'user_1794665359243');
INSERT INTO public.users VALUES (16, 'user_1794665359242');
INSERT INTO public.users VALUES (17, 'user_1794666246929');
INSERT INTO public.users VALUES (18, 'user_1794666246928');
INSERT INTO public.users VALUES (19, 'user_1794666432780');
INSERT INTO public.users VALUES (20, 'user_1794666432779');
INSERT INTO public.users VALUES (21, 'user_1794666642486');
INSERT INTO public.users VALUES (22, 'user_1794666642485');
INSERT INTO public.users VALUES (23, 'user_1794666714359');
INSERT INTO public.users VALUES (24, 'user_1794666714358');
INSERT INTO public.users VALUES (25, 'user_1794667242575');
INSERT INTO public.users VALUES (26, 'user_1794667242574');
INSERT INTO public.users VALUES (27, 'ImisiOluwa');
INSERT INTO public.users VALUES (28, 'Rere');
INSERT INTO public.users VALUES (29, 'user_1794667876132');
INSERT INTO public.users VALUES (30, 'user_1794667876131');
INSERT INTO public.users VALUES (31, 'user_1794668172326');
INSERT INTO public.users VALUES (32, 'user_1794668172325');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (user_id);


--
-- Name: users usernames_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT usernames_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

