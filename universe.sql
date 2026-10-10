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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(30),
    earth_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    temperature integer,
    types_of_animals numeric
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
    moon_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    temperature integer,
    types_of_animals numeric,
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    temperature integer,
    types_of_animals numeric,
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    temperature integer,
    types_of_animals numeric,
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('Earth Prime', 1, true, 'true');
INSERT INTO public.earth VALUES ('Terra Alpha', 2, true, 'true');
INSERT INTO public.earth VALUES ('Earth Beta', 3, false, 'true');
INSERT INTO public.earth VALUES ('New Earth', 4, true, 'true');
INSERT INTO public.earth VALUES ('Earth Gamma', 5, false, 'true');
INSERT INTO public.earth VALUES ('Gaia', 6, true, 'true');
INSERT INTO public.earth VALUES ('Tellus', 7, true, 'true');
INSERT INTO public.earth VALUES ('Earth Delta', 8, false, 'true');
INSERT INTO public.earth VALUES ('Astraea', 9, false, 'true');
INSERT INTO public.earth VALUES ('Elysium', 10, true, 'true');
INSERT INTO public.earth VALUES ('Genesis', 11, true, 'true');
INSERT INTO public.earth VALUES ('Earth Omega', 12, false, 'true');
INSERT INTO public.earth VALUES ('Zion', 13, true, 'true');
INSERT INTO public.earth VALUES ('Arcadia', 14, true, 'true');
INSERT INTO public.earth VALUES ('Avalon', 15, true, 'true');
INSERT INTO public.earth VALUES ('Caelum', 16, false, 'true');
INSERT INTO public.earth VALUES ('Eden', 17, true, 'true');
INSERT INTO public.earth VALUES ('Sanctuary', 18, true, 'true');
INSERT INTO public.earth VALUES ('Utopia', 19, true, 'true');
INSERT INTO public.earth VALUES ('Horizon', 20, false, 'true');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, false, 0, 3, 2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, false, 2500000, 4, 0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, false, 3000000, 4, 0);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', false, true, 53000000, 10, 0);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, false, 29000000, 5, 0);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, false, 23000000, 4, 0);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', false, false, 21000000, 4, 0);
INSERT INTO public.galaxy VALUES (8, 'Large Magellanic Cloud', false, false, 163000, 5, 0);
INSERT INTO public.galaxy VALUES (9, 'Small Magellanic Cloud', false, false, 200000, 5, 0);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', false, true, 13000000, 6, 0);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel', false, false, 500000000, 8, 0);
INSERT INTO public.galaxy VALUES (12, 'Cigar Galaxy', false, false, 12000000, 5, 0);
INSERT INTO public.galaxy VALUES (13, 'Hoag''s Object', false, true, 600000000, 3, 0);
INSERT INTO public.galaxy VALUES (14, 'Black Eye Galaxy', false, false, 17000000, 4, 0);
INSERT INTO public.galaxy VALUES (15, 'NGC 1300', false, false, 61000000, 4, 0);
INSERT INTO public.galaxy VALUES (16, 'Tadpole Galaxy', false, false, 420000000, 5, 0);
INSERT INTO public.galaxy VALUES (17, 'Sculptor Galaxy', false, false, 11400000, 4, 0);
INSERT INTO public.galaxy VALUES (18, 'Fornax A', false, true, 62000000, 7, 0);
INSERT INTO public.galaxy VALUES (19, 'IC 1101', false, true, 1040000000, 2, 0);
INSERT INTO public.galaxy VALUES (20, 'Mayall''s Object', false, false, 500000000, 6, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (100, 'Moon', false, true, 0, -20, 0, 110);
INSERT INTO public.moon VALUES (101, 'Phobos', false, false, 1, -40, 0, 111);
INSERT INTO public.moon VALUES (102, 'Deimos', false, false, 1, -40, 0, 111);
INSERT INTO public.moon VALUES (103, 'Io', false, true, 4, -130, 0, 112);
INSERT INTO public.moon VALUES (104, 'Europa', false, true, 4, -160, 0, 112);
INSERT INTO public.moon VALUES (105, 'Ganymede', false, true, 4, -163, 0, 112);
INSERT INTO public.moon VALUES (106, 'Callisto', false, true, 4, -139, 0, 112);
INSERT INTO public.moon VALUES (107, 'Titan', false, true, 9, -179, 0, 113);
INSERT INTO public.moon VALUES (108, 'Enceladus', false, true, 9, -198, 0, 113);
INSERT INTO public.moon VALUES (109, 'Mimas', false, true, 9, -200, 0, 113);
INSERT INTO public.moon VALUES (110, 'Titania', false, true, 18, -203, 0, 114);
INSERT INTO public.moon VALUES (111, 'Oberon', false, true, 18, -198, 0, 114);
INSERT INTO public.moon VALUES (112, 'Triton', false, true, 29, -235, 0, 115);
INSERT INTO public.moon VALUES (113, 'Proteus', false, false, 29, -220, 0, 115);
INSERT INTO public.moon VALUES (114, 'Nereid', false, false, 29, -220, 0, 115);
INSERT INTO public.moon VALUES (115, 'Luna Proxima', false, true, 4, -50, 0, 116);
INSERT INTO public.moon VALUES (116, 'Sirius Moon 1', false, true, 9, 90, 0, 117);
INSERT INTO public.moon VALUES (117, 'Vega Moon 1', false, true, 25, 30, 0, 118);
INSERT INTO public.moon VALUES (118, 'Rigel Moon 1', false, true, 863, 200, 0, 120);
INSERT INTO public.moon VALUES (119, 'Titan B', false, true, 18, -180, 0, 114);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (108, 'Mercury', false, true, 1, 167, 0, 54);
INSERT INTO public.planet VALUES (109, 'Venus', false, true, 0, 464, 0, 54);
INSERT INTO public.planet VALUES (110, 'Earth', true, true, 0, 15, 3, 54);
INSERT INTO public.planet VALUES (111, 'Mars', false, true, 1, -65, 0, 54);
INSERT INTO public.planet VALUES (112, 'Jupiter', false, true, 4, -110, 0, 54);
INSERT INTO public.planet VALUES (113, 'Saturn', false, true, 9, -140, 0, 54);
INSERT INTO public.planet VALUES (114, 'Uranus', false, true, 18, -195, 0, 54);
INSERT INTO public.planet VALUES (115, 'Neptune', false, true, 29, -200, 0, 54);
INSERT INTO public.planet VALUES (116, 'Proxima Centauri b', false, true, 4, -40, 0, 61);
INSERT INTO public.planet VALUES (117, 'Sirius b Prime', false, true, 9, 120, 0, 56);
INSERT INTO public.planet VALUES (118, 'Vega Prime', false, true, 25, 50, 0, 58);
INSERT INTO public.planet VALUES (119, 'Betelgeuse b', false, true, 643, 300, 0, 57);
INSERT INTO public.planet VALUES (120, 'Rigel b', false, true, 863, 450, 0, 59);
INSERT INTO public.planet VALUES (121, 'Polaris b', false, true, 433, -50, 0, 60);
INSERT INTO public.planet VALUES (122, 'Arcturus b', false, true, 37, 100, 0, 62);
INSERT INTO public.planet VALUES (123, 'Antares b', false, true, 550, 250, 0, 63);
INSERT INTO public.planet VALUES (124, 'Deneb b', false, true, 2615, 80, 0, 64);
INSERT INTO public.planet VALUES (125, 'Canopus b', false, true, 310, 110, 0, 65);
INSERT INTO public.planet VALUES (126, 'Aldebaran b', false, true, 65, 20, 0, 66);
INSERT INTO public.planet VALUES (127, 'Spica b', false, true, 250, 350, 0, 67);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (54, 'Sun', true, true, 0, 5500, 2, 1);
INSERT INTO public.star VALUES (55, 'Alpha Centauri A', false, true, 4, 5790, 0, 1);
INSERT INTO public.star VALUES (56, 'Sirius', false, true, 9, 9940, 0, 1);
INSERT INTO public.star VALUES (57, 'Betelgeuse', false, true, 643, 3500, 0, 1);
INSERT INTO public.star VALUES (58, 'Vega', false, true, 25, 9602, 0, 1);
INSERT INTO public.star VALUES (59, 'Rigel', false, true, 863, 12100, 0, 1);
INSERT INTO public.star VALUES (60, 'Polaris', false, true, 433, 6015, 0, 1);
INSERT INTO public.star VALUES (61, 'Proxima Centauri', false, true, 4, 3042, 0, 1);
INSERT INTO public.star VALUES (62, 'Arcturus', false, true, 37, 4286, 0, 1);
INSERT INTO public.star VALUES (63, 'Antares', false, true, 550, 3400, 0, 1);
INSERT INTO public.star VALUES (64, 'Deneb', false, true, 2615, 8525, 0, 1);
INSERT INTO public.star VALUES (65, 'Canopus', false, true, 310, 7350, 0, 1);
INSERT INTO public.star VALUES (66, 'Aldebaran', false, true, 65, 3910, 0, 1);
INSERT INTO public.star VALUES (67, 'Spica', false, true, 250, 22400, 0, 1);
INSERT INTO public.star VALUES (68, 'Pollux', false, true, 34, 4586, 0, 1);
INSERT INTO public.star VALUES (69, 'Fomalhaut', false, true, 25, 8590, 0, 1);
INSERT INTO public.star VALUES (70, 'Regulus', false, true, 79, 12460, 0, 1);
INSERT INTO public.star VALUES (71, 'Castor', false, true, 52, 10286, 0, 1);
INSERT INTO public.star VALUES (72, 'Bellatrix', false, true, 252, 21800, 0, 1);
INSERT INTO public.star VALUES (73, 'Elnath', false, true, 134, 13600, 0, 1);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 10, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 47, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 119, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 127, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 73, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey2 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

