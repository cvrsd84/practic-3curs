--
-- PostgreSQL database dump
--

\restrict FYnnveYgP7nmgylgomIJTRGDYNhraGWVSlxeKZbf6U9L0sa7cLi7RcaRzQViFyy

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-01 17:15:04

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
-- TOC entry 224 (class 1259 OID 17577)
-- Name: categori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categori (
    categori_id integer NOT NULL,
    category_name character varying(100)
);


ALTER TABLE public.categori OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17576)
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
-- TOC entry 226 (class 1259 OID 17585)
-- Name: creator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.creator (
    creator_id integer NOT NULL,
    creator_name character varying(100)
);


ALTER TABLE public.creator OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17584)
-- Name: creator_creator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.creator_creator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.creator_creator_id_seq OWNER TO postgres;

--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 225
-- Name: creator_creator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.creator_creator_id_seq OWNED BY public.creator.creator_id;


--
-- TOC entry 228 (class 1259 OID 17593)
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    material_id integer NOT NULL,
    material_name character varying(100)
);


ALTER TABLE public.material OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17592)
-- Name: material_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_material_id_seq OWNER TO postgres;

--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 227
-- Name: material_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_material_id_seq OWNED BY public.material.material_id;


--
-- TOC entry 232 (class 1259 OID 17609)
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_name character varying(100),
    model_price character varying(100),
    model_img character varying(100),
    model_categori integer,
    model_creator integer,
    model_material integer,
    model_size integer
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17608)
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
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 231
-- Name: model_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_model_id_seq OWNED BY public.model.model_id;


--
-- TOC entry 236 (class 1259 OID 17658)
-- Name: order_count; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_count (
    order_count_id integer NOT NULL,
    total_count character varying(100),
    orders_id integer,
    model_id integer
);


ALTER TABLE public.order_count OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17657)
-- Name: order_count_order_count_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_count_order_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_count_order_count_id_seq OWNER TO postgres;

--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_count_order_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_count_order_count_id_seq OWNED BY public.order_count.order_count_id;


--
-- TOC entry 234 (class 1259 OID 17637)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orders_id integer NOT NULL,
    users_id integer,
    orders_price character varying(100),
    orders_count character varying(100),
    orders_data date
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17636)
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
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orders_id_seq OWNED BY public.orders.orders_id;


--
-- TOC entry 220 (class 1259 OID 17556)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(100)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17555)
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
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- TOC entry 230 (class 1259 OID 17601)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    size_id integer NOT NULL,
    size_name character varying(100)
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17600)
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
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 229
-- Name: size_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.size_size_id_seq OWNED BY public.size.size_id;


--
-- TOC entry 222 (class 1259 OID 17564)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    users_id integer NOT NULL,
    users_name character varying(100),
    users_familiya character varying(100),
    users_ochestvo character varying(100),
    users_login character varying(100),
    role_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17563)
-- Name: users_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_users_id_seq OWNER TO postgres;

--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.users_id;


--
-- TOC entry 4898 (class 2604 OID 17580)
-- Name: categori categori_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categori ALTER COLUMN categori_id SET DEFAULT nextval('public.categori_categori_id_seq'::regclass);


--
-- TOC entry 4899 (class 2604 OID 17588)
-- Name: creator creator_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creator ALTER COLUMN creator_id SET DEFAULT nextval('public.creator_creator_id_seq'::regclass);


--
-- TOC entry 4900 (class 2604 OID 17596)
-- Name: material material_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN material_id SET DEFAULT nextval('public.material_material_id_seq'::regclass);


--
-- TOC entry 4902 (class 2604 OID 17612)
-- Name: model model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN model_id SET DEFAULT nextval('public.model_model_id_seq'::regclass);


--
-- TOC entry 4904 (class 2604 OID 17661)
-- Name: order_count order_count_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_count ALTER COLUMN order_count_id SET DEFAULT nextval('public.order_count_order_count_id_seq'::regclass);


--
-- TOC entry 4903 (class 2604 OID 17640)
-- Name: orders orders_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orders_id SET DEFAULT nextval('public.orders_orders_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 17559)
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 17604)
-- Name: size size_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size ALTER COLUMN size_id SET DEFAULT nextval('public.size_size_id_seq'::regclass);


--
-- TOC entry 4897 (class 2604 OID 17567)
-- Name: users users_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN users_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);


--
-- TOC entry 5083 (class 0 OID 17577)
-- Dependencies: 224
-- Data for Name: categori; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categori VALUES (1, '1;Горный');
INSERT INTO public.categori VALUES (2, '2;Городской');
INSERT INTO public.categori VALUES (3, '1;Горный');
INSERT INTO public.categori VALUES (4, '2;Городской');
INSERT INTO public.categori VALUES (5, ';Горный');
INSERT INTO public.categori VALUES (6, ';Городской');
INSERT INTO public.categori VALUES (7, 'Горный');
INSERT INTO public.categori VALUES (8, 'Городской');


--
-- TOC entry 5085 (class 0 OID 17585)
-- Dependencies: 226
-- Data for Name: creator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.creator VALUES (1, '1;Trek');
INSERT INTO public.creator VALUES (2, '2;Giant');
INSERT INTO public.creator VALUES (3, '1;Trek');
INSERT INTO public.creator VALUES (4, '2;Giant');


--
-- TOC entry 5087 (class 0 OID 17593)
-- Dependencies: 228
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.material VALUES (1, '1;Алюминий');
INSERT INTO public.material VALUES (2, '2;Сталь');
INSERT INTO public.material VALUES (3, '1;Алюминий');
INSERT INTO public.material VALUES (4, '2;Сталь');


--
-- TOC entry 5091 (class 0 OID 17609)
-- Dependencies: 232
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.model VALUES (16, 'Trek Marlin 5', '45000', 'img/trek_m5.jpg', 1, 1, 1, 1);
INSERT INTO public.model VALUES (17, 'Trek Marlin 5', '45000', 'img/trek_m5.jpg', 1, 1, 1, 2);
INSERT INTO public.model VALUES (18, 'Giant Escape 3', '30000', 'img/giant_e3.jpg', 2, 2, 2, 3);
INSERT INTO public.model VALUES (19, 'Trek Marlin 5', '45000', 'img/trek_m5.jpg', 1, 1, 1, 3);
INSERT INTO public.model VALUES (20, 'Giant Escape 3', '30000', 'img/giant_e3.jpg', 2, 2, 2, 3);


--
-- TOC entry 5095 (class 0 OID 17658)
-- Dependencies: 236
-- Data for Name: order_count; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_count VALUES (11, '3', 6, 16);
INSERT INTO public.order_count VALUES (12, '1', 7, 17);
INSERT INTO public.order_count VALUES (13, '1', 8, 18);
INSERT INTO public.order_count VALUES (14, '1', 9, 19);
INSERT INTO public.order_count VALUES (15, '1', 10, 20);


--
-- TOC entry 5093 (class 0 OID 17637)
-- Dependencies: 234
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (6, 1, '45000', '3', '2026-09-10');
INSERT INTO public.orders VALUES (7, 1, '45000', '1', '2026-09-10');
INSERT INTO public.orders VALUES (8, 2, '30000', '1', '2026-09-15');
INSERT INTO public.orders VALUES (9, 3, '45000', '1', '2026-10-01');
INSERT INTO public.orders VALUES (10, 3, '30000', '1', '2026-10-01');


--
-- TOC entry 5079 (class 0 OID 17556)
-- Dependencies: 220
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role VALUES (1, '1;Пользователь');
INSERT INTO public.role VALUES (2, '2;Менеджер');
INSERT INTO public.role VALUES (3, '3;Админ');


--
-- TOC entry 5089 (class 0 OID 17601)
-- Dependencies: 230
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.size VALUES (1, '1;M');
INSERT INTO public.size VALUES (2, '2;L');
INSERT INTO public.size VALUES (3, '3;S');
INSERT INTO public.size VALUES (4, '1;M');
INSERT INTO public.size VALUES (5, '2;L');
INSERT INTO public.size VALUES (6, '3;S');


--
-- TOC entry 5081 (class 0 OID 17564)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Алина', 'Степанова', 'Александровна', 'okon', 1);
INSERT INTO public.users VALUES (2, 'Дима', 'Байков', 'Александрович', 'cvrsd84', 1);
INSERT INTO public.users VALUES (3, 'Александр', 'Егоров', 'Евгеньевич', 'egor_dobriy', 1);


--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 223
-- Name: categori_categori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categori_categori_id_seq', 8, true);


--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 225
-- Name: creator_creator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.creator_creator_id_seq', 4, true);


--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 227
-- Name: material_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_material_id_seq', 4, true);


--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 231
-- Name: model_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_model_id_seq', 20, true);


--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_count_order_count_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_count_order_count_id_seq', 15, true);


--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orders_id_seq', 10, true);


--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_role_id_seq', 3, true);


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 229
-- Name: size_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_size_id_seq', 6, true);


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_users_id_seq', 3, true);


--
-- TOC entry 4910 (class 2606 OID 17583)
-- Name: categori categori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categori
    ADD CONSTRAINT categori_pkey PRIMARY KEY (categori_id);


--
-- TOC entry 4912 (class 2606 OID 17591)
-- Name: creator creator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creator
    ADD CONSTRAINT creator_pkey PRIMARY KEY (creator_id);


--
-- TOC entry 4914 (class 2606 OID 17599)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (material_id);


--
-- TOC entry 4918 (class 2606 OID 17615)
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);


--
-- TOC entry 4922 (class 2606 OID 17664)
-- Name: order_count order_count_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_count
    ADD CONSTRAINT order_count_pkey PRIMARY KEY (order_count_id);


--
-- TOC entry 4920 (class 2606 OID 17643)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orders_id);


--
-- TOC entry 4906 (class 2606 OID 17562)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 4916 (class 2606 OID 17607)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (size_id);


--
-- TOC entry 4908 (class 2606 OID 17570)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (users_id);


--
-- TOC entry 4924 (class 2606 OID 17616)
-- Name: model model_model_categori_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_categori_fkey FOREIGN KEY (model_categori) REFERENCES public.categori(categori_id);


--
-- TOC entry 4925 (class 2606 OID 17621)
-- Name: model model_model_creator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_creator_fkey FOREIGN KEY (model_creator) REFERENCES public.creator(creator_id);


--
-- TOC entry 4926 (class 2606 OID 17626)
-- Name: model model_model_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_material_fkey FOREIGN KEY (model_material) REFERENCES public.material(material_id);


--
-- TOC entry 4927 (class 2606 OID 17631)
-- Name: model model_model_size_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_model_size_fkey FOREIGN KEY (model_size) REFERENCES public.size(size_id);


--
-- TOC entry 4929 (class 2606 OID 17670)
-- Name: order_count order_count_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_count
    ADD CONSTRAINT order_count_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.model(model_id);


--
-- TOC entry 4930 (class 2606 OID 17665)
-- Name: order_count order_count_orders_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_count
    ADD CONSTRAINT order_count_orders_id_fkey FOREIGN KEY (orders_id) REFERENCES public.orders(orders_id);


--
-- TOC entry 4928 (class 2606 OID 17644)
-- Name: orders orders_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- TOC entry 4923 (class 2606 OID 17571)
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id);


-- Completed on 2026-10-01 17:15:04

--
-- PostgreSQL database dump complete
--

\unrestrict FYnnveYgP7nmgylgomIJTRGDYNhraGWVSlxeKZbf6U9L0sa7cLi7RcaRzQViFyy

