--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-12-27 17:40:22 -04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2202 (class 1262 OID 24664)
-- Name: dbcid; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dbcid WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_BO.UTF-8' LC_CTYPE = 'es_BO.UTF-8';


ALTER DATABASE dbcid OWNER TO postgres;

\connect dbcid

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12467)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 24665)
-- Name: client_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE client_data (
    gbagecage integer NOT NULL,
    gbagenomb character varying(200) NOT NULL,
    gbagesexo character varying(20) NOT NULL,
    gbagefnac date NOT NULL,
    gbagefreg date NOT NULL,
    gbageeciv character varying(20) NOT NULL,
    gbagenaci character varying(30) NOT NULL,
    gbageciiu integer NOT NULL,
    gbagecalf character varying(20) NOT NULL,
    gbagetper character varying(20) NOT NULL,
    gbdacnive character varying(30) NOT NULL,
    gbdactres character varying(30) NOT NULL,
    gbdactipo character varying(30) NOT NULL,
    gbdbicper integer NOT NULL,
    number_loan integer NOT NULL,
    gbdbifech date NOT NULL,
    gbdbiifij numeric(10,2) NOT NULL,
    gbdbiivar numeric(10,2) NOT NULL,
    gbdbigfij numeric(10,2) NOT NULL,
    gbdbigvar numeric(10,2) NOT NULL,
    gbdbitact numeric(10,2) NOT NULL,
    gbdbitpas numeric(10,2) NOT NULL,
    gbdbipatr numeric(10,2) NOT NULL,
    gbdbitpre numeric(10,5) NOT NULL,
    gbageagen character varying(30) NOT NULL
);


ALTER TABLE client_data OWNER TO postgres;

--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagenomb; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagenomb IS 'nombre';


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagesexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagesexo IS 'genero';


--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagefnac; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagefnac IS 'Fecha nacimiento';


--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagefreg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagefreg IS 'Fecha filiacion';


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbageeciv; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbageeciv IS 'Estado civil';


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagenaci; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagenaci IS 'Nacionalidad';


--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagecalf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagecalf IS 'Calificacion';


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbagetper; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbagetper IS 'Tipo de persona';


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdacnive; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdacnive IS 'Nivel de estudio';


--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdactres; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdactres IS 'Tipo de vivienda';


--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdactipo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdactipo IS 'Tipo de cliente';


--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbicper; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbicper IS 'Personal ocupado';


--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.number_loan; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.number_loan IS 'Cantidad de creditos';


--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbifech; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbifech IS 'Fecha declaracion';


--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbiifij; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbiifij IS 'Ingresos fijos';


--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbiivar; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbiivar IS 'Ingresos variables';


--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbigfij; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbigfij IS 'Gastos fijos';


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbigvar; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbigvar IS 'Gastos variables';


--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbitact; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbitact IS 'Total activos';


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbitpas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbitpas IS 'Total pasivos';


--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbipatr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbipatr IS 'Patrimonio';


--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbdbitpre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbdbitpre IS 'Size cliente';


--
-- TOC entry 2227 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN client_data.gbageagen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN client_data.gbageagen IS 'Agencia';


--
-- TOC entry 2197 (class 0 OID 24665)
-- Dependencies: 185
-- Data for Name: client_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_data (gbagecage, gbagenomb, gbagesexo, gbagefnac, gbagefreg, gbageeciv, gbagenaci, gbageciiu, gbagecalf, gbagetper, gbdacnive, gbdactres, gbdactipo, gbdbicper, number_loan, gbdbifech, gbdbiifij, gbdbiivar, gbdbigfij, gbdbigvar, gbdbitact, gbdbitpas, gbdbipatr, gbdbitpre, gbageagen) FROM stdin;
\.


--
-- TOC entry 2079 (class 2606 OID 24669)
-- Name: client_data client_data_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client_data
    ADD CONSTRAINT client_data_pk PRIMARY KEY (gbagecage);


--
-- TOC entry 2077 (class 1259 OID 24670)
-- Name: client_data_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_data_idx ON client_data USING btree (gbagecage);


-- Completed on 2017-12-27 17:40:22 -04

--
-- PostgreSQL database dump complete
--

