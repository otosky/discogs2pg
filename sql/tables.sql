SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

CREATE TABLE temp_artist (
    id integer NOT NULL,
    name text NOT NULL,
    realname text,
    urls text[],
    namevariations text[],
    aliases text[],
    releases integer[],
    profile text,
    members text[],
    groups text[],
    data_quality text
);

CREATE TABLE temp_label (
    id integer NOT NULL,
    name text NOT NULL,
    contactinfo text,
    profile text,
    parent_label text,
    sublabels text[],
    urls text[],
    data_quality text
);

CREATE TABLE temp_release (
    id integer NOT NULL,
    status text,
    title text,
    country text,
    released text,
    notes text,
    genres text[],
    styles text[],
    master_id int,
    data_quality text
);

CREATE TABLE temp_release_artist (
    release_id integer NOT NULL,
    artist_id integer NOT NULL,
    anv text,
    join_relation text,
    role text
);

CREATE TABLE temp_release_extraartist (
    release_id integer NOT NULL,
    artist_id integer NOT NULL,
    anv text,
    join_relation text,
    role text
);

CREATE TABLE temp_release_format (
    release_id integer NOT NULL,
    format_name text,
    format_text text,
    qty bigint,
    descriptions text[]
);

CREATE TABLE temp_release_label (
    release_id integer NOT NULL,
    label text,
    catno text
);

CREATE TABLE temp_release_identifier (
    release_id integer NOT NULL,
    description text,
    type text,
    value text
);

CREATE TABLE temp_release_video (
    release_id integer NOT NULL,
    duration integer,
    src text,
    title text
);

CREATE TABLE temp_release_company (
    release_id integer NOT NULL,
    company_id integer NOT NULL,
    entity_type integer NOT NULL,
    entity_type_name text,
    catno text
);

CREATE TABLE temp_track (
    release_id integer NOT NULL,
    idx integer NOT NULL,
    position text,
    title text,
    duration text
);

CREATE TABLE temp_track_artist (
    track_idx text NOT NULL,
    release_id integer NOT NULL,
    artist_id integer NOT NULL,
    anv text,
    join_relation text,
    role text
);

CREATE TABLE temp_track_extraartist (
    track_idx text NOT NULL,
    release_id integer NOT NULL,
    artist_id integer NOT NULL,
    anv text,
    join_relation text,
    role text
);

CREATE TABLE temp_master (
    id integer NOT NULL,
    title text,
    main_release integer NOT NULL,
    year integer,
    notes text,
    genres text[],
    styles text[],
    data_quality text
 );

CREATE TABLE temp_master_artist (
    master_id integer NOT NULL,
    artist_id integer NOT NULL,
    anv text,
    join_relation text,
    role text
);

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
