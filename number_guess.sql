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
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('suet', 5, 4);
INSERT INTO public.users VALUES ('user_1724749385723', 2, 426);
INSERT INTO public.users VALUES ('user_1724749782664', 2, 468);
INSERT INTO public.users VALUES ('user_1724749385724', 5, 92);
INSERT INTO public.users VALUES ('user_1724750378927', 2, 82);
INSERT INTO public.users VALUES ('user_1724749782665', 5, 29);
INSERT INTO public.users VALUES ('user_1724749417646', 2, 543);
INSERT INTO public.users VALUES ('user_1724750378928', 5, 132);
INSERT INTO public.users VALUES ('user_1724749417647', 5, 68);
INSERT INTO public.users VALUES ('user_1724750118416', 2, 793);
INSERT INTO public.users VALUES ('user_1724750118417', 5, 170);
INSERT INTO public.users VALUES ('user_1724749456940', 2, 443);
INSERT INTO public.users VALUES ('user_1724749456941', 5, 197);
INSERT INTO public.users VALUES ('ja', 1, 5);
INSERT INTO public.users VALUES ('user_1724750150173', 2, 311);
INSERT INTO public.users VALUES ('user_1724749593478', 2, 114);
INSERT INTO public.users VALUES ('user_1724750483106', 2, 393);
INSERT INTO public.users VALUES ('user_1724749593479', 5, 111);
INSERT INTO public.users VALUES ('user_1724750150174', 5, 285);
INSERT INTO public.users VALUES ('user_1724750483107', 5, 274);
INSERT INTO public.users VALUES ('user_1724749655432', 2, 129);
INSERT INTO public.users VALUES ('user_1724750184537', 2, 354);
INSERT INTO public.users VALUES ('user_1724749655433', 5, 61);
INSERT INTO public.users VALUES ('ki', 2, 4);
INSERT INTO public.users VALUES ('user_1724750184538', 5, 7);
INSERT INTO public.users VALUES ('user_1724749721015', 2, 81);
INSERT INTO public.users VALUES ('user_1724750194754', 2, 497);
INSERT INTO public.users VALUES ('user_1724749721016', 5, 170);
INSERT INTO public.users VALUES ('user_1724750194755', 5, 475);
INSERT INTO public.users VALUES ('user_1724749733126', 2, 100);
INSERT INTO public.users VALUES ('user_1724749733127', 5, 157);
INSERT INTO public.users VALUES ('user_1724750287657', 2, 279);
INSERT INTO public.users VALUES ('user_1724750287658', 5, 50);
INSERT INTO public.users VALUES ('user_1724750322094', 2, 371);
INSERT INTO public.users VALUES ('user_1724750322095', 5, 474);


--
-- PostgreSQL database dump complete
--

