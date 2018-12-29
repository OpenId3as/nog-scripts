-- Schema: nog

-- DROP SCHEMA nog;

CREATE SCHEMA nog AUTHORIZATION "openId3as";
COMMENT ON SCHEMA nog IS 'NOG is the core of non-government organization divulgation';

--nog.institution
CREATE TABLE nog.institution
(
  in_id bigserial NOT NULL,
  st_legal_name varchar(100) NOT NULL,
  st_trade_name varchar(100) NOT NULL,
  st_link_name varchar(100) NOT NULL,
  st_email varchar(100) NOT NULL,
  dt_foundation date NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_institution PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.institution_address
CREATE TABLE nog.institution_address
(
  in_id bigserial NOT NULL,
  in_institution_id bigserial NOT NULL,
  in_postal_code int NOT NULL,
  st_name varchar(100) NOT NULL,
  in_number int NOT NULL,
  st_neighborhood varchar(100) NOT NULL,
  st_city varchar(100) NOT NULL,
  st_federated_state varchar(10) NOT NULL,
  st_complement varchar(100),
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_institution_address PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.institution_phone
CREATE TABLE nog.institution_phone
(
  in_id bigserial NOT NULL,
  in_institution_id bigserial NOT NULL,
  in_type int NOT NULL,
  st_number varchar(100) NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_institution_phone PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.collaborator
CREATE TABLE nog.collaborator
(
  in_id bigserial NOT NULL,
  st_first_name varchar(100) NOT NULL,
  st_last_name varchar(100) NOT NULL,
  st_email varchar(100) NOT NULL,
  dt_birth date NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_collaborator PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.collaborator_address
CREATE TABLE nog.collaborator_address
(
  in_id bigserial NOT NULL,
  in_collaborator_id bigserial NOT NULL,
  in_postal_code int NOT NULL,
  st_name varchar(100) NOT NULL,
  in_number int NOT NULL,
  st_neighborhood varchar(100) NOT NULL,
  st_city varchar(100) NOT NULL,
  st_federated_state varchar(10) NOT NULL,
  st_complement varchar(100),
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_collaborator_address PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.collaborator_phone
CREATE TABLE nog.collaborator_phone
(
  in_id bigserial NOT NULL,
  in_collaborator_id bigserial NOT NULL,
  in_type int NOT NULL,
  st_number varchar(100) NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_collaborator_phone PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.volunteer
CREATE TABLE nog.volunteer
(
  in_id bigserial NOT NULL,
  st_first_name varchar(100) NOT NULL,
  st_last_name varchar(100) NOT NULL,
  st_email varchar(100) NOT NULL,
  dt_birth date NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_volunteer PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.volunteer_address
CREATE TABLE nog.volunteer_address
(
  in_id bigserial NOT NULL,
  in_volunteer_id bigserial NOT NULL,
  in_postal_code int NOT NULL,
  st_name varchar(100) NOT NULL,
  in_number int NOT NULL,
  st_neighborhood varchar(100) NOT NULL,
  st_city varchar(100) NOT NULL,
  st_federated_state varchar(10) NOT NULL,
  st_complement varchar(100),
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_volunteer_address PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.collaborator_phone
CREATE TABLE nog.volunteer_phone
(
  in_id bigserial NOT NULL,
  in_volunteer_id bigserial NOT NULL,
  in_type int NOT NULL,
  st_number varchar(100) NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
  CONSTRAINT pk_volunteer_phone PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);

--nog.user
CREATE TABLE nog.user 
(
  in_id bigserial NOT NULL,
  st_login varchar(50) UNIQUE NOT NULL,
  st_password varchar(50) NOT NULL,
  st_first_name varchar(100) NOT NULL,
  st_last_name varchar(100) NOT NULL,
  st_email varchar(100) NOT NULL,
  bo_first_access boolean NOT NULL DEFAULT false,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  ts_updated timestamp with time zone, -- Record update time log
  bo_active boolean NOT NULL DEFAULT true,
	CONSTRAINT pk_user PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);