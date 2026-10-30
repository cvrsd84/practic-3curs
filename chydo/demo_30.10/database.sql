--
-- PostgreSQL database dump
--

\restrict 1K7ZwqdXOh3K5K8HfeIH5SGO0QdON7xc5XbM62v3mL2ywDref7x5K5edNRhaniX

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-30 13:40:46

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
-- TOC entry 226 (class 1259 OID 27924)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(100)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 27923)
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_category_id_seq OWNER TO postgres;

--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 225
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- TOC entry 228 (class 1259 OID 27932)
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_podcategory character varying(1000),
    model_name character varying(1000),
    model_creator character varying(1000),
    model_img character varying(1000),
    model_bio character varying(1000),
    model_sostav character varying(1000),
    model_price character varying(1000),
    category_id integer
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 27931)
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
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 227
-- Name: model_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_model_id_seq OWNED BY public.model.model_id;


--
-- TOC entry 234 (class 1259 OID 27980)
-- Name: order_sostav; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_sostav (
    order_sostav_id integer NOT NULL,
    model_id integer,
    size_id integer,
    count_order character varying(1000),
    price_one character varying(1000),
    orders_id integer
);


ALTER TABLE public.order_sostav OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 27979)
-- Name: order_sostav_order_sostav_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_sostav_order_sostav_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_sostav_order_sostav_id_seq OWNER TO postgres;

--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 233
-- Name: order_sostav_order_sostav_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_sostav_order_sostav_id_seq OWNED BY public.order_sostav.order_sostav_id;


--
-- TOC entry 232 (class 1259 OID 27967)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orders_id integer NOT NULL,
    orders_data date,
    users_id integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 27966)
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
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 231
-- Name: orders_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orders_id_seq OWNED BY public.orders.orders_id;


--
-- TOC entry 220 (class 1259 OID 27895)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(100)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 27894)
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
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- TOC entry 224 (class 1259 OID 27916)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    size_id integer NOT NULL,
    size_name character varying(100)
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 27915)
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
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 223
-- Name: size_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.size_size_id_seq OWNED BY public.size.size_id;


--
-- TOC entry 230 (class 1259 OID 27947)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    stock_id integer NOT NULL,
    model_id integer,
    size_id integer,
    count_for_order character varying(1000)
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 27946)
-- Name: stock_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stock_stock_id_seq OWNER TO postgres;

--
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 229
-- Name: stock_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_stock_id_seq OWNED BY public.stock.stock_id;


--
-- TOC entry 222 (class 1259 OID 27903)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    users_id integer NOT NULL,
    users_name character varying(100),
    users_fam character varying(100),
    users_otc character varying(100),
    users_login character varying(100),
    role_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 27902)
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
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.users_id;


--
-- TOC entry 4894 (class 2604 OID 27927)
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- TOC entry 4895 (class 2604 OID 27935)
-- Name: model model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN model_id SET DEFAULT nextval('public.model_model_id_seq'::regclass);


--
-- TOC entry 4898 (class 2604 OID 27983)
-- Name: order_sostav order_sostav_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sostav ALTER COLUMN order_sostav_id SET DEFAULT nextval('public.order_sostav_order_sostav_id_seq'::regclass);


--
-- TOC entry 4897 (class 2604 OID 27970)
-- Name: orders orders_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN orders_id SET DEFAULT nextval('public.orders_orders_id_seq'::regclass);


--
-- TOC entry 4891 (class 2604 OID 27898)
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- TOC entry 4893 (class 2604 OID 27919)
-- Name: size size_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size ALTER COLUMN size_id SET DEFAULT nextval('public.size_size_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 27950)
-- Name: stock stock_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock ALTER COLUMN stock_id SET DEFAULT nextval('public.stock_stock_id_seq'::regclass);


--
-- TOC entry 4892 (class 2604 OID 27906)
-- Name: users users_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN users_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);


--
-- TOC entry 5077 (class 0 OID 27924)
-- Dependencies: 226
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category VALUES (1, 'Детская обувь');
INSERT INTO public.category VALUES (2, 'Женская обувь');
INSERT INTO public.category VALUES (3, 'Мужская обувь');


--
-- TOC entry 5079 (class 0 OID 27932)
-- Dependencies: 228
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.model VALUES (1, 'Кроссовки', 'Кроссовки детские «Звёздочка» экокожа', 'Малыш-Спорт', 'IMG_KS_195217.png', 'Кроссовки детские «Звёздочка» экокожа. Производитель: ООО «Малыш-Спорт»  г. Смоленск', 'Верх — экокожа (полиуретан на хлопковой основе)  подкладка — хлопок 100%  подошва — ПВХ', '2190', 1);
INSERT INTO public.model VALUES (2, 'Кроссовки', 'Кроссовки детские «Гонщик» экокожа', 'Топ-Топ', 'IMG_KS_195213.png', 'Кроссовки детские «Гонщик» экокожа. Производитель: Фабрика «Топ-Топ»  г. Киров', 'Верх — экокожа (микрофибра)  подкладка — текстиль сетчатый (полиэстер)  подошва — термопластичная резина (ТЭП)', '2490', 1);
INSERT INTO public.model VALUES (3, 'Кроссовки', 'Кроссовки детские «Радуга» экокожа перфорированная', 'Лапушка', 'IMG_KS_195222.png', 'Кроссовки детские «Радуга» экокожа перфорированная. Производитель: ИП Смирнова Л.В. (бренд «Лапушка»)  г. Вологда', 'Верх — экокожа перфорированная  вставки — нейлон  стелька — ортопедическая с латексной подушкой  подошва — ЭВА', '1990', 1);
INSERT INTO public.model VALUES (4, 'Сапоги', 'Сапожки детские «Снежинка» зимние на меху', 'Тёплые ножки', 'IMG_KB_185501.png', 'Сапожки детские «Снежинка» зимние на меху. Производитель: ООО «Тёплые ножки»  г. Новосибирск', 'Верх — экокожа морозостойкая  утеплитель — искусственный мех (акрил 70%  полиэстер 30%)  подкладка — флис  подошва — термоэластопласт (ТЭП)', '3490', 1);
INSERT INTO public.model VALUES (5, 'Сапоги', 'Сапожки детские «Медвежонок» демисезонные непромокаемые', 'Северята', 'IMG_KB_164816.png', 'Сапожки детские «Медвежонок» демисезонные непромокаемые. Производитель: Компания «Северята»  г. Архангельск', 'Верх — плащёвая ткань с водоотталкивающей пропиткой (полиэстер 100%)  отделка — экокожа  подкладка — микрофибра  мембрана — AirTex  подошва — резина', '3190', 1);
INSERT INTO public.model VALUES (6, 'Сапоги', 'Сапожки детские «Принцесса» кожаные', 'Весна', 'IMG_KB_164811.png', 'Сапожки детские «Принцесса» кожаные. Производитель: Мастерская «Весна»  г. Тула', 'Верх — натуральная кожа (КРС)  подкладка — шерсть натуральная (70%)  байка (30%)  стелька — войлочная  подошва — полиуретан', '4290', 1);
INSERT INTO public.model VALUES (7, 'Босоножки', 'Сандалии детские «Пчёлка» ортопедические летние', 'Здоровый шаг', 'IMG_KSd_195207.png', 'Сандалии детские «Пчёлка» ортопедические летние. Производитель: ООО «Здоровый шаг»  г. Воронеж', 'Верх — нубук натуральный  подкладка — кожа растительного дубления  стелька — анатомическая с супинатором (латекс + пробка)  подошва — каучук', '2790', 1);
INSERT INTO public.model VALUES (8, 'Босоножки', 'Сандалии детские «Морячок» текстильные с фиксатором', 'Карапуз', 'IMG_KSd_185508.png', 'Сандалии детские «Морячок» текстильные с фиксатором. Производитель: ИП Кузнецов А.Д. (бренд «Карапуз»)  г. Краснодар', 'Верх — джинсовая ткань (хлопок 100%)  окантовка — искусственная кожа  подкладка — хлопок  подошва — ЭВА лёгкая', '1690', 1);
INSERT INTO public.model VALUES (9, 'Туфли', 'Туфли детские «Бантик» лаковые праздничные', 'Маленький франт', 'IMG_KSho_185512.png', 'Туфли детские «Бантик» лаковые праздничные. Производитель: Дом обуви «Маленький франт»  г. Москва', 'Верх — искусственная лаковая кожа (ПВХ)  носок усиленный — термопластичный полиуретан  подкладка — кожа искусственная дышащая  стелька — анатомическая с амортизацией  подошва — полиуретан', '2390', 1);
INSERT INTO public.model VALUES (10, 'Сапоги', 'Сапоги зимние натуральная кожа', 'Барбари', 'IMG_WB_170905.png', 'Сапоги женские зимние  нескользящая  устойчивая подошва  натуральный мех. Производитель: Дом обуви «Барбари»  г. Новороссийск ', 'Верх — натуральная кожа  подкладка — евромех  натуральный мех  текстильный утеплитель  подошва — резина', '25000', 2);
INSERT INTO public.model VALUES (11, 'Сапоги', 'Сапоги осенние натуральная кожа', 'Барбари', 'IMG_WB_170859.png', 'Сапоги женские демисезонные из высококачественной натуральной кожи. Производитель: Дом обуви «Барбари»  г. Новороссийск ', 'Верх — натуральная кожа  подкладка — текстильный утеплитель  стелька — текстиль  подошва — ТПР', '15000', 2);
INSERT INTO public.model VALUES (12, 'Сапоги', 'Сапоги трубы демисезонные замшевые', 'Твой комфорт', 'IMG_WB_170906.png', 'Сапоги женские демисезонные замшевые. Производитель: ОАО «Твой комфорт»  г. Ярославль', 'Верх — натуральная замша  утепленные  тракторная подошва  стелька — байка  подошва — резина', '17000', 2);
INSERT INTO public.model VALUES (13, 'Босоножки', 'Босоножки «Песчаный берег» коричневые', 'Стиль и комфорт', 'IMG_WSd_174332.png', 'Коричневая кожаная модель с открытым носком  боковой пряжкой и закрытым каблуком. Производитель: ИП «Стиль и комфорт»  г. Санкт-Петербург', 'Верх — 100% козья кожа  подкладка — 100% кожа  подошва: 100% кожа', '7500', 2);
INSERT INTO public.model VALUES (14, 'Босоножки', 'Женские босоножки «Черный кофе» со скульптурным каблуком', 'Кожевенные традиции', 'IMG_WSd_185156.png', 'Открытый носок и ремешок со сборной пряжкой  низкий каблук и резиновая подошва гарантируют комфорт. Производитель: ЗАО «Кожевенные традиции»  г. Вятка', 'Верх — кожа собственного производств  подкладка — кожа  подошва: резина', '5600', 2);
INSERT INTO public.model VALUES (15, 'Босоножки', 'Босоножки женские «Летний бриз»', 'Модный силуэт', 'IMG_WSd_185551.png', 'Босоножки женские кожаные белые  регулируемый ремешок  закрытый каблук и кожаная подошва. Производитель: ООО «Модный силуэт»  г. Кострома', 'Верх — натуральная кожа  подкладка — натуральная кожа  подошва — кожа', '7130', 2);
INSERT INTO public.model VALUES (16, 'Туфли', 'Демисезонные туфли натуральная кожа', 'Модный силуэт', 'IMG_WSho_174409.png', 'Комфортные лаконичные лодочки  классический дизайна с современными акцентами. Производитель: ООО «Модный силуэт»  г. Кострома', 'Верх — натуральная овечья кожа  подкладка и стелька — натуральная овечья кожа  подошва — резина', '12340', 2);
INSERT INTO public.model VALUES (17, 'Туфли', 'Туфли женские натуральная кожа с металлическими вставками', 'Кожевенные традиции', 'IMG_WSho_185202.png', 'Стильные туфли для весеннего и летнего сезона. Производитель: ЗАО «Кожевенные традиции»  г. Вятка', 'Верх — натуральная телячьей кожа  металлическая пряжка  подкладка и стелька— натуральная овечья кожа  подошва — резина', '7757', 2);
INSERT INTO public.model VALUES (18, 'Туфли', 'Туфли классические лодочки натуральная кожа', 'Стиль и комфорт', 'IMG_WSho_185545.png', 'Модель из натуральной кожи  классический острый носок и изящная шпилька. Производитель: ИП «Стиль и комфорт»  г. Санкт-Петербург', 'Верх — натуральная кожа  подкладка и стелька — натуральная кожа  подошва — тунит', '7550', 2);
INSERT INTO public.model VALUES (19, 'Кроссовки', 'Кроссовки белые с оранжевым и красным', 'Топ-Топ', 'IMG_WS_174110.png', 'Многослойный верх из кожи и текстиля. Производитель: Фабрика «Топ-Топ»  г. Киров', 'Верх — 70% кожа  30% текстиль  подкладка — текстиль  подошва — резина', '9450', 2);
INSERT INTO public.model VALUES (20, 'Кроссовки', 'Кроссовки летние кожаные', 'Топ-Топ', 'IMG_WS_185528.png', 'Уверенность на каждом шагу. Материал обеспечивает долговечность и комфорт при носке. Производитель: Фабрика «Топ-Топ»  г. Киров', 'Верх — 87% кожа  11% текстиль  2% синтетика  подкладка: 100% текстиль  подошва: резина  пластик', '8565', 2);
INSERT INTO public.model VALUES (21, 'Кроссовки', 'Кроссовки кожаные', 'Стиль и комфорт', 'IMG_WS_185535.png', 'Кроссовки женские из натуральной кожи. Производитель: ИП «Стиль и комфорт»  г. Санкт-Петербург', 'Верх — натуральная кожа  подкладка — кожа  подошва — полиуретан', '8765', 2);
INSERT INTO public.model VALUES (22, 'Кроссовки', 'Кроссовки «Стиль и комфорт»', 'Стиль и комфорт', 'IMG_WS_185538.png', 'Кроссовки женские из натуральной кожи и синтетических материалов  сетчатые вставки. Производитель: ИП «Стиль и комфорт»  г. Санкт-Петербург', 'Верх — 70% кожа  20% полиамид  10% полиуретан  подкладка — текстиль  подошва — ТПУ', '7795', 2);
INSERT INTO public.model VALUES (23, 'Кроссовки', 'Кроссовки для бега «Драйв»', 'Азимут', 'IMG_MS_185531.png', 'Сочетание стиля  комфорта и современных технологий. Производитель: Фабрика «Азимут»  г. Санкт-Петербург', 'Верх —  сетка  подкладка — текстиль  подошва —  резина', '6550', 3);
INSERT INTO public.model VALUES (24, 'Кроссовки', 'Кроссовки «Азимут Бег» ', 'Азимут', 'IMG_MS_185532.png', 'Универсальный выбор для повседневного использования. Производитель: Фабрика «Азимут»  г. Санкт-Петербург', 'Верх — 6% кожа  29% текстиль  15% полимерные материалы  подкладка — 100% текстиль  подошва — полимерные материалы  резина', '7890', 3);
INSERT INTO public.model VALUES (25, 'Кроссовки', 'Кроссовки', 'Топ-Топ', 'IMG_MS_185533.png', 'Кроссовки для мужчин  идеальное сочетание стиля и комфорта. Производитель: Фабрика «Топ-Топ»  г. Киров', 'Верх — 56% кожа  29% текстиль  15% полимерные материалы  подкладка — 100% текстиль  подошва — полимерные материалы  резина', '9567', 3);
INSERT INTO public.model VALUES (26, 'Туфли', 'Черные туфли в классическом стиле — база для деловых образов', 'Барбари', 'IMG_MSho_190514.png', 'Модель выполнена из натуральной кожи  на резиновой подошве. Производитель: Дом обуви «Барбари»  г. Новороссийск ', 'Верх — натуральная кожа  подкладка — текстиль  стелька — натуральная кожа  подошва — резина', '24569', 3);
INSERT INTO public.model VALUES (27, 'Туфли', 'Туфли мужские светлые классика демисезонные', 'Берестов', 'IMG_MSho_190518.png', 'Туфли на низком каблуке кожаные', 'Верх — натуральная кожа  подкладка — текстиль  стелька — натуральная кожа  подошва — ТЭП', '10155', 3);
INSERT INTO public.model VALUES (28, 'Туфли', 'Туфли из натуральной кожи', 'Берестов', 'IMG_MSho_191612.png', 'Модель выполнена из натуральной кожи  на резиновой подошве  поддеживает классический и деловой стиль образов. Производитель: Дом обуви «Берестов»  г. Москва', 'Верх — натуральная кожа  подкладка — натуральная кожа  стелька — натуральная кожа  подошва — резина', '25625', 3);
INSERT INTO public.model VALUES (29, 'Ботинки', 'Ботинки мужские демисезонные', 'Барбари', 'IMG_MB_174349.png', 'Ботинки из натуральной кожи темно-коричневого и черного цвета на шнурках. Производитель: Дом обуви «Берестов»  г. Москва', 'Верх — натуральная кожа  подкладка — текстиль  подошва — искусственный материал', '21500', 3);
INSERT INTO public.model VALUES (30, 'Ботинки', 'Ботинки черные из натуральной кожи', 'Кожевенные традиции', 'IMG_MB_191200.png', 'Ботинки представляют баланс традиций и современности. Выполнены из натуральной кожи насыщенного черного цвета. Производитель: ЗАО «Кожевенные традиции»  г. Вятка', 'Верх — натуральная кожа  подкладка — ворсин  стелька — ворсин  подошва — тунит', '14567', 3);
INSERT INTO public.model VALUES (31, 'Ботинки', 'Ботинки зимние классические', 'Барбари', 'IMG_MB_191205.png', 'Выбор на каждый день — натуральная кожа  натуральный мех. Производитель: Дом обуви «Барбари»  г. Новороссийск ', 'Верх — натуральная кожа  подкладка — натуральный мех  стелька — натуральный мех  подошва — ТЭП', '15670', 3);


--
-- TOC entry 5085 (class 0 OID 27980)
-- Dependencies: 234
-- Data for Name: order_sostav; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_sostav VALUES (1, 1, 3, '1', '2190', 1);
INSERT INTO public.order_sostav VALUES (2, 7, 5, '1', '2790', 1);
INSERT INTO public.order_sostav VALUES (3, 10, 19, '1', '25000', 2);
INSERT INTO public.order_sostav VALUES (4, 13, 23, '1', '7500', 2);
INSERT INTO public.order_sostav VALUES (5, 12, 21, '1', '17000', 3);
INSERT INTO public.order_sostav VALUES (6, 20, 21, '1', '8565', 3);
INSERT INTO public.order_sostav VALUES (7, 22, 18, '1', '7795', 3);
INSERT INTO public.order_sostav VALUES (8, 17, 23, '1', '7757', 4);
INSERT INTO public.order_sostav VALUES (9, 16, 23, '1', '12340', 4);
INSERT INTO public.order_sostav VALUES (10, 15, 25, '1', '7130', 4);
INSERT INTO public.order_sostav VALUES (11, 21, 19, '1', '8765', 4);
INSERT INTO public.order_sostav VALUES (12, 11, 24, '1', '15000', 4);
INSERT INTO public.order_sostav VALUES (13, 25, 29, '1', '9567', 5);
INSERT INTO public.order_sostav VALUES (14, 29, 29, '1', '21500', 5);
INSERT INTO public.order_sostav VALUES (15, 24, 25, '1', '7890', 5);
INSERT INTO public.order_sostav VALUES (16, 26, 27, '1', '24569', 6);
INSERT INTO public.order_sostav VALUES (17, 30, 31, '1', '14567', 6);
INSERT INTO public.order_sostav VALUES (18, 31, 29, '1', '15670', 6);
INSERT INTO public.order_sostav VALUES (19, 6, 1, '1', '4290', 7);
INSERT INTO public.order_sostav VALUES (20, 1, 4, '2', '2190', 7);
INSERT INTO public.order_sostav VALUES (21, 8, 11, '1', '1690', 7);
INSERT INTO public.order_sostav VALUES (22, 28, 34, '1', '25625', 8);
INSERT INTO public.order_sostav VALUES (23, 24, 27, '3', '7890', 8);
INSERT INTO public.order_sostav VALUES (24, 23, 33, '2', '6550', 8);
INSERT INTO public.order_sostav VALUES (25, 2, 16, '1', '2490', 9);
INSERT INTO public.order_sostav VALUES (26, 5, 5, '2', '3190', 9);
INSERT INTO public.order_sostav VALUES (27, 18, 18, '1', '7550', 10);
INSERT INTO public.order_sostav VALUES (28, 15, 21, '1', '7130', 10);
INSERT INTO public.order_sostav VALUES (29, 16, 19, '1', '12340', 10);
INSERT INTO public.order_sostav VALUES (30, 21, 18, '2', '8765', 10);


--
-- TOC entry 5083 (class 0 OID 27967)
-- Dependencies: 232
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders VALUES (1, '2026-04-02', 3);
INSERT INTO public.orders VALUES (2, '2026-04-02', 3);
INSERT INTO public.orders VALUES (3, '2026-04-05', 17);
INSERT INTO public.orders VALUES (4, '2026-04-05', 17);
INSERT INTO public.orders VALUES (5, '2026-04-08', 7);
INSERT INTO public.orders VALUES (6, '2026-04-08', 7);
INSERT INTO public.orders VALUES (7, '2026-04-08', 7);
INSERT INTO public.orders VALUES (8, '2026-04-12', 15);
INSERT INTO public.orders VALUES (9, '2026-04-12', 15);
INSERT INTO public.orders VALUES (10, '2026-04-12', 15);
INSERT INTO public.orders VALUES (11, '2026-04-12', 15);
INSERT INTO public.orders VALUES (12, '2026-04-12', 15);
INSERT INTO public.orders VALUES (13, '2026-04-18', 12);
INSERT INTO public.orders VALUES (14, '2026-04-18', 12);
INSERT INTO public.orders VALUES (15, '2026-04-18', 12);
INSERT INTO public.orders VALUES (16, '2026-04-22', 9);
INSERT INTO public.orders VALUES (17, '2026-04-22', 9);
INSERT INTO public.orders VALUES (18, '2026-04-22', 9);
INSERT INTO public.orders VALUES (19, '2026-04-25', 14);
INSERT INTO public.orders VALUES (20, '2026-04-25', 14);
INSERT INTO public.orders VALUES (21, '2026-04-25', 14);
INSERT INTO public.orders VALUES (22, '2026-04-28', 20);
INSERT INTO public.orders VALUES (23, '2026-04-28', 20);
INSERT INTO public.orders VALUES (24, '2026-04-28', 20);
INSERT INTO public.orders VALUES (25, '2026-05-05', 5);
INSERT INTO public.orders VALUES (26, '2026-05-05', 5);
INSERT INTO public.orders VALUES (27, '2026-05-08', 17);
INSERT INTO public.orders VALUES (28, '2026-05-08', 17);
INSERT INTO public.orders VALUES (29, '2026-05-08', 17);
INSERT INTO public.orders VALUES (30, '2026-05-08', 17);


--
-- TOC entry 5071 (class 0 OID 27895)
-- Dependencies: 220
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role VALUES (1, 'Администратор');
INSERT INTO public.role VALUES (2, 'Менеджер');
INSERT INTO public.role VALUES (3, 'Авторизованный пользователь');


--
-- TOC entry 5075 (class 0 OID 27916)
-- Dependencies: 224
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.size VALUES (1, '18');
INSERT INTO public.size VALUES (2, '19');
INSERT INTO public.size VALUES (3, '20');
INSERT INTO public.size VALUES (4, '21');
INSERT INTO public.size VALUES (5, '22');
INSERT INTO public.size VALUES (6, '23');
INSERT INTO public.size VALUES (7, '24');
INSERT INTO public.size VALUES (8, '25');
INSERT INTO public.size VALUES (9, '26');
INSERT INTO public.size VALUES (10, '27');
INSERT INTO public.size VALUES (11, '28');
INSERT INTO public.size VALUES (12, '29');
INSERT INTO public.size VALUES (13, '30');
INSERT INTO public.size VALUES (14, '31');
INSERT INTO public.size VALUES (15, '32');
INSERT INTO public.size VALUES (16, '33');
INSERT INTO public.size VALUES (17, '34');
INSERT INTO public.size VALUES (18, '35');
INSERT INTO public.size VALUES (19, '36');
INSERT INTO public.size VALUES (20, '36.5');
INSERT INTO public.size VALUES (21, '37');
INSERT INTO public.size VALUES (22, '37.5');
INSERT INTO public.size VALUES (23, '38');
INSERT INTO public.size VALUES (24, '38.5');
INSERT INTO public.size VALUES (25, '39');
INSERT INTO public.size VALUES (26, '39.5');
INSERT INTO public.size VALUES (27, '40');
INSERT INTO public.size VALUES (28, '40.5');
INSERT INTO public.size VALUES (29, '41');
INSERT INTO public.size VALUES (30, '41.5');
INSERT INTO public.size VALUES (31, '42');
INSERT INTO public.size VALUES (32, '42.5');
INSERT INTO public.size VALUES (33, '43');
INSERT INTO public.size VALUES (34, '44');
INSERT INTO public.size VALUES (35, '45');


--
-- TOC entry 5081 (class 0 OID 27947)
-- Dependencies: 230
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stock VALUES (1, 1, 3, '20');
INSERT INTO public.stock VALUES (2, 1, 4, '20');
INSERT INTO public.stock VALUES (3, 1, 5, '20');
INSERT INTO public.stock VALUES (4, 1, 6, '20');
INSERT INTO public.stock VALUES (5, 1, 7, '20');
INSERT INTO public.stock VALUES (6, 1, 8, '20');
INSERT INTO public.stock VALUES (7, 2, 16, '2');
INSERT INTO public.stock VALUES (8, 2, 17, '2');
INSERT INTO public.stock VALUES (9, 3, 2, '30');
INSERT INTO public.stock VALUES (10, 3, 3, '30');
INSERT INTO public.stock VALUES (11, 4, 2, '15');
INSERT INTO public.stock VALUES (12, 4, 3, '15');
INSERT INTO public.stock VALUES (13, 5, 4, '5');
INSERT INTO public.stock VALUES (14, 5, 5, '5');
INSERT INTO public.stock VALUES (15, 5, 6, '5');
INSERT INTO public.stock VALUES (16, 6, 1, '4');
INSERT INTO public.stock VALUES (17, 6, 2, '4');
INSERT INTO public.stock VALUES (18, 6, 3, '4');
INSERT INTO public.stock VALUES (19, 7, 4, '4');
INSERT INTO public.stock VALUES (20, 7, 5, '4');
INSERT INTO public.stock VALUES (21, 7, 6, '4');
INSERT INTO public.stock VALUES (22, 7, 7, '4');
INSERT INTO public.stock VALUES (23, 8, 10, '7');
INSERT INTO public.stock VALUES (24, 8, 11, '7');
INSERT INTO public.stock VALUES (25, 8, 12, '7');
INSERT INTO public.stock VALUES (26, 8, 13, '7');
INSERT INTO public.stock VALUES (27, 9, 1, '7');
INSERT INTO public.stock VALUES (28, 9, 2, '7');
INSERT INTO public.stock VALUES (29, 9, 3, '7');
INSERT INTO public.stock VALUES (30, 10, 19, '12');
INSERT INTO public.stock VALUES (31, 10, 21, '12');
INSERT INTO public.stock VALUES (32, 11, 25, '2');
INSERT INTO public.stock VALUES (33, 11, 27, '2');
INSERT INTO public.stock VALUES (34, 12, 21, '5');
INSERT INTO public.stock VALUES (35, 12, 25, '5');
INSERT INTO public.stock VALUES (36, 12, 27, '5');
INSERT INTO public.stock VALUES (37, 13, 19, '10');
INSERT INTO public.stock VALUES (38, 13, 21, '10');
INSERT INTO public.stock VALUES (39, 13, 23, '10');
INSERT INTO public.stock VALUES (40, 13, 25, '10');
INSERT INTO public.stock VALUES (41, 13, 27, '10');
INSERT INTO public.stock VALUES (42, 14, 18, '3');
INSERT INTO public.stock VALUES (43, 15, 21, '23');
INSERT INTO public.stock VALUES (44, 15, 25, '23');
INSERT INTO public.stock VALUES (45, 15, 27, '23');
INSERT INTO public.stock VALUES (46, 16, 19, '25');
INSERT INTO public.stock VALUES (47, 16, 21, '25');
INSERT INTO public.stock VALUES (48, 16, 23, '25');
INSERT INTO public.stock VALUES (49, 17, 19, '4');
INSERT INTO public.stock VALUES (50, 17, 23, '4');
INSERT INTO public.stock VALUES (51, 17, 25, '4');
INSERT INTO public.stock VALUES (52, 17, 27, '4');
INSERT INTO public.stock VALUES (53, 18, 18, '9');
INSERT INTO public.stock VALUES (54, 18, 23, '9');
INSERT INTO public.stock VALUES (55, 19, 18, '2');
INSERT INTO public.stock VALUES (56, 19, 19, '2');
INSERT INTO public.stock VALUES (57, 20, 21, '5');
INSERT INTO public.stock VALUES (58, 20, 22, '5');
INSERT INTO public.stock VALUES (59, 20, 23, '5');
INSERT INTO public.stock VALUES (60, 20, 24, '5');
INSERT INTO public.stock VALUES (61, 21, 18, '16');
INSERT INTO public.stock VALUES (62, 21, 19, '16');
INSERT INTO public.stock VALUES (63, 21, 23, '16');
INSERT INTO public.stock VALUES (64, 21, 25, '16');
INSERT INTO public.stock VALUES (65, 22, 18, '3');
INSERT INTO public.stock VALUES (66, 22, 23, '3');
INSERT INTO public.stock VALUES (67, 23, 30, '18');
INSERT INTO public.stock VALUES (68, 23, 31, '18');
INSERT INTO public.stock VALUES (69, 23, 32, '18');
INSERT INTO public.stock VALUES (70, 23, 33, '18');
INSERT INTO public.stock VALUES (71, 24, 23, '50');
INSERT INTO public.stock VALUES (72, 24, 24, '50');
INSERT INTO public.stock VALUES (73, 24, 25, '50');
INSERT INTO public.stock VALUES (74, 24, 26, '50');
INSERT INTO public.stock VALUES (75, 24, 27, '50');
INSERT INTO public.stock VALUES (76, 24, 29, '50');
INSERT INTO public.stock VALUES (77, 25, 29, '3');
INSERT INTO public.stock VALUES (78, 25, 31, '3');
INSERT INTO public.stock VALUES (79, 25, 34, '3');
INSERT INTO public.stock VALUES (80, 26, 27, '23');
INSERT INTO public.stock VALUES (81, 26, 29, '23');
INSERT INTO public.stock VALUES (82, 26, 33, '23');
INSERT INTO public.stock VALUES (83, 27, 31, '15');
INSERT INTO public.stock VALUES (84, 27, 33, '15');
INSERT INTO public.stock VALUES (85, 27, 34, '15');
INSERT INTO public.stock VALUES (86, 28, 34, '3');
INSERT INTO public.stock VALUES (87, 29, 29, '1');
INSERT INTO public.stock VALUES (88, 29, 31, '1');
INSERT INTO public.stock VALUES (89, 30, 31, '20');
INSERT INTO public.stock VALUES (90, 30, 33, '20');
INSERT INTO public.stock VALUES (91, 31, 29, '30');
INSERT INTO public.stock VALUES (92, 31, 31, '30');


--
-- TOC entry 5073 (class 0 OID 27903)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Иван', 'Иванов', 'Сергеевич', 'isivanov', 1);
INSERT INTO public.users VALUES (2, 'Пётр', 'Петров', 'Алексеевич', 'papetrov', 2);
INSERT INTO public.users VALUES (3, 'Анна', 'Сидорова', 'Дмитриевна', 'asidorova', 3);
INSERT INTO public.users VALUES (4, 'Екатерина', 'Кузнецова', 'Андреевна', 'ekuznetsova', 2);
INSERT INTO public.users VALUES (5, 'Дмитрий', 'Смирнов', 'Владимирович', 'dsmirnov', 3);
INSERT INTO public.users VALUES (6, 'Алексей', 'Попов', 'Николаевич', 'apopov', 1);
INSERT INTO public.users VALUES (7, 'Ольга', 'Васильева', 'Игоревна', 'ovasileva', 3);
INSERT INTO public.users VALUES (8, 'Павел', 'Соколов', 'Викторович', 'psokolov', 2);
INSERT INTO public.users VALUES (9, 'Татьяна', 'Михайлова', 'Юрьевна', 'tmikhailova', 3);
INSERT INTO public.users VALUES (10, 'Наталья', 'Новикова', 'Сергеевна', 'nnovikova', 2);
INSERT INTO public.users VALUES (11, 'Андрей', 'Фёдоров', 'Максимович', 'afedorov', 1);
INSERT INTO public.users VALUES (12, 'Сергей', 'Морозов', 'Павлович', 'smorozov', 3);
INSERT INTO public.users VALUES (13, 'Юлия', 'Волкова', 'Александровна', 'jvolkova', 2);
INSERT INTO public.users VALUES (14, 'Артём', 'Алексеев', 'Евгеньевич', 'aalekseev', 3);
INSERT INTO public.users VALUES (15, 'Ирина', 'Лебедева', 'Владимировна', 'ilebedeva', 3);
INSERT INTO public.users VALUES (16, 'Никита', 'Егоров', 'Денисович', 'negorov', 2);
INSERT INTO public.users VALUES (17, 'Елена', 'Павлова', 'Петровна', 'epavlova', 3);
INSERT INTO public.users VALUES (18, 'Роман', 'Козлов', 'Олегович', 'rkozlov', 1);
INSERT INTO public.users VALUES (19, 'Виктория', 'Степанова', 'Романовна', 'vstepanova', 2);
INSERT INTO public.users VALUES (20, 'Владимир', 'Николаев', 'Иванович', 'vnikolaev', 3);


--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 225
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);


--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 227
-- Name: model_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_model_id_seq', 31, true);


--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 233
-- Name: order_sostav_order_sostav_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_sostav_order_sostav_id_seq', 30, true);


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 231
-- Name: orders_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orders_id_seq', 30, true);


--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 219
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_role_id_seq', 3, true);


--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 223
-- Name: size_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_size_id_seq', 35, true);


--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 229
-- Name: stock_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stock_stock_id_seq', 92, true);


--
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_users_id_seq', 20, true);


--
-- TOC entry 4906 (class 2606 OID 27930)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4908 (class 2606 OID 27940)
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);


--
-- TOC entry 4914 (class 2606 OID 27988)
-- Name: order_sostav order_sostav_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sostav
    ADD CONSTRAINT order_sostav_pkey PRIMARY KEY (order_sostav_id);


--
-- TOC entry 4912 (class 2606 OID 27973)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orders_id);


--
-- TOC entry 4900 (class 2606 OID 27901)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 4904 (class 2606 OID 27922)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (size_id);


--
-- TOC entry 4910 (class 2606 OID 27955)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (stock_id);


--
-- TOC entry 4902 (class 2606 OID 27909)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (users_id);


--
-- TOC entry 4916 (class 2606 OID 27941)
-- Name: model model_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- TOC entry 4920 (class 2606 OID 27989)
-- Name: order_sostav order_sostav_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sostav
    ADD CONSTRAINT order_sostav_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.model(model_id);


--
-- TOC entry 4921 (class 2606 OID 27999)
-- Name: order_sostav order_sostav_orders_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sostav
    ADD CONSTRAINT order_sostav_orders_id_fkey FOREIGN KEY (orders_id) REFERENCES public.orders(orders_id);


--
-- TOC entry 4922 (class 2606 OID 27994)
-- Name: order_sostav order_sostav_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_sostav
    ADD CONSTRAINT order_sostav_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(size_id);


--
-- TOC entry 4919 (class 2606 OID 27974)
-- Name: orders orders_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- TOC entry 4917 (class 2606 OID 27956)
-- Name: stock stock_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.model(model_id);


--
-- TOC entry 4918 (class 2606 OID 27961)
-- Name: stock stock_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(size_id);


--
-- TOC entry 4915 (class 2606 OID 27910)
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id);


-- Completed on 2026-10-30 13:40:46

--
-- PostgreSQL database dump complete
--

\unrestrict 1K7ZwqdXOh3K5K8HfeIH5SGO0QdON7xc5XbM62v3mL2ywDref7x5K5edNRhaniX

