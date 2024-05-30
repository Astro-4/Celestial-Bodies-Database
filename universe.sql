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
    name character varying(30),
    number_of_planets integer,
    description text NOT NULL,
    galaxy_id integer NOT NULL,
    extra_galaxy character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_races integer,
    planet_id integer,
    extra_moon character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    number_ofspecies integer,
    distance_from_earth numeric(3,1),
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: races; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.races (
    races_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_races integer
);


ALTER TABLE public.races OWNER TO freecodecamp;

--
-- Name: races_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.races_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.races_race_id_seq OWNER TO freecodecamp;

--
-- Name: races_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.races_race_id_seq OWNED BY public.races.races_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    brightness character varying(30),
    extra_star character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: races races_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races ALTER COLUMN races_id SET DEFAULT nextval('public.races_race_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 10, 'Milkyway', 1, NULL);
INSERT INTO public.galaxy VALUES (NULL, 15, 'Sodaway', 2, NULL);
INSERT INTO public.galaxy VALUES (NULL, 20, 'Andromeda', 3, NULL);
INSERT INTO public.galaxy VALUES (NULL, 12, 'Benway', 4, NULL);
INSERT INTO public.galaxy VALUES (NULL, 22, 'Solarway', 5, NULL);
INSERT INTO public.galaxy VALUES (NULL, 25, 'Yeahthatway', 33, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (14, 'Honeymoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (15, 'IOmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Phobosmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Rheamoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Nimasmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (13, 'Othermoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (18, 'Tritonmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (12, 'Europamoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Callistomoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (10, 'Tethysmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Vestamoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (8, 'Neptunemoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Uranusmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Earthmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'Mercurymoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Saturnmoon', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Cresentmoon', 1, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Bloodmoon', 3, 4, NULL);
INSERT INTO public.moon VALUES (1, 'Bluemoon', 0, 4, NULL);
INSERT INTO public.moon VALUES (16, 'Titanmoon', NULL, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Pluto', NULL, true, NULL, 10.4, 1, 1);
INSERT INTO public.planet VALUES ('Europa', NULL, NULL, NULL, NULL, 12, 1);
INSERT INTO public.planet VALUES ('Callisto', NULL, NULL, NULL, NULL, 11, 1);
INSERT INTO public.planet VALUES ('Tethys', NULL, NULL, NULL, NULL, 10, 1);
INSERT INTO public.planet VALUES ('Vesta', NULL, NULL, NULL, NULL, 9, 1);
INSERT INTO public.planet VALUES ('Neptune', NULL, NULL, NULL, NULL, 8, 1);
INSERT INTO public.planet VALUES ('Uranus', NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Mercury', NULL, NULL, NULL, NULL, 6, 1);
INSERT INTO public.planet VALUES ('Saturn', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO public.planet VALUES ('Earth', NULL, NULL, NULL, NULL, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', NULL, true, NULL, 27.5, 3, 1);
INSERT INTO public.planet VALUES ('Mars', NULL, false, NULL, 15.7, 2, 1);


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.races VALUES (1, 'Humanrace', 8);
INSERT INTO public.races VALUES (2, 'Birds', 120);
INSERT INTO public.races VALUES (3, 'Fish', 5000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Aurora Nebula', 6, 33, NULL, NULL);
INSERT INTO public.star VALUES ('Zorthon Nebula', 5, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Pleides', 4, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Crab Nebula', 3, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Andromeda Nebula', 2, 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: races_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.races_race_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: races races_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_pkey PRIMARY KEY (races_id);


--
-- Name: races races_races_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_races_id_key UNIQUE (races_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

