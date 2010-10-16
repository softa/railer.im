--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authorships; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authorships (
    id integer NOT NULL,
    rubygem_id integer NOT NULL,
    user_id integer,
    author_name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: authorships_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE authorships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: authorships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authorships_id_seq OWNED BY authorships.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE companies (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- Name: dependencies; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE dependencies (
    id integer NOT NULL,
    repository_id integer NOT NULL,
    rubygem_id integer NOT NULL,
    environments text DEFAULT 'all'::text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: dependencies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE dependencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dependencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE dependencies_id_seq OWNED BY dependencies.id;


--
-- Name: downloads; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE downloads (
    id integer NOT NULL,
    rubygem_id integer NOT NULL,
    version text NOT NULL,
    counter integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: downloads_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE downloads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: downloads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE downloads_id_seq OWNED BY downloads.id;


--
-- Name: git_followers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE git_followers (
    id integer NOT NULL,
    follower_id integer NOT NULL,
    followee_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: git_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE git_followers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: git_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE git_followers_id_seq OWNED BY git_followers.id;


--
-- Name: recomendations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE recomendations (
    id integer NOT NULL,
    recomends_id integer NOT NULL,
    recomended_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: recomendations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE recomendations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: recomendations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE recomendations_id_seq OWNED BY recomendations.id;


--
-- Name: repositories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE repositories (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name text NOT NULL,
    originaly_created_at timestamp without time zone DEFAULT now() NOT NULL,
    forks integer DEFAULT 0 NOT NULL,
    has_downloads boolean DEFAULT false NOT NULL,
    open_issues integer DEFAULT 0 NOT NULL,
    pushed_at timestamp without time zone DEFAULT now() NOT NULL,
    watchers integer DEFAULT 0 NOT NULL,
    fork boolean DEFAULT false NOT NULL,
    score double precision DEFAULT 0 NOT NULL,
    size integer DEFAULT 0 NOT NULL,
    repo_id text,
    description text,
    owner text,
    language text,
    homepage text,
    url text,
    original_user text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE repositories_id_seq OWNED BY repositories.id;


--
-- Name: rubygems; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rubygems (
    id integer NOT NULL,
    name text,
    description text,
    downloads integer,
    version text,
    version_downloads integer,
    homepage_uri text,
    authors text,
    project_uri text,
    gem_uri text,
    source_code_uri text,
    bug_tracker_uri text,
    wiki_uri text,
    mailing_list_uri text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    documentation_uri text
);


--
-- Name: rubygems_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rubygems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: rubygems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rubygems_id_seq OWNED BY rubygems.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: twitter_followers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE twitter_followers (
    id integer NOT NULL,
    follower_id integer NOT NULL,
    followee_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: twitter_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE twitter_followers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: twitter_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE twitter_followers_id_seq OWNED BY twitter_followers.id;


--
-- Name: twitter_profiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE twitter_profiles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    twitter_user text NOT NULL,
    bio text,
    link text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: twitter_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE twitter_profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: twitter_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE twitter_profiles_id_seq OWNED BY twitter_profiles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name text,
    email text,
    company_name text,
    public_repo_count integer,
    blog text,
    github_id text,
    public_gist_count integer,
    gravatar_id text,
    location text,
    login text,
    crypted_password text,
    password_salt text,
    persistence_token text,
    single_access_token text,
    perishable_token text,
    login_count integer,
    failed_login_count integer,
    last_request_at timestamp without time zone,
    current_login_at timestamp without time zone,
    last_login_at timestamp without time zone,
    current_login_ip text,
    last_login_ip text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    company_id integer,
    accuracy integer,
    city text,
    province text,
    street_address text,
    lat double precision,
    lng double precision,
    country_code text,
    "precision" text,
    state text,
    full_address text,
    zip text
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE authorships ALTER COLUMN id SET DEFAULT nextval('authorships_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE dependencies ALTER COLUMN id SET DEFAULT nextval('dependencies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE downloads ALTER COLUMN id SET DEFAULT nextval('downloads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE git_followers ALTER COLUMN id SET DEFAULT nextval('git_followers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE recomendations ALTER COLUMN id SET DEFAULT nextval('recomendations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE repositories ALTER COLUMN id SET DEFAULT nextval('repositories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE rubygems ALTER COLUMN id SET DEFAULT nextval('rubygems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE twitter_followers ALTER COLUMN id SET DEFAULT nextval('twitter_followers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE twitter_profiles ALTER COLUMN id SET DEFAULT nextval('twitter_profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: authorships_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authorships
    ADD CONSTRAINT authorships_pkey PRIMARY KEY (id);


--
-- Name: authorships_rubygem_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authorships
    ADD CONSTRAINT authorships_rubygem_id_key UNIQUE (rubygem_id, author_name);


--
-- Name: companies_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_name_key UNIQUE (name);


--
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: dependencies_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT dependencies_pkey PRIMARY KEY (id);


--
-- Name: dependencies_repository_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT dependencies_repository_id_key UNIQUE (repository_id, rubygem_id);


--
-- Name: downloads_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY downloads
    ADD CONSTRAINT downloads_pkey PRIMARY KEY (id);


--
-- Name: downloads_rubygem_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY downloads
    ADD CONSTRAINT downloads_rubygem_id_key UNIQUE (rubygem_id, version, created_at);


--
-- Name: git_followers_follower_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY git_followers
    ADD CONSTRAINT git_followers_follower_id_key UNIQUE (follower_id, followee_id);


--
-- Name: git_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY git_followers
    ADD CONSTRAINT git_followers_pkey PRIMARY KEY (id);


--
-- Name: recomendations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY recomendations
    ADD CONSTRAINT recomendations_pkey PRIMARY KEY (id);


--
-- Name: recomendations_recomends_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY recomendations
    ADD CONSTRAINT recomendations_recomends_id_key UNIQUE (recomends_id, recomended_id);


--
-- Name: repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY repositories
    ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);


--
-- Name: rubygems_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rubygems
    ADD CONSTRAINT rubygems_pkey PRIMARY KEY (id);


--
-- Name: twitter_followers_follower_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY twitter_followers
    ADD CONSTRAINT twitter_followers_follower_id_key UNIQUE (follower_id, followee_id);


--
-- Name: twitter_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY twitter_followers
    ADD CONSTRAINT twitter_followers_pkey PRIMARY KEY (id);


--
-- Name: twitter_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY twitter_profiles
    ADD CONSTRAINT twitter_profiles_pkey PRIMARY KEY (id);


--
-- Name: twitter_profiles_twitter_user_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY twitter_profiles
    ADD CONSTRAINT twitter_profiles_twitter_user_key UNIQUE (twitter_user);


--
-- Name: twitter_profiles_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY twitter_profiles
    ADD CONSTRAINT twitter_profiles_user_id_key UNIQUE (user_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: authorships_rubygem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authorships
    ADD CONSTRAINT authorships_rubygem_id_fkey FOREIGN KEY (rubygem_id) REFERENCES rubygems(id);


--
-- Name: authorships_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authorships
    ADD CONSTRAINT authorships_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: dependencies_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT dependencies_repository_id_fkey FOREIGN KEY (repository_id) REFERENCES repositories(id);


--
-- Name: dependencies_rubygem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY dependencies
    ADD CONSTRAINT dependencies_rubygem_id_fkey FOREIGN KEY (rubygem_id) REFERENCES rubygems(id);


--
-- Name: downloads_rubygem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY downloads
    ADD CONSTRAINT downloads_rubygem_id_fkey FOREIGN KEY (rubygem_id) REFERENCES rubygems(id);


--
-- Name: git_followers_followee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY git_followers
    ADD CONSTRAINT git_followers_followee_id_fkey FOREIGN KEY (followee_id) REFERENCES users(id);


--
-- Name: git_followers_follower_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY git_followers
    ADD CONSTRAINT git_followers_follower_id_fkey FOREIGN KEY (follower_id) REFERENCES users(id);


--
-- Name: recomendations_recomended_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recomendations
    ADD CONSTRAINT recomendations_recomended_id_fkey FOREIGN KEY (recomended_id) REFERENCES users(id);


--
-- Name: recomendations_recomends_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY recomendations
    ADD CONSTRAINT recomendations_recomends_id_fkey FOREIGN KEY (recomends_id) REFERENCES users(id);


--
-- Name: repositories_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY repositories
    ADD CONSTRAINT repositories_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: twitter_followers_followee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY twitter_followers
    ADD CONSTRAINT twitter_followers_followee_id_fkey FOREIGN KEY (followee_id) REFERENCES twitter_profiles(id);


--
-- Name: twitter_followers_follower_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY twitter_followers
    ADD CONSTRAINT twitter_followers_follower_id_fkey FOREIGN KEY (follower_id) REFERENCES twitter_profiles(id);


--
-- Name: twitter_profiles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY twitter_profiles
    ADD CONSTRAINT twitter_profiles_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: users_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_company_id_fkey FOREIGN KEY (company_id) REFERENCES companies(id);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20101016001636');

INSERT INTO schema_migrations (version) VALUES ('20101016010824');

INSERT INTO schema_migrations (version) VALUES ('20101016003854');

INSERT INTO schema_migrations (version) VALUES ('20101016005120');

<<<<<<< HEAD
=======
INSERT INTO schema_migrations (version) VALUES ('20101016010824');

>>>>>>> 3c53474314e7d862e1c1f4f4f3d1a1b6a793664f
INSERT INTO schema_migrations (version) VALUES ('20101016013527');

INSERT INTO schema_migrations (version) VALUES ('20101016015141');

INSERT INTO schema_migrations (version) VALUES ('20101016015227');

INSERT INTO schema_migrations (version) VALUES ('20101016015733');

INSERT INTO schema_migrations (version) VALUES ('20101016021600');

INSERT INTO schema_migrations (version) VALUES ('20101016023400');

INSERT INTO schema_migrations (version) VALUES ('20101016024306');

INSERT INTO schema_migrations (version) VALUES ('20101016024704');

INSERT INTO schema_migrations (version) VALUES ('20101016025034');

INSERT INTO schema_migrations (version) VALUES ('20101016025321');

INSERT INTO schema_migrations (version) VALUES ('20101016030030');

INSERT INTO schema_migrations (version) VALUES ('20101016030256');

INSERT INTO schema_migrations (version) VALUES ('20101016030702');

INSERT INTO schema_migrations (version) VALUES ('20101016030921');

INSERT INTO schema_migrations (version) VALUES ('20101016033647');