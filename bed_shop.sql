--
-- PostgreSQL database dump
--

\restrict u2gxUEUUmOqLAHnjxee1jCTUa7SFsoRaY8OiVdaOmNYdqUdtg7VgCze23VAAtSy

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-09-30 19:13:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 17441)
-- Name: categori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categori (
    categori_id integer NOT NULL,
    categor_name character varying(100)
);


ALTER TABLE public.categori OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17440)
-- Name: categori_categori_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categori_categori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categori_categori_id_seq OWNER TO postgres;

--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 223
-- Name: categori_categori_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categori_categori_id_seq OWNED BY public.categori.categori_id;


--
-- TOC entry 226 (class 1259 OID 17449)
-- Name: creater; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.creater (
    creater_id integer NOT NULL,
    creater_name character varying(100)
);


ALTER TABLE public.creater OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17448)
-- Name: creater_creater_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.creater_creater_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.creater_creater_id_seq OWNER TO postgres;

--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 225
-- Name: creater_creater_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.creater_creater_id_seq OWNED BY public.creater.creater_id;


--
-- TOC entry 232 (class 1259 OID 17473)
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_name character varying(100),
    model_price integer,
    model_info character varying(1000),
    model_count integer,
    model_img character varying(100),
    model_categori integer,
    model_creater integer,
    model_sostav integer,
    model_size integer
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17472)
-- Name: model_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.model_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_model_id_seq OWNER TO postgres;

--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 231
-- Name: model_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_model_id_seq OWNED BY public.model.model_id;


--
-- TOC entry 234 (class 1259 OID 17503)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orders_id integer NOT NULL,
    user_id integer,
    orders_price integer,
    orders_count integer,
    orders_data date
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17516)
-- Name: orders_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_model (
    orders_model_id integer NOT NULL,
    model_id integer,
    orders_id integer,
    total_count integer
);


ALTER TABLE public.orders_model OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17515)
-- Name: orders_model_orders_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_model_orders_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_model_orders_model_id_seq OWNER TO postgres;

--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_model_orders_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_model_orders_model_id_seq OWNED BY public.orders_model.orders_model_id;


--
-- TOC entry 233 (class 1259 OID 17502)
-- Name: orders_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_orders_id_seq OWNER TO postgres;

--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orders_id_seq OWNED BY public.orders.orders_id;


--
-- TOC entry 220 (class 1259 OID 17420)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17419)
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.role_role_id_seq OWNER TO postgres;

--
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- TOC entry 230 (class 1259 OID 17465)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    size_id integer NOT NULL,
    size_name character varying(100)
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17464)
-- Name: size_size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.size_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.size_size_id_seq OWNER TO postgres;

--
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 229
-- Name: size_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.size_size_id_seq OWNED BY public.size.size_id;


--
-- TOC entry 228 (class 1259 OID 17457)
-- Name: sostav; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sostav (
    sostav_id integer NOT NULL,
    sostav_name character varying(100)
);


ALTER TABLE public.sostav OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17456)
-- Name: sostav_sostav_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sostav_sostav_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sostav_sostav_id_seq OWNER TO postgres;

--
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 227
-- Name: sostav_sostav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sostav_sostav_id_seq OWNED BY public.sostav.sostav_id;


--
-- TOC entry 222 (class 1259 OID 17428)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(100),
    user_famil character varying(100),
    user_otchestvo character varying(100),
    user_login character varying(100),
    role_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17427)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 4898 (class 2604 OID 17444)
-- Name: categori categori_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categori ALTER COLUMN categori_id SET DEFAULT nextval('public.categori_categori_id_seq'::regclass);


--
-- TOC entry 4899 (class 2604 OID 17452)
-- Name: creater creater_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creater ALTER COLUMN creater_id SET DEFAULT nextval('public.creater_creater_id_seq'::regclass);


--
-- TOC entry 4902 (class 2604 OID 17476)
-- Name: model model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN model_id SET DEFAULT nextval('public.model_model_id_seq'::regclass);


--
-- TOC entry 4903 (class 2604 OID 17506)
-- Name: orders orders_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orders_id SET DEFAULT nextval('public.orders_orders_id_seq'::regclass);


--
-- TOC entry 4904 (class 2604 OID 17519)
-- Name: orders_model orders_model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_model ALTER COLUMN orders_model_id SET DEFAULT nextval('public.orders_model_orders_model_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 17423)
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 17468)
-- Name: size size_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size ALTER COLUMN size_id SET DEFAULT nextval('public.size_size_id_seq'::regclass);


--
-- TOC entry 4900 (class 2604 OID 17460)
-- Name: sostav sostav_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sostav ALTER COLUMN sostav_id SET DEFAULT nextval('public.sostav_sostav_id_seq'::regclass);


--
-- TOC entry 4897 (class 2604 OID 17431)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 5083 (class 0 OID 17441)
-- Dependencies: 224
-- Data for Name: categori; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categori VALUES (1, 'Сатин');
INSERT INTO public.categori VALUES (2, 'Бязь');
INSERT INTO public.categori VALUES (3, 'Шелк');


--
-- TOC entry 5085 (class 0 OID 17449)
-- Dependencies: 226
-- Data for Name: creater; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.creater VALUES (1, 'Ивановский Текстиль');
INSERT INTO public.creater VALUES (2, 'Текстиль-Про');
INSERT INTO public.creater VALUES (3, 'Silk Dreams');


--
-- TOC entry 5091 (class 0 OID 17473)
-- Dependencies: 232
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.model VALUES (1, 'Сатин Премиум', 3500, 'Нежный цветочный принт', 15, 'img/satin_prem.img', 1, 1, 1, 1);
INSERT INTO public.model VALUES (2, 'Сатин Премиум', 4200, 'Нежный цветочный принт', 10, 'img/satin_prem.img', 1, 1, 1, 2);
INSERT INTO public.model VALUES (3, 'Бязь Классик', 4800, 'Геометрический узор', 8, 'img/byaz_cl.img', 2, 2, 2, 3);
INSERT INTO public.model VALUES (4, 'Шелк Люкс', 12000, 'Однотонный, гладкий', 3, 'img/silk_lux.img', 3, 3, 3, 4);


--
-- TOC entry 5093 (class 0 OID 17503)
-- Dependencies: 234
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (1, 1, 7700, 2, '2026-10-12');
INSERT INTO public.orders VALUES (2, 2, 4800, 1, '2026-10-15');
INSERT INTO public.orders VALUES (3, 3, 12000, 1, '2026-10-20');


--
-- TOC entry 5095 (class 0 OID 17516)
-- Dependencies: 236
-- Data for Name: orders_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders_model VALUES (1, 1, 1, 1);
INSERT INTO public.orders_model VALUES (2, 2, 1, 1);
INSERT INTO public.orders_model VALUES (3, 3, 2, 1);
INSERT INTO public.orders_model VALUES (4, 4, 3, 1);


--
-- TOC entry 5079 (class 0 OID 17420)
-- Dependencies: 220
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role VALUES (1, 'Админ');
INSERT INTO public.role VALUES (2, 'Менеджер');
INSERT INTO public.role VALUES (3, 'Клиент');


--
-- TOC entry 5089 (class 0 OID 17465)
-- Dependencies: 230
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.size VALUES (1, '1.5-спальный');
INSERT INTO public.size VALUES (2, '2-спальный');
INSERT INTO public.size VALUES (3, 'Евро');
INSERT INTO public.size VALUES (4, 'Семейный');


--
-- TOC entry 5087 (class 0 OID 17457)
-- Dependencies: 228
-- Data for Name: sostav; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sostav VALUES (1, '100% Сатин');
INSERT INTO public.sostav VALUES (2, '100% Бязь');
INSERT INTO public.sostav VALUES (3, 'Натуральный шелк');


--
-- TOC entry 5081 (class 0 OID 17428)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Алина', 'Степанова', 'Александровна', 'okno', 3);
INSERT INTO public.users VALUES (2, 'Александер', 'Егоров', 'Евгеньевич', 'Egor_zloy', 3);
INSERT INTO public.users VALUES (3, 'Дмитрий', 'Байков', 'Александрович', 'cvrsd84', 3);


--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 223
-- Name: categori_categori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categori_categori_id_seq', 3, true);


--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 225
-- Name: creater_creater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.creater_creater_id_seq', 3, true);


--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 231
-- Name: model_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_model_id_seq', 4, true);


--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_model_orders_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_model_orders_model_id_seq', 4, true);


--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orders_id_seq', 3, true);


--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_role_id_seq', 3, true);


--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 229
-- Name: size_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_size_id_seq', 4, true);


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 227
-- Name: sostav_sostav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sostav_sostav_id_seq', 3, true);


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 3, true);


--
-- TOC entry 4910 (class 2606 OID 17447)
-- Name: categori categori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categori
    ADD CONSTRAINT categori_pkey PRIMARY KEY (categori_id);


--
-- TOC entry 4912 (class 2606 OID 17455)
-- Name: creater creater_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creater
    ADD CONSTRAINT creater_pkey PRIMARY KEY (creater_id);


--
-- TOC entry 4918 (class 2606 OID 17481)
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);


--
-- TOC entry 4922 (class 2606 OID 17522)
-- Name: orders_model orders_model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_model
    ADD CONSTRAINT orders_model_pkey PRIMARY KEY (orders_model_id);


--
-- TOC entry 4920 (class 2606 OID 17509)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orders_id);


--
-- TOC entry 4906 (class 2606 OID 17426)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 4916 (class 2606 OID 17471)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (size_id);


--
-- TOC entry 4914 (class 2606 OID 17463)
-- Name: sostav sostav_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sostav
    ADD CONSTRAINT sostav_pkey PRIMARY KEY (sostav_id);


--
-- TOC entry 4908 (class 2606 OID 17434)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4924 (class 2606 OID 17482)
-- Name: model model_model_categori_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_categori_fkey FOREIGN KEY (model_categori) REFERENCES public.categori(categori_id);


--
-- TOC entry 4925 (class 2606 OID 17487)
-- Name: model model_model_creater_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_creater_fkey FOREIGN KEY (model_creater) REFERENCES public.creater(creater_id);


--
-- TOC entry 4926 (class 2606 OID 17497)
-- Name: model model_model_size_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_size_fkey FOREIGN KEY (model_size) REFERENCES public.size(size_id);


--
-- TOC entry 4927 (class 2606 OID 17492)
-- Name: model model_model_sostav_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_sostav_fkey FOREIGN KEY (model_sostav) REFERENCES public.sostav(sostav_id);


--
-- TOC entry 4929 (class 2606 OID 17523)
-- Name: orders_model orders_model_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_model
    ADD CONSTRAINT orders_model_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.model(model_id);


--
-- TOC entry 4930 (class 2606 OID 17528)
-- Name: orders_model orders_model_orders_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_model
    ADD CONSTRAINT orders_model_orders_id_fkey FOREIGN KEY (orders_id) REFERENCES public.orders(orders_id);


--
-- TOC entry 4928 (class 2606 OID 17510)
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 4923 (class 2606 OID 17435)
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id);


-- Completed on 2026-09-30 19:13:17

--
-- PostgreSQL database dump complete
--

\unrestrict u2gxUEUUmOqLAHnjxee1jCTUa7SFsoRaY8OiVdaOmNYdqUdtg7VgCze23VAAtSy

