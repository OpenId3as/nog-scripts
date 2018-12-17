-- Schema: nog

-- DROP SCHEMA log;

CREATE SCHEMA "log" AUTHORIZATION "openId3as";
COMMENT ON SCHEMA "log" IS 'LOG is used to store logs of NOG application';

--log.log
CREATE TABLE "log"."log"
(
  in_id bigserial NOT NULL,
  in_event_id int,
  st_log_level varchar(50) NOT NULL,
  st_message varchar(4000) NOT NULL,
  ts_created timestamp with time zone NOT NULL DEFAULT now(), -- Record creation time log
  CONSTRAINT pk_log PRIMARY KEY (in_id)
)
WITH (
  OIDS=FALSE
);