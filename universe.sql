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
    name character varying NOT NULL,
    age integer NOT NULL,
    galaxy_type character varying,
    description text
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
-- Name: living_organism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.living_organism (
    living_organism_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.living_organism OWNER TO freecodecamp;

--
-- Name: living_organism_living_organism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.living_organism_living_organism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.living_organism_living_organism_id_seq OWNER TO freecodecamp;

--
-- Name: living_organism_living_organism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.living_organism_living_organism_id_seq OWNED BY public.living_organism.living_organism_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_planet integer NOT NULL,
    description text,
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean NOT NULL,
    description text,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age numeric,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: living_organism living_organism_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_organism ALTER COLUMN living_organism_id SET DEFAULT nextval('public.living_organism_living_organism_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13800, 'Spiral', 'The galaxy that contains our solar system.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral', 'The nearest spiral galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000, 'Spiral', 'A member of the Local Group of galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 10000, 'Spiral', 'Known for its bright nucleus and dust lanes.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 10000, 'Spiral', 'Famous for its distinct spiral structure.');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13000, 'Elliptical', 'Home to the first black hole ever photographed.');


--
-- Data for Name: living_organism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.living_organism VALUES (1, 'Homo sapiens', 1);
INSERT INTO public.living_organism VALUES (2, 'Martian Microbe', 2);
INSERT INTO public.living_organism VALUES (3, 'Venusian Bacteria', 3);
INSERT INTO public.living_organism VALUES (4, 'Europa Sea Creature', 4);
INSERT INTO public.living_organism VALUES (5, 'Gliesean Plant', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Oberon', 583500, 'The second-largest moon of Uranus.', 6);
INSERT INTO public.moon VALUES (2, 'Titania', 435910, 'The largest moon of Uranus.', 6);
INSERT INTO public.moon VALUES (3, 'Miranda', 129390, 'A small, icy moon of Uranus with extreme geological activity.', 6);
INSERT INTO public.moon VALUES (4, 'Ariel', 191020, 'A moon of Uranus with a relatively smooth surface.', 6);
INSERT INTO public.moon VALUES (5, 'Umbriel', 266000, 'A dark moon of Uranus with ancient surface features.', 6);
INSERT INTO public.moon VALUES (6, 'Proteus', 117600, 'A large, irregularly shaped moon of Neptune.', 8);
INSERT INTO public.moon VALUES (7, 'Luna', 384400, 'Earth''s only natural satellite.', 1);
INSERT INTO public.moon VALUES (8, 'Phobos', 9377, 'One of Mars''s two moons, believed to be a captured asteroid.', 2);
INSERT INTO public.moon VALUES (9, 'Deimos', 23460, 'The smaller and more distant of Mars''s two moons.', 2);
INSERT INTO public.moon VALUES (10, 'Io', 421700, 'The most volcanically active body in the solar system, orbiting Jupiter.', 4);
INSERT INTO public.moon VALUES (11, 'Europa', 670900, 'An ice-covered moon with a subsurface ocean, orbiting Jupiter.', 4);
INSERT INTO public.moon VALUES (12, 'Ganymede', 1070400, 'The largest moon in the solar system, orbiting Jupiter.', 4);
INSERT INTO public.moon VALUES (13, 'Callisto', 1883000, 'A heavily cratered moon, orbiting Jupiter.', 4);
INSERT INTO public.moon VALUES (14, 'Titan', 1221870, 'Saturn''s largest moon, known for its thick atmosphere.', 5);
INSERT INTO public.moon VALUES (15, 'Enceladus', 238042, 'An ice-covered moon with geysers that shoot water into space, orbiting Saturn.', 5);
INSERT INTO public.moon VALUES (16, 'Mimas', 185540, 'A small moon with a large crater, orbiting Saturn.', 5);
INSERT INTO public.moon VALUES (17, 'Hyperion', 1481010, 'A highly irregular moon with a sponge-like appearance, orbiting Saturn.', 5);
INSERT INTO public.moon VALUES (18, 'Triton', 354800, 'The largest moon of Neptune, with a retrograde orbit.', 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 5513000, 'An outer moon of Neptune with an eccentric orbit.', 8);
INSERT INTO public.moon VALUES (20, 'Charon', 19571, 'Pluto''s largest moon, nearly half the size of Pluto itself.', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'The only known planet with life.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'The red planet, known for its surface features.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'A rocky planet with a thick, toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 'The largest planet in the solar system, a gas giant.', 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Famous for its stunning rings, a gas giant.', 1);
INSERT INTO public.planet VALUES (6, 'Gliese 581g', true, 'An exoplanet in the Gliese 581 system, possibly habitable.', 2);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', true, 'An exoplanet in the habitable zone of its star.', 3);
INSERT INTO public.planet VALUES (8, 'HD 209458 b', false, 'A gas giant known for its atmosphere.', 4);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', true, 'An Earth-sized exoplanet in the habitable zone.', 2);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', true, 'One of the seven Earth-sized planets in the TRAPPIST-1 system.', 5);
INSERT INTO public.planet VALUES (11, 'Luyten b', true, 'An exoplanet located in the habitable zone of its star.', 6);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', false, 'The first exoplanet discovered around a sun-like star.', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 200, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.24, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 5.9, true, 1);
INSERT INTO public.star VALUES (5, 'Vega', 455, true, 1);
INSERT INTO public.star VALUES (6, 'Spica', 11, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: living_organism_living_organism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.living_organism_living_organism_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: living_organism living_organism_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_organism
    ADD CONSTRAINT living_organism_name_key UNIQUE (name);


--
-- Name: living_organism living_organism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_organism
    ADD CONSTRAINT living_organism_pkey PRIMARY KEY (living_organism_id);


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
-- Name: living_organism living_organism_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_organism
    ADD CONSTRAINT living_organism_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

