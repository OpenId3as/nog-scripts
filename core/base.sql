-- Role: openId3as

-- DROP ROLE "openId3as";

CREATE ROLE "openId3as" LOGIN
  ENCRYPTED PASSWORD 'md5bef6272d878b40c90bdab41cd2398414'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;
GRANT pg_monitor TO "openId3as";
GRANT pg_read_all_settings TO "openId3as";
GRANT pg_read_all_stats TO "openId3as";
GRANT pg_signal_backend TO "openId3as";
GRANT pg_stat_scan_tables TO "openId3as";

\connect "openId3as"

-- Database: "openId3as"

-- DROP DATABASE "openId3as";

CREATE DATABASE "openId3as"
  WITH OWNER = "openId3as"
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;