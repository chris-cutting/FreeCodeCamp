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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    color character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: lol; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lol (
    lol_id integer NOT NULL,
    name character varying(50) NOT NULL,
    joke text
);


ALTER TABLE public.lol OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromede', 4, 50, NULL);
INSERT INTO public.galaxy VALUES (2, 'senzu', 2, 150, NULL);
INSERT INTO public.galaxy VALUES (3, 'nb3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'nb4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'nb5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'nb6', NULL, NULL, NULL);


--
-- Data for Name: lol; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lol VALUES (1, 'mdr', NULL);
INSERT INTO public.lol VALUES (2, 'mdr', NULL);
INSERT INTO public.lol VALUES (3, 'mdr', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'andromoon', 2, 150, 1);
INSERT INTO public.moon VALUES (2, 'senzumoon', 2, 150, 2);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'androplanet', 2, 150, 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'senzuplanet', 2, 150, 10, 'lol', false, true, 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'androstar', 2, 150, 1);
INSERT INTO public.star VALUES (2, 'senzustar', 2, 150, 1);
INSERT INTO public.star VALUES (3, 'nb3', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'nb4', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'nb5', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'nb6', NULL, NULL, 1);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lol lol_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lol
    ADD CONSTRAINT lol_number_key UNIQUE (lol_id);


--
-- Name: lol lol_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lol
    ADD CONSTRAINT lol_pkey PRIMARY KEY (lol_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

