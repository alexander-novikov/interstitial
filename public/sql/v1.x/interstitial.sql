--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.6
-- Dumped by pg_dump version 9.1.6
-- Started on 2012-10-26 17:43:52 FET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 176 (class 3079 OID 11684)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 176
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 25383)
-- Dependencies: 5
-- Name: chain; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE chain (
    id bigint NOT NULL,
    name character varying(255),
    version_id bigint
);


ALTER TABLE public.chain OWNER TO interstitial;

--
-- TOC entry 162 (class 1259 OID 25388)
-- Dependencies: 5
-- Name: chain_step; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE chain_step (
    chain_id bigint NOT NULL,
    steps_id bigint NOT NULL
);


ALTER TABLE public.chain_step OWNER TO interstitial;

--
-- TOC entry 175 (class 1259 OID 25531)
-- Dependencies: 5
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: interstitial
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO interstitial;

--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 175
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: interstitial
--

SELECT pg_catalog.setval('hibernate_sequence', 10, true);


--
-- TOC entry 163 (class 1259 OID 25393)
-- Dependencies: 5
-- Name: macros; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE macros (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255)
);


ALTER TABLE public.macros OWNER TO interstitial;

--
-- TOC entry 164 (class 1259 OID 25401)
-- Dependencies: 5
-- Name: platform; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE platform (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.platform OWNER TO interstitial;

--
-- TOC entry 165 (class 1259 OID 25406)
-- Dependencies: 5
-- Name: region; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE region (
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255)
);


ALTER TABLE public.region OWNER TO interstitial;

--
-- TOC entry 166 (class 1259 OID 25414)
-- Dependencies: 5
-- Name: step; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE step (
    id bigint NOT NULL,
    name character varying(255),
    number character varying(255)
);


ALTER TABLE public.step OWNER TO interstitial;

--
-- TOC entry 167 (class 1259 OID 25422)
-- Dependencies: 5
-- Name: step_template; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE step_template (
    step_id bigint NOT NULL,
    templates_id bigint NOT NULL
);


ALTER TABLE public.step_template OWNER TO interstitial;

--
-- TOC entry 168 (class 1259 OID 25427)
-- Dependencies: 5
-- Name: template; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE template (
    id bigint NOT NULL,
    html text,
    name character varying(255),
    platform_id bigint
);


ALTER TABLE public.template OWNER TO interstitial;

--
-- TOC entry 169 (class 1259 OID 25435)
-- Dependencies: 5
-- Name: template_region; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE template_region (
    template_id bigint NOT NULL,
    region_id bigint NOT NULL
);


ALTER TABLE public.template_region OWNER TO interstitial;

--
-- TOC entry 170 (class 1259 OID 25440)
-- Dependencies: 5
-- Name: usergroup; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE usergroup (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255)
);


ALTER TABLE public.usergroup OWNER TO interstitial;

--
-- TOC entry 171 (class 1259 OID 25448)
-- Dependencies: 5
-- Name: usergroupaccess; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE usergroupaccess (
    id bigint NOT NULL,
    pattern character varying(255),
    usergroup_id bigint
);


ALTER TABLE public.usergroupaccess OWNER TO interstitial;

--
-- TOC entry 173 (class 1259 OID 25458)
-- Dependencies: 5
-- Name: users; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE users (
    id bigint NOT NULL,
    email character varying(255),
    login character varying(255),
    password character varying(255),
    usergroup_id bigint,
    userstatus_id bigint
);


ALTER TABLE public.users OWNER TO interstitial;

--
-- TOC entry 172 (class 1259 OID 25453)
-- Dependencies: 5
-- Name: userstatus; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE userstatus (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.userstatus OWNER TO interstitial;

--
-- TOC entry 174 (class 1259 OID 25466)
-- Dependencies: 5
-- Name: version; Type: TABLE; Schema: public; Owner: interstitial; Tablespace: 
--

CREATE TABLE version (
    id bigint NOT NULL,
    version double precision,
    platform_id bigint
);


ALTER TABLE public.version OWNER TO interstitial;

--
-- TOC entry 2004 (class 2613 OID 25533)
-- Name: 25533; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25533');


ALTER LARGE OBJECT 25533 OWNER TO interstitial;

--
-- TOC entry 2005 (class 2613 OID 25534)
-- Name: 25534; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25534');


ALTER LARGE OBJECT 25534 OWNER TO interstitial;

--
-- TOC entry 2006 (class 2613 OID 25535)
-- Name: 25535; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25535');


ALTER LARGE OBJECT 25535 OWNER TO interstitial;

--
-- TOC entry 2007 (class 2613 OID 25536)
-- Name: 25536; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25536');


ALTER LARGE OBJECT 25536 OWNER TO interstitial;

--
-- TOC entry 2008 (class 2613 OID 25537)
-- Name: 25537; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25537');


ALTER LARGE OBJECT 25537 OWNER TO interstitial;

--
-- TOC entry 2009 (class 2613 OID 25538)
-- Name: 25538; Type: BLOB; Schema: -; Owner: interstitial
--

SELECT pg_catalog.lo_create('25538');


ALTER LARGE OBJECT 25538 OWNER TO interstitial;

--
-- TOC entry 1990 (class 0 OID 25383)
-- Dependencies: 161 2011
-- Data for Name: chain; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO chain (id, name, version_id) VALUES (10, 'TestChain', -1);


--
-- TOC entry 1991 (class 0 OID 25388)
-- Dependencies: 162 2011
-- Data for Name: chain_step; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO chain_step (chain_id, steps_id) VALUES (10, 7);
INSERT INTO chain_step (chain_id, steps_id) VALUES (10, 8);
INSERT INTO chain_step (chain_id, steps_id) VALUES (10, 9);


--
-- TOC entry 1992 (class 0 OID 25393)
-- Dependencies: 163 2011
-- Data for Name: macros; Type: TABLE DATA; Schema: public; Owner: interstitial
--



--
-- TOC entry 1993 (class 0 OID 25401)
-- Dependencies: 164 2011
-- Data for Name: platform; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO platform (id, name) VALUES (-1, 'android');
INSERT INTO platform (id, name) VALUES (-2, 'blackberry');
INSERT INTO platform (id, name) VALUES (-3, 'windowsphone');
INSERT INTO platform (id, name) VALUES (-4, 'ipad');
INSERT INTO platform (id, name) VALUES (-5, 'flashlite3');
INSERT INTO platform (id, name) VALUES (-6, 'webos');
INSERT INTO platform (id, name) VALUES (-7, 'windowsmobile');
INSERT INTO platform (id, name) VALUES (-8, 'symbian3');
INSERT INTO platform (id, name) VALUES (-9, 'playbook');
INSERT INTO platform (id, name) VALUES (-10, 'android_air');
INSERT INTO platform (id, name) VALUES (-11, 'ios');
INSERT INTO platform (id, name) VALUES (-12, 'bada');
INSERT INTO platform (id, name) VALUES (-13, 'iphone');
INSERT INTO platform (id, name) VALUES (-14, 'nook');
INSERT INTO platform (id, name) VALUES (-15, 'web');
INSERT INTO platform (id, name) VALUES (-16, 'amazon');


--
-- TOC entry 1994 (class 0 OID 25406)
-- Dependencies: 165 2011
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO region (id, code, name) VALUES (-1, 'HM', 'Heard Island and McDonald Islands');
INSERT INTO region (id, code, name) VALUES (-2, 'BD', 'People''s Republic of Bangladesh');
INSERT INTO region (id, code, name) VALUES (-3, 'EU', 'Europe');
INSERT INTO region (id, code, name) VALUES (-4, 'FI', 'Republic of Finland');
INSERT INTO region (id, code, name) VALUES (-5, 'LB', 'Lebanese Republic');
INSERT INTO region (id, code, name) VALUES (-6, 'YT', 'Mayotte');
INSERT INTO region (id, code, name) VALUES (-7, 'FR', 'French Republic');
INSERT INTO region (id, code, name) VALUES (-8, 'LV', 'Republic of Latvia');
INSERT INTO region (id, code, name) VALUES (-9, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO region (id, code, name) VALUES (-10, 'SG', 'Republic of Singapore');
INSERT INTO region (id, code, name) VALUES (-11, 'KH', 'Kingdom of Cambodia');
INSERT INTO region (id, code, name) VALUES (-12, 'SE', 'Kingdom of Sweden');
INSERT INTO region (id, code, name) VALUES (-13, 'BJ', 'Republic of Benin');
INSERT INTO region (id, code, name) VALUES (-14, 'CZ', 'Czech Republic');
INSERT INTO region (id, code, name) VALUES (-15, 'RO', 'Romania');
INSERT INTO region (id, code, name) VALUES (-16, 'BM', 'Bermuda');
INSERT INTO region (id, code, name) VALUES (-17, 'DK', 'Kingdom of Denmark');
INSERT INTO region (id, code, name) VALUES (-18, 'GN', 'Republic of Guinea');
INSERT INTO region (id, code, name) VALUES (-19, 'NZ', 'New Zealand');
INSERT INTO region (id, code, name) VALUES (-20, 'CX', 'Christmas Island');
INSERT INTO region (id, code, name) VALUES (-21, 'RU', 'Russian Federation');
INSERT INTO region (id, code, name) VALUES (-22, 'MT', 'Republic of Malta');
INSERT INTO region (id, code, name) VALUES (-23, 'KR', 'Republic of Korea');
INSERT INTO region (id, code, name) VALUES (-24, 'TW', 'Taiwan');
INSERT INTO region (id, code, name) VALUES (-25, 'QA', 'State of Qatar');
INSERT INTO region (id, code, name) VALUES (-26, 'MC', 'Principality of Monaco');
INSERT INTO region (id, code, name) VALUES (-27, 'BZ', 'Belize');
INSERT INTO region (id, code, name) VALUES (-28, 'FM', 'Federated States of Micronesia');
INSERT INTO region (id, code, name) VALUES (-29, 'BY', 'Republic of Belarus');
INSERT INTO region (id, code, name) VALUES (-30, 'SL', 'Republic of Sierra Leone');
INSERT INTO region (id, code, name) VALUES (-31, 'KW', 'State of Kuwait');
INSERT INTO region (id, code, name) VALUES (-32, 'MU', 'Republic of Mauritius');
INSERT INTO region (id, code, name) VALUES (-33, 'VA', 'Holy See (Vatican City State)');
INSERT INTO region (id, code, name) VALUES (-34, 'WS', 'Independent State of Samoa');
INSERT INTO region (id, code, name) VALUES (-35, 'BH', 'Kingdom of Bahrain');
INSERT INTO region (id, code, name) VALUES (-36, 'SK', 'Slovakia (Slovak Republic)');
INSERT INTO region (id, code, name) VALUES (-37, 'NU', 'Niue');
INSERT INTO region (id, code, name) VALUES (-38, 'BL', 'Saint Barthelemy');
INSERT INTO region (id, code, name) VALUES (-39, 'ZW', 'Republic of Zimbabwe');
INSERT INTO region (id, code, name) VALUES (-40, 'ZM', 'Republic of Zambia');
INSERT INTO region (id, code, name) VALUES (-41, 'TZ', 'United Republic of Tanzania');
INSERT INTO region (id, code, name) VALUES (-42, 'DM', 'Commonwealth of Dominica');
INSERT INTO region (id, code, name) VALUES (-43, 'NG', 'Federal Republic of Nigeria');
INSERT INTO region (id, code, name) VALUES (-44, 'LA', 'Lao People''s Democratic Republic');
INSERT INTO region (id, code, name) VALUES (-45, 'BE', 'Kingdom of Belgium');
INSERT INTO region (id, code, name) VALUES (-46, 'VG', 'British Virgin Islands');
INSERT INTO region (id, code, name) VALUES (-47, 'MD', 'Republic of Moldova');
INSERT INTO region (id, code, name) VALUES (-48, 'IS', 'Republic of Iceland');
INSERT INTO region (id, code, name) VALUES (-49, 'SN', 'Republic of Senegal');
INSERT INTO region (id, code, name) VALUES (-50, 'TM', 'Turkmenistan');
INSERT INTO region (id, code, name) VALUES (-51, 'AD', 'Principality of Andorra');
INSERT INTO region (id, code, name) VALUES (-52, 'TH', 'Kingdom of Thailand');
INSERT INTO region (id, code, name) VALUES (-53, 'GW', 'Republic of Guinea-Bissau');
INSERT INTO region (id, code, name) VALUES (-54, 'RE', 'Reunion');
INSERT INTO region (id, code, name) VALUES (-55, 'PF', 'French Polynesia');
INSERT INTO region (id, code, name) VALUES (-56, 'SA', 'Kingdom of Saudi Arabia');
INSERT INTO region (id, code, name) VALUES (-57, 'KI', 'Republic of Kiribati');
INSERT INTO region (id, code, name) VALUES (-58, 'GY', 'Co-operative Republic of Guyana');
INSERT INTO region (id, code, name) VALUES (-59, 'HN', 'Republic of Honduras');
INSERT INTO region (id, code, name) VALUES (-60, 'KG', 'Kyrgyz Republic');
INSERT INTO region (id, code, name) VALUES (-61, 'AS', 'American Samoa');
INSERT INTO region (id, code, name) VALUES (-62, 'NF', 'Norfolk Island');
INSERT INTO region (id, code, name) VALUES (-63, 'CA', 'Canada');
INSERT INTO region (id, code, name) VALUES (-64, 'SZ', 'Kingdom of Swaziland');
INSERT INTO region (id, code, name) VALUES (-65, 'LR', 'Republic of Liberia');
INSERT INTO region (id, code, name) VALUES (-66, 'BV', 'Bouvet Island (Bouvetoya)');
INSERT INTO region (id, code, name) VALUES (-67, 'SJ', 'Svalbard & Jan Mayen Islands');
INSERT INTO region (id, code, name) VALUES (-68, 'CD', 'Democratic Republic of the Congo');
INSERT INTO region (id, code, name) VALUES (-69, 'SR', 'Republic of Suriname');
INSERT INTO region (id, code, name) VALUES (-70, 'LS', 'Kingdom of Lesotho');
INSERT INTO region (id, code, name) VALUES (-71, 'MS', 'Montserrat');
INSERT INTO region (id, code, name) VALUES (-72, 'YE', 'Yemen');
INSERT INTO region (id, code, name) VALUES (-73, 'MP', 'Commonwealth of the Northern Mariana Islands');
INSERT INTO region (id, code, name) VALUES (-74, 'LI', 'Principality of Liechtenstein');
INSERT INTO region (id, code, name) VALUES (-75, 'VU', 'Republic of Vanuatu');
INSERT INTO region (id, code, name) VALUES (-76, 'MY', 'Malaysia');
INSERT INTO region (id, code, name) VALUES (-77, 'ER', 'State of Eritrea');
INSERT INTO region (id, code, name) VALUES (-78, 'HT', 'Republic of Haiti');
INSERT INTO region (id, code, name) VALUES (-79, 'AL', 'Republic of Albania');
INSERT INTO region (id, code, name) VALUES (-80, 'KM', 'Union of the Comoros');
INSERT INTO region (id, code, name) VALUES (-81, 'MG', 'Republic of Madagascar');
INSERT INTO region (id, code, name) VALUES (-82, 'ES', 'Kingdom of Spain');
INSERT INTO region (id, code, name) VALUES (-83, 'FO', 'Faroe Islands');
INSERT INTO region (id, code, name) VALUES (-84, 'ST', 'Democratic Republic of Sao Tome and Principe');
INSERT INTO region (id, code, name) VALUES (-85, 'HR', 'Republic of Croatia');
INSERT INTO region (id, code, name) VALUES (-86, 'DZ', 'People''s Democratic Republic of Algeria');
INSERT INTO region (id, code, name) VALUES (-87, 'PN', 'Pitcairn Islands');
INSERT INTO region (id, code, name) VALUES (-88, 'BW', 'Republic of Botswana');
INSERT INTO region (id, code, name) VALUES (-89, 'EH', 'Western Sahara');
INSERT INTO region (id, code, name) VALUES (-90, 'AO', 'Republic of Angola');
INSERT INTO region (id, code, name) VALUES (-91, 'BA', 'Bosnia and Herzegovina');
INSERT INTO region (id, code, name) VALUES (-92, 'MK', 'Republic of Macedonia');
INSERT INTO region (id, code, name) VALUES (-93, 'AX', 'Åland Islands');
INSERT INTO region (id, code, name) VALUES (-94, 'KP', 'Democratic People''s Republic of Korea');
INSERT INTO region (id, code, name) VALUES (-95, 'GF', 'French Guiana');
INSERT INTO region (id, code, name) VALUES (-96, 'CN', 'People''s Republic of China');
INSERT INTO region (id, code, name) VALUES (-97, 'IO', 'British Indian Ocean Territory (Chagos Archipelago)');
INSERT INTO region (id, code, name) VALUES (-98, 'AF', 'Islamic Republic of Afghanistan');
INSERT INTO region (id, code, name) VALUES (-99, 'GP', 'Guadeloupe');
INSERT INTO region (id, code, name) VALUES (-100, 'AR', 'Argentine Republic');
INSERT INTO region (id, code, name) VALUES (-101, 'FJ', 'Republic of the Fiji Islands');
INSERT INTO region (id, code, name) VALUES (-102, 'CO', 'Republic of Colombia');
INSERT INTO region (id, code, name) VALUES (-103, 'SY', 'Syrian Arab Republic');
INSERT INTO region (id, code, name) VALUES (-104, 'WF', 'Wallis and Futuna');
INSERT INTO region (id, code, name) VALUES (-105, 'VN', 'Socialist Republic of Vietnam');
INSERT INTO region (id, code, name) VALUES (-106, 'SM', 'Republic of San Marino');
INSERT INTO region (id, code, name) VALUES (-107, 'ET', 'Federal Democratic Republic of Ethiopia');
INSERT INTO region (id, code, name) VALUES (-108, 'BT', 'Kingdom of Bhutan');
INSERT INTO region (id, code, name) VALUES (-109, 'BR', 'Federative Republic of Brazil');
INSERT INTO region (id, code, name) VALUES (-110, 'AQ', 'Antarctica (the territory South of 60 deg S)');
INSERT INTO region (id, code, name) VALUES (-111, 'CL', 'Republic of Chile');
INSERT INTO region (id, code, name) VALUES (-112, 'CG', 'Republic of the Congo');
INSERT INTO region (id, code, name) VALUES (-113, 'VE', 'Bolivarian Republic of Venezuela');
INSERT INTO region (id, code, name) VALUES (-114, 'PK', 'Islamic Republic of Pakistan');
INSERT INTO region (id, code, name) VALUES (-115, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO region (id, code, name) VALUES (-116, 'CK', 'Cook Islands');
INSERT INTO region (id, code, name) VALUES (-117, 'CH', 'Swiss Confederation');
INSERT INTO region (id, code, name) VALUES (-118, 'SD', 'Republic of Sudan');
INSERT INTO region (id, code, name) VALUES (-119, 'OM', 'Sultanate of Oman');
INSERT INTO region (id, code, name) VALUES (-120, 'SC', 'Republic of Seychelles');
INSERT INTO region (id, code, name) VALUES (-121, 'ID', 'Republic of Indonesia');
INSERT INTO region (id, code, name) VALUES (-122, 'TR', 'Republic of Turkey');
INSERT INTO region (id, code, name) VALUES (-123, 'AI', 'Anguilla');
INSERT INTO region (id, code, name) VALUES (-124, 'PL', 'Republic of Poland');
INSERT INTO region (id, code, name) VALUES (-125, 'UZ', 'Republic of Uzbekistan');
INSERT INTO region (id, code, name) VALUES (-126, 'AT', 'Republic of Austria');
INSERT INTO region (id, code, name) VALUES (-127, 'LT', 'Republic of Lithuania');
INSERT INTO region (id, code, name) VALUES (-128, 'UY', 'Eastern Republic of Uruguay');
INSERT INTO region (id, code, name) VALUES (-129, 'GM', 'Republic of the Gambia');
INSERT INTO region (id, code, name) VALUES (-130, 'PR', 'Commonwealth of Puerto Rico');
INSERT INTO region (id, code, name) VALUES (-131, 'AW', 'Aruba');
INSERT INTO region (id, code, name) VALUES (-132, 'AG', 'Antigua and Barbuda');
INSERT INTO region (id, code, name) VALUES (-133, 'LC', 'Saint Lucia');
INSERT INTO region (id, code, name) VALUES (-134, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO region (id, code, name) VALUES (-135, 'ME', 'Republic of Montenegro');
INSERT INTO region (id, code, name) VALUES (-136, 'PG', 'Independent State of Papua New Guinea');
INSERT INTO region (id, code, name) VALUES (-137, 'GR', 'Hellenic Republic Greece');
INSERT INTO region (id, code, name) VALUES (-138, 'GT', 'Republic of Guatemala');
INSERT INTO region (id, code, name) VALUES (-139, 'JE', 'Bailiwick of Jersey');
INSERT INTO region (id, code, name) VALUES (-140, 'UM', 'United States Minor Outlying Islands');
INSERT INTO region (id, code, name) VALUES (-141, 'CU', 'Republic of Cuba');
INSERT INTO region (id, code, name) VALUES (-142, 'IR', 'Islamic Republic of Iran');
INSERT INTO region (id, code, name) VALUES (-143, 'MV', 'Republic of Maldives');
INSERT INTO region (id, code, name) VALUES (-144, 'PH', 'Republic of the Philippines');
INSERT INTO region (id, code, name) VALUES (-145, 'GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO region (id, code, name) VALUES (-146, 'JO', 'Hashemite Kingdom of Jordan');
INSERT INTO region (id, code, name) VALUES (-147, 'LU', 'Grand Duchy of Luxembourg');
INSERT INTO region (id, code, name) VALUES (-148, 'UA', 'Ukraine');
INSERT INTO region (id, code, name) VALUES (-149, 'AU', 'Commonwealth of Australia');
INSERT INTO region (id, code, name) VALUES (-150, 'VI', 'United States Virgin Islands');
INSERT INTO region (id, code, name) VALUES (-151, 'IL', 'State of Israel');
INSERT INTO region (id, code, name) VALUES (-152, 'PT', 'Portuguese Republic');
INSERT INTO region (id, code, name) VALUES (-153, 'IE', 'Ireland');
INSERT INTO region (id, code, name) VALUES (-154, 'MO', 'Macao Special Administrative country of China');
INSERT INTO region (id, code, name) VALUES (-155, 'BF', 'Burkina Faso');
INSERT INTO region (id, code, name) VALUES (-156, 'AZ', 'Republic of Azerbaijan');
INSERT INTO region (id, code, name) VALUES (-157, 'GU', 'Guam');
INSERT INTO region (id, code, name) VALUES (-158, 'CI', 'Republic of Cote d''Ivoire');
INSERT INTO region (id, code, name) VALUES (-159, 'SO', 'Somali Republic');
INSERT INTO region (id, code, name) VALUES (-160, 'PM', 'Saint Pierre and Miquelon');
INSERT INTO region (id, code, name) VALUES (-161, 'GQ', 'Republic of Equatorial Guinea');
INSERT INTO region (id, code, name) VALUES (-162, 'MM', 'Union of Myanmar');
INSERT INTO region (id, code, name) VALUES (-163, 'PW', 'Republic of Palau');
INSERT INTO region (id, code, name) VALUES (-164, 'MN', 'Mongolia');
INSERT INTO region (id, code, name) VALUES (-165, 'PE', 'Republic of Peru');
INSERT INTO region (id, code, name) VALUES (-166, 'JP', 'Japan');
INSERT INTO region (id, code, name) VALUES (-167, 'US', 'United States of America');
INSERT INTO region (id, code, name) VALUES (-168, 'MW', 'Republic of Malawi');
INSERT INTO region (id, code, name) VALUES (-169, 'BO', 'Republic of Bolivia');
INSERT INTO region (id, code, name) VALUES (-170, 'MA', 'Kingdom of Morocco');
INSERT INTO region (id, code, name) VALUES (-171, 'MF', 'Saint Martin');
INSERT INTO region (id, code, name) VALUES (-172, 'GB', 'United Kingdom of Great Britain & Northern Ireland');
INSERT INTO region (id, code, name) VALUES (-173, 'BG', 'Republic of Bulgaria');
INSERT INTO region (id, code, name) VALUES (-174, 'IN', 'Republic of India');
INSERT INTO region (id, code, name) VALUES (-175, 'JM', 'Jamaica');
INSERT INTO region (id, code, name) VALUES (-176, 'GD', 'Grenada');
INSERT INTO region (id, code, name) VALUES (-177, 'NL', 'Kingdom of the Netherlands');
INSERT INTO region (id, code, name) VALUES (-178, 'PA', 'Republic of Panama');
INSERT INTO region (id, code, name) VALUES (-179, 'TD', 'Republic of Chad');
INSERT INTO region (id, code, name) VALUES (-180, 'SB', 'Solomon Islands');
INSERT INTO region (id, code, name) VALUES (-181, 'CY', 'Republic of Cyprus');
INSERT INTO region (id, code, name) VALUES (-182, 'RS', 'Republic of Serbia');
INSERT INTO region (id, code, name) VALUES (-183, 'PY', 'Republic of Paraguay');
INSERT INTO region (id, code, name) VALUES (-184, 'LK', 'Democratic Socialist Republic of Sri Lanka');
INSERT INTO region (id, code, name) VALUES (-185, 'KZ', 'Republic of Kazakhstan');
INSERT INTO region (id, code, name) VALUES (-186, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO region (id, code, name) VALUES (-187, 'NP', 'State of Nepal');
INSERT INTO region (id, code, name) VALUES (-188, 'AM', 'Republic of Armenia');
INSERT INTO region (id, code, name) VALUES (-189, 'PS', 'Occupied Palestinian Territory');
INSERT INTO region (id, code, name) VALUES (-190, 'IQ', 'Republic of Iraq');
INSERT INTO region (id, code, name) VALUES (-191, 'AN', 'Netherlands Antilles');
INSERT INTO region (id, code, name) VALUES (-192, 'CR', 'Republic of Costa Rica');
INSERT INTO region (id, code, name) VALUES (-193, 'HU', 'Republic of Hungary');
INSERT INTO region (id, code, name) VALUES (-194, 'CV', 'Republic of Cape Verde');
INSERT INTO region (id, code, name) VALUES (-195, 'NO', 'Kingdom of Norway');
INSERT INTO region (id, code, name) VALUES (-196, 'TO', 'Kingdom of Tonga');
INSERT INTO region (id, code, name) VALUES (-197, 'GE', 'Georgia');
INSERT INTO region (id, code, name) VALUES (-198, 'BS', 'Commonwealth of the Bahamas');
INSERT INTO region (id, code, name) VALUES (-199, 'TF', 'French Southern Territories');
INSERT INTO region (id, code, name) VALUES (-200, 'KY', 'Cayman Islands');
INSERT INTO region (id, code, name) VALUES (-201, 'TJ', 'Republic of Tajikistan');
INSERT INTO region (id, code, name) VALUES (-202, 'IT', 'Italian Republic');
INSERT INTO region (id, code, name) VALUES (-203, 'GA', 'Gabonese Republic');
INSERT INTO region (id, code, name) VALUES (-204, 'AE', 'United Arab Emirates');
INSERT INTO region (id, code, name) VALUES (-205, 'KE', 'Republic of Kenya');
INSERT INTO region (id, code, name) VALUES (-206, 'BN', 'Brunei Darussalam');
INSERT INTO region (id, code, name) VALUES (-207, 'ZA', 'Republic of South Africa');
INSERT INTO region (id, code, name) VALUES (-208, 'MZ', 'Republic of Mozambique');
INSERT INTO region (id, code, name) VALUES (-209, 'TV', 'Tuvalu');
INSERT INTO region (id, code, name) VALUES (-210, 'EE', 'Republic of Estonia');
INSERT INTO region (id, code, name) VALUES (-211, 'NE', 'Republic of Niger');
INSERT INTO region (id, code, name) VALUES (-212, 'CF', 'Central African Republic');
INSERT INTO region (id, code, name) VALUES (-213, 'NR', 'Republic of Nauru');
INSERT INTO region (id, code, name) VALUES (-214, 'GG', 'Bailiwick of Guernsey');
INSERT INTO region (id, code, name) VALUES (-215, 'TL', 'Democratic Republic of Timor-Leste');
INSERT INTO region (id, code, name) VALUES (-216, 'KN', 'Federation of Saint Kitts and Nevis');
INSERT INTO region (id, code, name) VALUES (-217, 'GI', 'Gibraltar');
INSERT INTO region (id, code, name) VALUES (-218, 'NA', 'Republic of Namibia');
INSERT INTO region (id, code, name) VALUES (-219, 'RW', 'Republic of Rwanda');
INSERT INTO region (id, code, name) VALUES (-220, 'DJ', 'Republic of Djibouti');
INSERT INTO region (id, code, name) VALUES (-221, 'SV', 'Republic of El Salvador');
INSERT INTO region (id, code, name) VALUES (-222, 'MX', 'United Mexican States');
INSERT INTO region (id, code, name) VALUES (-223, 'CM', 'Republic of Cameroon');
INSERT INTO region (id, code, name) VALUES (-224, 'GL', 'Greenland');
INSERT INTO region (id, code, name) VALUES (-225, 'SI', 'Republic of Slovenia');
INSERT INTO region (id, code, name) VALUES (-226, 'BB', 'Barbados');
INSERT INTO region (id, code, name) VALUES (-227, 'TK', 'Tokelau');
INSERT INTO region (id, code, name) VALUES (-228, 'TT', 'Republic of Trinidad and Tobago');
INSERT INTO region (id, code, name) VALUES (-229, 'HK', 'Hong Kong Special Administrative country of China');
INSERT INTO region (id, code, name) VALUES (-230, 'MR', 'Islamic Republic of Mauritania');
INSERT INTO region (id, code, name) VALUES (-231, 'EC', 'Republic of Ecuador');
INSERT INTO region (id, code, name) VALUES (-232, 'TN', 'Tunisian Republic');
INSERT INTO region (id, code, name) VALUES (-233, 'ML', 'Republic of Mali');
INSERT INTO region (id, code, name) VALUES (-234, 'NI', 'Republic of Nicaragua');
INSERT INTO region (id, code, name) VALUES (-235, 'UG', 'Republic of Uganda');
INSERT INTO region (id, code, name) VALUES (-236, 'IM', 'Isle of Man');
INSERT INTO region (id, code, name) VALUES (-237, 'NC', 'New Caledonia');
INSERT INTO region (id, code, name) VALUES (-238, 'DE', 'Federal Republic of Germany');
INSERT INTO region (id, code, name) VALUES (-239, 'MQ', 'Martinique');
INSERT INTO region (id, code, name) VALUES (-240, 'TG', 'Togolese Republic');
INSERT INTO region (id, code, name) VALUES (-241, 'SH', 'Saint Helena');
INSERT INTO region (id, code, name) VALUES (-242, 'DO', 'Dominican Republic');
INSERT INTO region (id, code, name) VALUES (-243, 'GH', 'Republic of Ghana');
INSERT INTO region (id, code, name) VALUES (-244, 'TC', 'Turks and Caicos Islands');
INSERT INTO region (id, code, name) VALUES (-245, 'BI', 'Republic of Burundi');
INSERT INTO region (id, code, name) VALUES (-246, 'MH', 'Republic of the Marshall Islands');
INSERT INTO region (id, code, name) VALUES (-247, 'EG', 'Arab Republic of Egypt');
INSERT INTO region (id, code, name) VALUES (-248, 'AP', 'Asia Pacific countrys');


--
-- TOC entry 1995 (class 0 OID 25414)
-- Dependencies: 166 2011
-- Data for Name: step; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO step (id, name, number) VALUES (7, 'Step1 MobPartner', '1');
INSERT INTO step (id, name, number) VALUES (8, 'Step2 NeverBlue', '2');
INSERT INTO step (id, name, number) VALUES (9, 'Step3 MobPartner NeverBlue', '3');


--
-- TOC entry 1996 (class 0 OID 25422)
-- Dependencies: 167 2011
-- Data for Name: step_template; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO step_template (step_id, templates_id) VALUES (7, 3);
INSERT INTO step_template (step_id, templates_id) VALUES (7, 4);
INSERT INTO step_template (step_id, templates_id) VALUES (8, 5);
INSERT INTO step_template (step_id, templates_id) VALUES (8, 6);
INSERT INTO step_template (step_id, templates_id) VALUES (9, 2);
INSERT INTO step_template (step_id, templates_id) VALUES (9, 3);


--
-- TOC entry 1997 (class 0 OID 25427)
-- Dependencies: 168 2011
-- Data for Name: template; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO template (id, html, name, platform_id) VALUES (1, '25533', 't1', -1);
INSERT INTO template (id, html, name, platform_id) VALUES (2, '25534', 't2', -1);
INSERT INTO template (id, html, name, platform_id) VALUES (3, '25535', 't3', -1);
INSERT INTO template (id, html, name, platform_id) VALUES (4, '25536', 't4', -1);
INSERT INTO template (id, html, name, platform_id) VALUES (5, '25537', 't5', -1);
INSERT INTO template (id, html, name, platform_id) VALUES (6, '25538', 't6', -1);


--
-- TOC entry 1998 (class 0 OID 25435)
-- Dependencies: 169 2011
-- Data for Name: template_region; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO template_region (template_id, region_id) VALUES (1, -1);
INSERT INTO template_region (template_id, region_id) VALUES (1, -2);
INSERT INTO template_region (template_id, region_id) VALUES (1, -3);
INSERT INTO template_region (template_id, region_id) VALUES (1, -4);
INSERT INTO template_region (template_id, region_id) VALUES (1, -5);
INSERT INTO template_region (template_id, region_id) VALUES (1, -6);
INSERT INTO template_region (template_id, region_id) VALUES (1, -7);
INSERT INTO template_region (template_id, region_id) VALUES (1, -8);
INSERT INTO template_region (template_id, region_id) VALUES (1, -9);
INSERT INTO template_region (template_id, region_id) VALUES (1, -10);
INSERT INTO template_region (template_id, region_id) VALUES (1, -11);
INSERT INTO template_region (template_id, region_id) VALUES (1, -12);
INSERT INTO template_region (template_id, region_id) VALUES (1, -13);
INSERT INTO template_region (template_id, region_id) VALUES (1, -14);
INSERT INTO template_region (template_id, region_id) VALUES (1, -15);
INSERT INTO template_region (template_id, region_id) VALUES (1, -16);
INSERT INTO template_region (template_id, region_id) VALUES (1, -18);
INSERT INTO template_region (template_id, region_id) VALUES (1, -17);
INSERT INTO template_region (template_id, region_id) VALUES (1, -20);
INSERT INTO template_region (template_id, region_id) VALUES (1, -19);
INSERT INTO template_region (template_id, region_id) VALUES (1, -22);
INSERT INTO template_region (template_id, region_id) VALUES (1, -21);
INSERT INTO template_region (template_id, region_id) VALUES (1, -24);
INSERT INTO template_region (template_id, region_id) VALUES (1, -23);
INSERT INTO template_region (template_id, region_id) VALUES (1, -26);
INSERT INTO template_region (template_id, region_id) VALUES (1, -25);
INSERT INTO template_region (template_id, region_id) VALUES (1, -28);
INSERT INTO template_region (template_id, region_id) VALUES (1, -27);
INSERT INTO template_region (template_id, region_id) VALUES (1, -30);
INSERT INTO template_region (template_id, region_id) VALUES (1, -29);
INSERT INTO template_region (template_id, region_id) VALUES (1, -32);
INSERT INTO template_region (template_id, region_id) VALUES (1, -31);
INSERT INTO template_region (template_id, region_id) VALUES (1, -35);
INSERT INTO template_region (template_id, region_id) VALUES (1, -36);
INSERT INTO template_region (template_id, region_id) VALUES (1, -33);
INSERT INTO template_region (template_id, region_id) VALUES (1, -34);
INSERT INTO template_region (template_id, region_id) VALUES (1, -39);
INSERT INTO template_region (template_id, region_id) VALUES (1, -40);
INSERT INTO template_region (template_id, region_id) VALUES (1, -37);
INSERT INTO template_region (template_id, region_id) VALUES (1, -38);
INSERT INTO template_region (template_id, region_id) VALUES (1, -43);
INSERT INTO template_region (template_id, region_id) VALUES (1, -44);
INSERT INTO template_region (template_id, region_id) VALUES (1, -41);
INSERT INTO template_region (template_id, region_id) VALUES (1, -42);
INSERT INTO template_region (template_id, region_id) VALUES (1, -47);
INSERT INTO template_region (template_id, region_id) VALUES (1, -48);
INSERT INTO template_region (template_id, region_id) VALUES (1, -45);
INSERT INTO template_region (template_id, region_id) VALUES (1, -46);
INSERT INTO template_region (template_id, region_id) VALUES (1, -52);
INSERT INTO template_region (template_id, region_id) VALUES (1, -51);
INSERT INTO template_region (template_id, region_id) VALUES (1, -50);
INSERT INTO template_region (template_id, region_id) VALUES (1, -49);
INSERT INTO template_region (template_id, region_id) VALUES (1, -56);
INSERT INTO template_region (template_id, region_id) VALUES (1, -55);
INSERT INTO template_region (template_id, region_id) VALUES (1, -54);
INSERT INTO template_region (template_id, region_id) VALUES (1, -53);
INSERT INTO template_region (template_id, region_id) VALUES (1, -60);
INSERT INTO template_region (template_id, region_id) VALUES (1, -59);
INSERT INTO template_region (template_id, region_id) VALUES (1, -58);
INSERT INTO template_region (template_id, region_id) VALUES (1, -57);
INSERT INTO template_region (template_id, region_id) VALUES (1, -64);
INSERT INTO template_region (template_id, region_id) VALUES (1, -63);
INSERT INTO template_region (template_id, region_id) VALUES (1, -62);
INSERT INTO template_region (template_id, region_id) VALUES (1, -61);
INSERT INTO template_region (template_id, region_id) VALUES (1, -69);
INSERT INTO template_region (template_id, region_id) VALUES (1, -70);
INSERT INTO template_region (template_id, region_id) VALUES (1, -71);
INSERT INTO template_region (template_id, region_id) VALUES (1, -72);
INSERT INTO template_region (template_id, region_id) VALUES (1, -65);
INSERT INTO template_region (template_id, region_id) VALUES (1, -66);
INSERT INTO template_region (template_id, region_id) VALUES (1, -67);
INSERT INTO template_region (template_id, region_id) VALUES (1, -68);
INSERT INTO template_region (template_id, region_id) VALUES (1, -77);
INSERT INTO template_region (template_id, region_id) VALUES (1, -78);
INSERT INTO template_region (template_id, region_id) VALUES (1, -79);
INSERT INTO template_region (template_id, region_id) VALUES (1, -80);
INSERT INTO template_region (template_id, region_id) VALUES (1, -73);
INSERT INTO template_region (template_id, region_id) VALUES (1, -74);
INSERT INTO template_region (template_id, region_id) VALUES (1, -75);
INSERT INTO template_region (template_id, region_id) VALUES (1, -76);
INSERT INTO template_region (template_id, region_id) VALUES (1, -86);
INSERT INTO template_region (template_id, region_id) VALUES (1, -85);
INSERT INTO template_region (template_id, region_id) VALUES (1, -88);
INSERT INTO template_region (template_id, region_id) VALUES (1, -87);
INSERT INTO template_region (template_id, region_id) VALUES (1, -82);
INSERT INTO template_region (template_id, region_id) VALUES (1, -81);
INSERT INTO template_region (template_id, region_id) VALUES (1, -84);
INSERT INTO template_region (template_id, region_id) VALUES (1, -83);
INSERT INTO template_region (template_id, region_id) VALUES (1, -94);
INSERT INTO template_region (template_id, region_id) VALUES (1, -93);
INSERT INTO template_region (template_id, region_id) VALUES (1, -96);
INSERT INTO template_region (template_id, region_id) VALUES (1, -95);
INSERT INTO template_region (template_id, region_id) VALUES (1, -90);
INSERT INTO template_region (template_id, region_id) VALUES (1, -89);
INSERT INTO template_region (template_id, region_id) VALUES (1, -92);
INSERT INTO template_region (template_id, region_id) VALUES (1, -91);
INSERT INTO template_region (template_id, region_id) VALUES (1, -103);
INSERT INTO template_region (template_id, region_id) VALUES (1, -104);
INSERT INTO template_region (template_id, region_id) VALUES (1, -101);
INSERT INTO template_region (template_id, region_id) VALUES (1, -102);
INSERT INTO template_region (template_id, region_id) VALUES (1, -99);
INSERT INTO template_region (template_id, region_id) VALUES (1, -100);
INSERT INTO template_region (template_id, region_id) VALUES (1, -97);
INSERT INTO template_region (template_id, region_id) VALUES (1, -98);
INSERT INTO template_region (template_id, region_id) VALUES (1, -111);
INSERT INTO template_region (template_id, region_id) VALUES (1, -112);
INSERT INTO template_region (template_id, region_id) VALUES (1, -109);
INSERT INTO template_region (template_id, region_id) VALUES (1, -110);
INSERT INTO template_region (template_id, region_id) VALUES (1, -107);
INSERT INTO template_region (template_id, region_id) VALUES (1, -108);
INSERT INTO template_region (template_id, region_id) VALUES (1, -105);
INSERT INTO template_region (template_id, region_id) VALUES (1, -106);
INSERT INTO template_region (template_id, region_id) VALUES (1, -120);
INSERT INTO template_region (template_id, region_id) VALUES (1, -119);
INSERT INTO template_region (template_id, region_id) VALUES (1, -118);
INSERT INTO template_region (template_id, region_id) VALUES (1, -117);
INSERT INTO template_region (template_id, region_id) VALUES (1, -116);
INSERT INTO template_region (template_id, region_id) VALUES (1, -115);
INSERT INTO template_region (template_id, region_id) VALUES (1, -114);
INSERT INTO template_region (template_id, region_id) VALUES (1, -113);
INSERT INTO template_region (template_id, region_id) VALUES (1, -128);
INSERT INTO template_region (template_id, region_id) VALUES (1, -127);
INSERT INTO template_region (template_id, region_id) VALUES (1, -126);
INSERT INTO template_region (template_id, region_id) VALUES (1, -125);
INSERT INTO template_region (template_id, region_id) VALUES (1, -124);
INSERT INTO template_region (template_id, region_id) VALUES (1, -123);
INSERT INTO template_region (template_id, region_id) VALUES (1, -122);
INSERT INTO template_region (template_id, region_id) VALUES (1, -121);
INSERT INTO template_region (template_id, region_id) VALUES (1, -138);
INSERT INTO template_region (template_id, region_id) VALUES (1, -137);
INSERT INTO template_region (template_id, region_id) VALUES (1, -140);
INSERT INTO template_region (template_id, region_id) VALUES (1, -139);
INSERT INTO template_region (template_id, region_id) VALUES (1, -142);
INSERT INTO template_region (template_id, region_id) VALUES (1, -141);
INSERT INTO template_region (template_id, region_id) VALUES (1, -144);
INSERT INTO template_region (template_id, region_id) VALUES (1, -143);
INSERT INTO template_region (template_id, region_id) VALUES (1, -130);
INSERT INTO template_region (template_id, region_id) VALUES (1, -129);
INSERT INTO template_region (template_id, region_id) VALUES (1, -132);
INSERT INTO template_region (template_id, region_id) VALUES (1, -131);
INSERT INTO template_region (template_id, region_id) VALUES (1, -134);
INSERT INTO template_region (template_id, region_id) VALUES (1, -133);
INSERT INTO template_region (template_id, region_id) VALUES (1, -136);
INSERT INTO template_region (template_id, region_id) VALUES (1, -135);
INSERT INTO template_region (template_id, region_id) VALUES (1, -153);
INSERT INTO template_region (template_id, region_id) VALUES (1, -154);
INSERT INTO template_region (template_id, region_id) VALUES (1, -155);
INSERT INTO template_region (template_id, region_id) VALUES (1, -156);
INSERT INTO template_region (template_id, region_id) VALUES (1, -157);
INSERT INTO template_region (template_id, region_id) VALUES (1, -158);
INSERT INTO template_region (template_id, region_id) VALUES (1, -159);
INSERT INTO template_region (template_id, region_id) VALUES (1, -160);
INSERT INTO template_region (template_id, region_id) VALUES (1, -145);
INSERT INTO template_region (template_id, region_id) VALUES (1, -146);
INSERT INTO template_region (template_id, region_id) VALUES (1, -147);
INSERT INTO template_region (template_id, region_id) VALUES (1, -148);
INSERT INTO template_region (template_id, region_id) VALUES (1, -149);
INSERT INTO template_region (template_id, region_id) VALUES (1, -150);
INSERT INTO template_region (template_id, region_id) VALUES (1, -151);
INSERT INTO template_region (template_id, region_id) VALUES (1, -152);
INSERT INTO template_region (template_id, region_id) VALUES (1, -172);
INSERT INTO template_region (template_id, region_id) VALUES (1, -171);
INSERT INTO template_region (template_id, region_id) VALUES (1, -170);
INSERT INTO template_region (template_id, region_id) VALUES (1, -169);
INSERT INTO template_region (template_id, region_id) VALUES (1, -176);
INSERT INTO template_region (template_id, region_id) VALUES (1, -175);
INSERT INTO template_region (template_id, region_id) VALUES (1, -174);
INSERT INTO template_region (template_id, region_id) VALUES (1, -173);
INSERT INTO template_region (template_id, region_id) VALUES (1, -164);
INSERT INTO template_region (template_id, region_id) VALUES (1, -163);
INSERT INTO template_region (template_id, region_id) VALUES (1, -162);
INSERT INTO template_region (template_id, region_id) VALUES (1, -161);
INSERT INTO template_region (template_id, region_id) VALUES (1, -168);
INSERT INTO template_region (template_id, region_id) VALUES (1, -167);
INSERT INTO template_region (template_id, region_id) VALUES (1, -166);
INSERT INTO template_region (template_id, region_id) VALUES (1, -165);
INSERT INTO template_region (template_id, region_id) VALUES (1, -187);
INSERT INTO template_region (template_id, region_id) VALUES (1, -188);
INSERT INTO template_region (template_id, region_id) VALUES (1, -185);
INSERT INTO template_region (template_id, region_id) VALUES (1, -186);
INSERT INTO template_region (template_id, region_id) VALUES (1, -191);
INSERT INTO template_region (template_id, region_id) VALUES (1, -192);
INSERT INTO template_region (template_id, region_id) VALUES (1, -189);
INSERT INTO template_region (template_id, region_id) VALUES (1, -190);
INSERT INTO template_region (template_id, region_id) VALUES (1, -179);
INSERT INTO template_region (template_id, region_id) VALUES (1, -180);
INSERT INTO template_region (template_id, region_id) VALUES (1, -177);
INSERT INTO template_region (template_id, region_id) VALUES (1, -178);
INSERT INTO template_region (template_id, region_id) VALUES (1, -183);
INSERT INTO template_region (template_id, region_id) VALUES (1, -184);
INSERT INTO template_region (template_id, region_id) VALUES (1, -181);
INSERT INTO template_region (template_id, region_id) VALUES (1, -182);
INSERT INTO template_region (template_id, region_id) VALUES (1, -206);
INSERT INTO template_region (template_id, region_id) VALUES (1, -205);
INSERT INTO template_region (template_id, region_id) VALUES (1, -208);
INSERT INTO template_region (template_id, region_id) VALUES (1, -207);
INSERT INTO template_region (template_id, region_id) VALUES (1, -202);
INSERT INTO template_region (template_id, region_id) VALUES (1, -201);
INSERT INTO template_region (template_id, region_id) VALUES (1, -204);
INSERT INTO template_region (template_id, region_id) VALUES (1, -203);
INSERT INTO template_region (template_id, region_id) VALUES (1, -198);
INSERT INTO template_region (template_id, region_id) VALUES (1, -197);
INSERT INTO template_region (template_id, region_id) VALUES (1, -200);
INSERT INTO template_region (template_id, region_id) VALUES (1, -199);
INSERT INTO template_region (template_id, region_id) VALUES (1, -194);
INSERT INTO template_region (template_id, region_id) VALUES (1, -193);
INSERT INTO template_region (template_id, region_id) VALUES (1, -196);
INSERT INTO template_region (template_id, region_id) VALUES (1, -195);
INSERT INTO template_region (template_id, region_id) VALUES (1, -221);
INSERT INTO template_region (template_id, region_id) VALUES (1, -222);
INSERT INTO template_region (template_id, region_id) VALUES (1, -223);
INSERT INTO template_region (template_id, region_id) VALUES (1, -224);
INSERT INTO template_region (template_id, region_id) VALUES (1, -217);
INSERT INTO template_region (template_id, region_id) VALUES (1, -218);
INSERT INTO template_region (template_id, region_id) VALUES (1, -219);
INSERT INTO template_region (template_id, region_id) VALUES (1, -220);
INSERT INTO template_region (template_id, region_id) VALUES (1, -213);
INSERT INTO template_region (template_id, region_id) VALUES (1, -214);
INSERT INTO template_region (template_id, region_id) VALUES (1, -215);
INSERT INTO template_region (template_id, region_id) VALUES (1, -216);
INSERT INTO template_region (template_id, region_id) VALUES (1, -209);
INSERT INTO template_region (template_id, region_id) VALUES (1, -210);
INSERT INTO template_region (template_id, region_id) VALUES (1, -211);
INSERT INTO template_region (template_id, region_id) VALUES (1, -212);
INSERT INTO template_region (template_id, region_id) VALUES (1, -240);
INSERT INTO template_region (template_id, region_id) VALUES (1, -239);
INSERT INTO template_region (template_id, region_id) VALUES (1, -238);
INSERT INTO template_region (template_id, region_id) VALUES (1, -237);
INSERT INTO template_region (template_id, region_id) VALUES (1, -236);
INSERT INTO template_region (template_id, region_id) VALUES (1, -235);
INSERT INTO template_region (template_id, region_id) VALUES (1, -234);
INSERT INTO template_region (template_id, region_id) VALUES (1, -233);
INSERT INTO template_region (template_id, region_id) VALUES (1, -232);
INSERT INTO template_region (template_id, region_id) VALUES (1, -231);
INSERT INTO template_region (template_id, region_id) VALUES (1, -230);
INSERT INTO template_region (template_id, region_id) VALUES (1, -229);
INSERT INTO template_region (template_id, region_id) VALUES (1, -228);
INSERT INTO template_region (template_id, region_id) VALUES (1, -227);
INSERT INTO template_region (template_id, region_id) VALUES (1, -226);
INSERT INTO template_region (template_id, region_id) VALUES (1, -225);
INSERT INTO template_region (template_id, region_id) VALUES (1, -247);
INSERT INTO template_region (template_id, region_id) VALUES (1, -248);
INSERT INTO template_region (template_id, region_id) VALUES (1, -245);
INSERT INTO template_region (template_id, region_id) VALUES (1, -246);
INSERT INTO template_region (template_id, region_id) VALUES (1, -243);
INSERT INTO template_region (template_id, region_id) VALUES (1, -244);
INSERT INTO template_region (template_id, region_id) VALUES (1, -241);
INSERT INTO template_region (template_id, region_id) VALUES (1, -242);
INSERT INTO template_region (template_id, region_id) VALUES (4, -167);
INSERT INTO template_region (template_id, region_id) VALUES (5, -167);
INSERT INTO template_region (template_id, region_id) VALUES (6, -167);
INSERT INTO template_region (template_id, region_id) VALUES (2, -167);
INSERT INTO template_region (template_id, region_id) VALUES (3, -167);


--
-- TOC entry 1999 (class 0 OID 25440)
-- Dependencies: 170 2011
-- Data for Name: usergroup; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO usergroup (id, description, name) VALUES (-1, 'admin', 'admin');


--
-- TOC entry 2000 (class 0 OID 25448)
-- Dependencies: 171 2011
-- Data for Name: usergroupaccess; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO usergroupaccess (id, pattern, usergroup_id) VALUES (-1, '.*', -1);


--
-- TOC entry 2002 (class 0 OID 25458)
-- Dependencies: 173 2011
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO users (id, email, login, password, usergroup_id, userstatus_id) VALUES (-1, 'adoptimizeradmin@ximad.com', 'adoptimizeradmin', 'gnzLDuqKcGxMNKFokfhOew==', -1, -1);


--
-- TOC entry 2001 (class 0 OID 25453)
-- Dependencies: 172 2011
-- Data for Name: userstatus; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO userstatus (id, name) VALUES (-1, 'active');
INSERT INTO userstatus (id, name) VALUES (-2, 'block');


--
-- TOC entry 2003 (class 0 OID 25466)
-- Dependencies: 174 2011
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: interstitial
--

INSERT INTO version (id, version, platform_id) VALUES (-1, 1, -1);
INSERT INTO version (id, version, platform_id) VALUES (-2, 1, -2);
INSERT INTO version (id, version, platform_id) VALUES (-3, 1, -3);
INSERT INTO version (id, version, platform_id) VALUES (-4, 1, -4);
INSERT INTO version (id, version, platform_id) VALUES (-5, 1, -5);
INSERT INTO version (id, version, platform_id) VALUES (-6, 1, -6);
INSERT INTO version (id, version, platform_id) VALUES (-7, 1, -7);
INSERT INTO version (id, version, platform_id) VALUES (-8, 1, -8);
INSERT INTO version (id, version, platform_id) VALUES (-9, 1, -9);
INSERT INTO version (id, version, platform_id) VALUES (-10, 1, -10);
INSERT INTO version (id, version, platform_id) VALUES (-11, 1, -11);
INSERT INTO version (id, version, platform_id) VALUES (-12, 1, -12);
INSERT INTO version (id, version, platform_id) VALUES (-13, 1, -13);
INSERT INTO version (id, version, platform_id) VALUES (-14, 1, -14);
INSERT INTO version (id, version, platform_id) VALUES (-15, 1, -15);
INSERT INTO version (id, version, platform_id) VALUES (-16, 1, -16);


--
-- TOC entry 2010 (class 0 OID 0)
-- Dependencies: 2011
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: 
--

SET search_path = pg_catalog;

BEGIN;

SELECT pg_catalog.lo_open('25533', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f632e6d6f62706172746e65722e6d6f62692f3f733d333834363837223e3c696d67207372633d22687474703a2f2f722e6d6f62706172746e65722e6d6f62692f3f733d3338343638372220626f726465723d22302220616c743d22436c69636b206865726522202f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('25534', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f632e6d6f62706172746e65722e6d6f62692f3f733d33383635373026613d3132383926703d3430323537223e3c696d67207372633d22687474703a2f2f722e6d6f62706172746e65722e6d6f62692f3f733d33383635373026613d3132383926703d34303235372220626f726465723d22302220616c743d22436c69636b206865726522202f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('25535', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f632e6d6f62706172746e65722e6d6f62692f3f733d33383635373026613d3132383926703d3430323631223e3c696d67207372633d22687474703a2f2f722e6d6f62706172746e65722e6d6f62692f3f733d33383635373026613d3132383926703d34303236312220626f726465723d22302220616c743d22436c69636b206865726522202f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('25536', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f632e6d6f62706172746e65722e6d6f62692f3f733d33383635373126613d3134303326703d3433383537223e3c696d67207372633d22687474703a2f2f722e6d6f62706172746e65722e6d6f62692f3f733d33383635373126613d3134303326703d34333835372220626f726465723d22302220616c743d22436c69636b206865726522202f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('25537', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f6c776b656e2e636f6d2f636c69636b2f3f733d32333430313726633d373535333437223e3c696d67207372633d22687474703a2f2f6c776b656e2e636f6d2f696d616765732f31343634382d3735353334372d333030783235302e6a70673f733d32333430313722207374796c653d2277696474683a2033303070783b206865696768743a2032353070783b20626f726465723a203070783b222f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('25538', 131072);
SELECT pg_catalog.lowrite(0, '\x3c6120687265663d22687474703a2f2f66627376752e636f6d2f636c69636b2f3f733d32333430313726633d373436313332223e3c696d67207372633d22687474703a2f2f66627376752e636f6d2f696d616765732f31343435332d3734363133322d333030783235302e6769663f733d32333430313722207374796c653d2277696474683a2033303070783b206865696768743a2032353070783b20626f726465723a203070783b222f3e3c2f613e');
SELECT pg_catalog.lo_close(0);

COMMIT;

SET search_path = public, pg_catalog;

--
-- TOC entry 1951 (class 2606 OID 25387)
-- Dependencies: 161 161 2012
-- Name: chain_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY chain
    ADD CONSTRAINT chain_pkey PRIMARY KEY (id);


--
-- TOC entry 1953 (class 2606 OID 25392)
-- Dependencies: 162 162 162 2012
-- Name: chain_step_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY chain_step
    ADD CONSTRAINT chain_step_pkey PRIMARY KEY (chain_id, steps_id);


--
-- TOC entry 1955 (class 2606 OID 25400)
-- Dependencies: 163 163 2012
-- Name: macros_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY macros
    ADD CONSTRAINT macros_pkey PRIMARY KEY (id);


--
-- TOC entry 1957 (class 2606 OID 25405)
-- Dependencies: 164 164 2012
-- Name: platform_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY platform
    ADD CONSTRAINT platform_pkey PRIMARY KEY (id);


--
-- TOC entry 1959 (class 2606 OID 25413)
-- Dependencies: 165 165 2012
-- Name: region_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- TOC entry 1961 (class 2606 OID 25421)
-- Dependencies: 166 166 2012
-- Name: step_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY step
    ADD CONSTRAINT step_pkey PRIMARY KEY (id);


--
-- TOC entry 1963 (class 2606 OID 25426)
-- Dependencies: 167 167 167 2012
-- Name: step_template_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY step_template
    ADD CONSTRAINT step_template_pkey PRIMARY KEY (step_id, templates_id);


--
-- TOC entry 1965 (class 2606 OID 25434)
-- Dependencies: 168 168 2012
-- Name: template_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY template
    ADD CONSTRAINT template_pkey PRIMARY KEY (id);


--
-- TOC entry 1967 (class 2606 OID 25439)
-- Dependencies: 169 169 169 2012
-- Name: template_region_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY template_region
    ADD CONSTRAINT template_region_pkey PRIMARY KEY (template_id, region_id);


--
-- TOC entry 1969 (class 2606 OID 25447)
-- Dependencies: 170 170 2012
-- Name: usergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY usergroup
    ADD CONSTRAINT usergroup_pkey PRIMARY KEY (id);


--
-- TOC entry 1971 (class 2606 OID 25452)
-- Dependencies: 171 171 2012
-- Name: usergroupaccess_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY usergroupaccess
    ADD CONSTRAINT usergroupaccess_pkey PRIMARY KEY (id);


--
-- TOC entry 1975 (class 2606 OID 25465)
-- Dependencies: 173 173 2012
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 1973 (class 2606 OID 25457)
-- Dependencies: 172 172 2012
-- Name: userstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY userstatus
    ADD CONSTRAINT userstatus_pkey PRIMARY KEY (id);


--
-- TOC entry 1977 (class 2606 OID 25470)
-- Dependencies: 174 174 2012
-- Name: version_pkey; Type: CONSTRAINT; Schema: public; Owner: interstitial; Tablespace: 
--

ALTER TABLE ONLY version
    ADD CONSTRAINT version_pkey PRIMARY KEY (id);


--
-- TOC entry 1981 (class 2606 OID 25486)
-- Dependencies: 1964 168 167 2012
-- Name: fk29d0708d1297877f; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY step_template
    ADD CONSTRAINT fk29d0708d1297877f FOREIGN KEY (templates_id) REFERENCES template(id);


--
-- TOC entry 1982 (class 2606 OID 25491)
-- Dependencies: 1960 167 166 2012
-- Name: fk29d0708ddefaa35e; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY step_template
    ADD CONSTRAINT fk29d0708ddefaa35e FOREIGN KEY (step_id) REFERENCES step(id);


--
-- TOC entry 1978 (class 2606 OID 25471)
-- Dependencies: 174 161 1976 2012
-- Name: fk3e0e6a1fa442b16; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY chain
    ADD CONSTRAINT fk3e0e6a1fa442b16 FOREIGN KEY (version_id) REFERENCES version(id);


--
-- TOC entry 1985 (class 2606 OID 25506)
-- Dependencies: 169 1964 168 2012
-- Name: fk4246de59b6306a9e; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY template_region
    ADD CONSTRAINT fk4246de59b6306a9e FOREIGN KEY (template_id) REFERENCES template(id);


--
-- TOC entry 1984 (class 2606 OID 25501)
-- Dependencies: 1958 169 165 2012
-- Name: fk4246de59bca0195e; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY template_region
    ADD CONSTRAINT fk4246de59bca0195e FOREIGN KEY (region_id) REFERENCES region(id);


--
-- TOC entry 1986 (class 2606 OID 25511)
-- Dependencies: 1968 170 171 2012
-- Name: fk444733d8d35d8a76; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY usergroupaccess
    ADD CONSTRAINT fk444733d8d35d8a76 FOREIGN KEY (usergroup_id) REFERENCES usergroup(id);


--
-- TOC entry 1988 (class 2606 OID 25521)
-- Dependencies: 1972 173 172 2012
-- Name: fk4e39de889de9ade; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk4e39de889de9ade FOREIGN KEY (userstatus_id) REFERENCES userstatus(id);


--
-- TOC entry 1987 (class 2606 OID 25516)
-- Dependencies: 1968 173 170 2012
-- Name: fk4e39de8d35d8a76; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk4e39de8d35d8a76 FOREIGN KEY (usergroup_id) REFERENCES usergroup(id);


--
-- TOC entry 1989 (class 2606 OID 25526)
-- Dependencies: 174 1956 164 2012
-- Name: fk782db4b855d7bbfe; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY version
    ADD CONSTRAINT fk782db4b855d7bbfe FOREIGN KEY (platform_id) REFERENCES platform(id);


--
-- TOC entry 1983 (class 2606 OID 25496)
-- Dependencies: 1956 168 164 2012
-- Name: fkb515309a55d7bbfe; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY template
    ADD CONSTRAINT fkb515309a55d7bbfe FOREIGN KEY (platform_id) REFERENCES platform(id);


--
-- TOC entry 1980 (class 2606 OID 25481)
-- Dependencies: 166 162 1960 2012
-- Name: fkfadd49caa50bb523; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY chain_step
    ADD CONSTRAINT fkfadd49caa50bb523 FOREIGN KEY (steps_id) REFERENCES step(id);


--
-- TOC entry 1979 (class 2606 OID 25476)
-- Dependencies: 161 162 1950 2012
-- Name: fkfadd49caff65dd76; Type: FK CONSTRAINT; Schema: public; Owner: interstitial
--

ALTER TABLE ONLY chain_step
    ADD CONSTRAINT fkfadd49caff65dd76 FOREIGN KEY (chain_id) REFERENCES chain(id);


--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-10-26 17:43:53 FET

--
-- PostgreSQL database dump complete
--

