--
-- Kingbase database dump
--

-- Dumped from database version V008R002C001B0408
-- Dumped by sys_dump version V008R002C001B0408

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT sys_catalog.set_config('search_path', '"PUBLIC"', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: risen_jhsdys_sms_rserver; Type: SCHEMA; Schema: -; Owner: SYSTEM
--

CREATE SCHEMA "risen_jhsdys_sms_rserver";


ALTER SCHEMA "risen_jhsdys_sms_rserver" OWNER TO "SYSTEM";

--
-- Name: NEXT; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."NEXT"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
    CYCLE;


ALTER TABLE "risen_jhsdys_sms_rserver"."NEXT" OWNER TO "SYSTEM";

--
-- Name: NEXT_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."NEXT_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
    CYCLE;


ALTER TABLE "risen_jhsdys_sms_rserver"."NEXT_SEQ" OWNER TO "SYSTEM";

--
-- Name: S_OP_FORWARD_SOF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."S_OP_FORWARD_SOF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
    CYCLE;


ALTER TABLE "risen_jhsdys_sms_rserver"."S_OP_FORWARD_SOF_UNID_SEQ" OWNER TO "SYSTEM";

SET default_with_oids = false;

--
-- Name: TABLE_NAME; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."TABLE_NAME" (
    "SOF_UNID" INTEGER NOT NULL,
    "SOF_UUID" CHARACTER VARYING(50 char),
    "SOF_CDATE" TIMESTAMP WITH TIME ZONE,
    "SOF_UDATE" TIMESTAMP WITH TIME ZONE,
    "SOF_OP" CHARACTER VARYING(50 char),
    "SOF_OP_NAME" CHARACTER VARYING(50 char),
    "SOF_CONTACT_PHONE" CHARACTER VARYING(50 char),
    "SOF_MACHINE" CHARACTER VARYING(50 char),
    "SOF_SCAN_NUM" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."TABLE_NAME" OWNER TO "SYSTEM";

--
-- Name: core_account; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_account" (
    "CRACT_UNID" INTEGER NOT NULL,
    "CRACT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRACT_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "CRACT_PWD" CHARACTER VARYING(128 char),
    "CRACT_ID_NO" CHARACTER VARYING(20 char),
    "CRACT_MOBILE" CHARACTER VARYING(64 char),
    "CRACT_EMAIL" CHARACTER VARYING(64 char),
    "CRACT_PWD_EXCHG" CHARACTER VARYING(128 char),
    "CRACT_NAME" CHARACTER VARYING(64 char),
    "CRACT_STATUS" CHARACTER VARYING(8 char),
    "CRACT_NATURE" CHARACTER VARYING(8 char),
    "CRACT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRACT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CRACT_EXPIRATION_TIME" DATE,
    "CRACT_CREATOR" CHARACTER VARYING(48 char),
    "CRACT_ORG_OWNERS" CHARACTER VARYING(150 char),
    "CRACT_GRP_OWNERS" CHARACTER VARYING(300 char),
    "CRACT_GRANT_SETS" CHARACTER VARYING(2000 char),
    "CRACT_ORDER" INTEGER,
    "CRACT_OUTER_UUID" CHARACTER VARYING(125 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_account" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_account"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_account" IS '帐户信息';


--
-- Name: COLUMN "core_account"."CRACT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_UNID" IS '标识UNID(CF=CF.UNID)';


--
-- Name: COLUMN "core_account"."CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_UUID" IS '标识UUID(CF=CF.UUID)';


--
-- Name: COLUMN "core_account"."CRACT_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_CODE" IS '帐户代码';


--
-- Name: COLUMN "core_account"."CRACT_PWD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_PWD" IS '登录密码';


--
-- Name: COLUMN "core_account"."CRACT_ID_NO"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_ID_NO" IS '身份证号';


--
-- Name: COLUMN "core_account"."CRACT_MOBILE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_MOBILE" IS '手机号码';


--
-- Name: COLUMN "core_account"."CRACT_EMAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_EMAIL" IS '电子邮件';


--
-- Name: COLUMN "core_account"."CRACT_PWD_EXCHG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_PWD_EXCHG" IS '交换密码';


--
-- Name: COLUMN "core_account"."CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_NAME" IS '帐户名称(CF=CF.TEXT)';


--
-- Name: COLUMN "core_account"."CRACT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_STATUS" IS '帐户状态(CF=CF.STATUS)';


--
-- Name: COLUMN "core_account"."CRACT_NATURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_NATURE" IS '帐户性质,如果为空表示超级管理员';


--
-- Name: COLUMN "core_account"."CRACT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_CREATE_TIME" IS '创建日期(CF=CF.CREATETIME)';


--
-- Name: COLUMN "core_account"."CRACT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_UPDATE_TIME" IS '修改日期(CF=CF.LASTUPDATETIME)';


--
-- Name: COLUMN "core_account"."CRACT_EXPIRATION_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_EXPIRATION_TIME" IS '密码过期时间';


--
-- Name: COLUMN "core_account"."CRACT_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_CREATOR" IS '创建者(CF=CF.CREATOR)';


--
-- Name: COLUMN "core_account"."CRACT_ORG_OWNERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_ORG_OWNERS" IS '所属机构';


--
-- Name: COLUMN "core_account"."CRACT_GRP_OWNERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_GRP_OWNERS" IS '所属群组';


--
-- Name: COLUMN "core_account"."CRACT_GRANT_SETS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_GRANT_SETS" IS '授权标识集合';


--
-- Name: COLUMN "core_account"."CRACT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_ORDER" IS '排序号(CF=CF.ORDER)';


--
-- Name: COLUMN "core_account"."CRACT_OUTER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_account"."CRACT_OUTER_UUID" IS '外部关联标识';


--
-- Name: core_account_CRACT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_account_CRACT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_account_CRACT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_account_CRACT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_account_CRACT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_account"."CRACT_UNID";


--
-- Name: core_actext; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_actext" (
    "CRAXT_CRACT_UUID" CHARACTER VARYING(36 char) NOT NULL,
    "CRAXT_FIELD_NAME" CHARACTER VARYING(32 char) NOT NULL,
    "CRAXT_FIELD_VALUE" CHARACTER VARYING(640 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_actext" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_actext"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_actext" IS '账户扩展列表';


--
-- Name: COLUMN "core_actext"."CRAXT_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_actext"."CRAXT_CRACT_UUID" IS '账户标识';


--
-- Name: COLUMN "core_actext"."CRAXT_FIELD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_actext"."CRAXT_FIELD_NAME" IS '字段名称';


--
-- Name: COLUMN "core_actext"."CRAXT_FIELD_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_actext"."CRAXT_FIELD_VALUE" IS '字段取值';


--
-- Name: core_config; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_config" (
    "CRCFG_UNID" INTEGER NOT NULL,
    "CRCFG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRCFG_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CRCFG_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRCFG_NAME" CHARACTER VARYING(128 char),
    "CRCFG_CODE" CHARACTER VARYING(64 char),
    "CRCFG_PATH_CODE" CHARACTER VARYING(512 char),
    "CRCFG_VALUE" CHARACTER VARYING(256 char),
    "CRCFG_STATUS" CHARACTER VARYING(8 char),
    "CRCFG_TYPE" CHARACTER VARYING(8 char),
    "CRCFG_ORDER" INTEGER,
    "CRCFG_CREATOR" CHARACTER VARYING(32 char),
    "CRCFG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRCFG_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CRCFG_REMARKS" CHARACTER VARYING(256 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_config" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_config"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_config" IS '系统配置表';


--
-- Name: COLUMN "core_config"."CRCFG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_config"."CRCFG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_config"."CRCFG_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_config"."CRCFG_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_PARENT_UUID" IS '父标识UUID';


--
-- Name: COLUMN "core_config"."CRCFG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_NAME" IS '配置名称';


--
-- Name: COLUMN "core_config"."CRCFG_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_CODE" IS '配置代码';


--
-- Name: COLUMN "core_config"."CRCFG_PATH_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_PATH_CODE" IS '路径代码';


--
-- Name: COLUMN "core_config"."CRCFG_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_VALUE" IS '配置值';


--
-- Name: COLUMN "core_config"."CRCFG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_STATUS" IS '配置状态';


--
-- Name: COLUMN "core_config"."CRCFG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_TYPE" IS '节点类型';


--
-- Name: COLUMN "core_config"."CRCFG_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_ORDER" IS '排序号';


--
-- Name: COLUMN "core_config"."CRCFG_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_config"."CRCFG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_config"."CRCFG_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_config"."CRCFG_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_config"."CRCFG_REMARKS" IS '备注';


--
-- Name: core_config_CRCFG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_config_CRCFG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_config_CRCFG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_config_CRCFG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_config_CRCFG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_config"."CRCFG_UNID";


--
-- Name: core_dasvc_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_dasvc_log" (
    "DASLG_UNID" INTEGER NOT NULL,
    "DASLG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "DASLG_CRACT_UUID" CHARACTER VARYING(48 char),
    "DASLG_CRORG_UUID" CHARACTER VARYING(300 char),
    "DASLG_RECORD_UUID" TEXT,
    "DASLG_TYPE" CHARACTER VARYING(8 char),
    "DASLG_LEVEL" INTEGER,
    "DASLG_TABLE_NAME" CHARACTER VARYING(64 char),
    "DASLG_METHOD_SIGN" CHARACTER VARYING(128 char),
    "DASLG_DESC" TEXT,
    "DASLG_DETAIL" TEXT,
    "DASLG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "DASLG_YEAR" INTEGER,
    "DASLG_MONTH" INTEGER,
    "DASLG_DATE" INTEGER,
    "DASLG_HOURE" INTEGER,
    "DASLG_SPEND_TIME" INTEGER,
    "DASLG_IP" CHARACTER VARYING(64 char),
    "DASLG_CRACT_NAME" CHARACTER VARYING(48 char),
    "DASLG_MAC_ADDRESS" CHARACTER VARYING(48 char),
    "DASLG_SERVICE_NAME" CHARACTER VARYING(64 char),
    "DASLG_SOURCE_UUID" CHARACTER VARYING(48 char),
    "DASLG_SOURCE_NAME" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dasvc_log" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_dasvc_log"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_dasvc_log" IS '数据服务访问日志';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_CRACT_UUID" IS '操作用户UUID';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_CRORG_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_RECORD_UUID" IS '记录标识';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_LEVEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_LEVEL" IS '日志级别';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_TABLE_NAME" IS '操作表名称';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_METHOD_SIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_METHOD_SIGN" IS '方法签名';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_DESC" IS '操作说明';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_DETAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_DETAIL" IS '详细参数';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_CREATE_TIME" IS '操作日期时间';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_YEAR" IS '记录年份';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_MONTH" IS '记录月份';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_DATE" IS '记录日期';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_HOURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_HOURE" IS '记录小时';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_SPEND_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_SPEND_TIME" IS '消耗时间';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_IP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_IP" IS '操作IP';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_CRACT_NAME" IS '操作者';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_MAC_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_MAC_ADDRESS" IS 'mac地址';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_SERVICE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_SERVICE_NAME" IS '服务名称';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_SOURCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_SOURCE_UUID" IS '数据源标识';


--
-- Name: COLUMN "core_dasvc_log"."DASLG_SOURCE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_SOURCE_NAME" IS '数据源名称';


--
-- Name: core_dasvc_log_DASLG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_dasvc_log_DASLG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dasvc_log_DASLG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_dasvc_log_DASLG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_dasvc_log_DASLG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_dasvc_log"."DASLG_UNID";


--
-- Name: core_dasvc_service; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_dasvc_service" (
    "CMSVC_UNID" INTEGER NOT NULL,
    "CMSVC_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CMSVC_SOURCE_UUID" CHARACTER VARYING(64 char),
    "CMSVC_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "CMSVC_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CMSVC_SQL" TEXT NOT NULL,
    "CMSVC_ARG_NAME" CHARACTER VARYING(64 char),
    "CMSVC_ARG_TYPE" CHARACTER VARYING(64 char),
    "CMSVC_ARG_TABLE" CHARACTER VARYING(128 char),
    "CMSVC_SQL_TYPE" CHARACTER VARYING(8 char),
    "CMSVC_ORDER" INTEGER,
    "CMSVC_CREATOR" CHARACTER VARYING(32 char),
    "CMSVC_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CMSVC_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CMSVC_REMARKS" CHARACTER VARYING(256 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dasvc_service" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_dasvc_service"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_dasvc_service" IS '业务服务配置信息';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_SOURCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_SOURCE_UUID" IS '数据源引用';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_CODE" IS '服务代码';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_NAME" IS '服务名称';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_SQL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_SQL" IS '执行的SQL';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_ARG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_ARG_NAME" IS '参数名称';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_ARG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_ARG_TYPE" IS '参数类型';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_ARG_TABLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_ARG_TABLE" IS '参数自省表';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_SQL_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_SQL_TYPE" IS '语句类型';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_ORDER" IS '排序号';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_dasvc_service"."CMSVC_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_REMARKS" IS '备注';


--
-- Name: core_dasvc_service_CMSVC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_dasvc_service_CMSVC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dasvc_service_CMSVC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_dasvc_service_CMSVC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_dasvc_service_CMSVC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_dasvc_service"."CMSVC_UNID";


--
-- Name: core_dict; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_dict" (
    "CRDCT_UNID" INTEGER NOT NULL,
    "CRDCT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRDCT_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CRDCT_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRDCT_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "CRDCT_CODE" CHARACTER VARYING(64 char),
    "CRDCT_PATH_CODE" CHARACTER VARYING(512 char),
    "CRDCT_VALUE" CHARACTER VARYING(256 char),
    "CRDCT_TYPE" CHARACTER VARYING(64 char),
    "CRDCT_STATUS" CHARACTER VARYING(8 char),
    "CRDCT_ORDER" INTEGER,
    "CRDCT_CRACT_UUID" CHARACTER VARYING(32 char),
    "CRDCT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRDCT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CRDCT_REMARKS" CHARACTER VARYING(256 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dict" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_dict"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_dict" IS '字典';


--
-- Name: COLUMN "core_dict"."CRDCT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_dict"."CRDCT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_dict"."CRDCT_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_dict"."CRDCT_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_PARENT_UUID" IS '父标识UUID';


--
-- Name: COLUMN "core_dict"."CRDCT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_NAME" IS '分类名称';


--
-- Name: COLUMN "core_dict"."CRDCT_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_CODE" IS '分类代码';


--
-- Name: COLUMN "core_dict"."CRDCT_PATH_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_PATH_CODE" IS '路径代码';


--
-- Name: COLUMN "core_dict"."CRDCT_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_VALUE" IS '代码值';


--
-- Name: COLUMN "core_dict"."CRDCT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_TYPE" IS '自由分类';


--
-- Name: COLUMN "core_dict"."CRDCT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_STATUS" IS '字典状态';


--
-- Name: COLUMN "core_dict"."CRDCT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_dict"."CRDCT_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_CRACT_UUID" IS '创建者';


--
-- Name: COLUMN "core_dict"."CRDCT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_dict"."CRDCT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_dict"."CRDCT_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_REMARKS" IS '备注';


--
-- Name: core_dict_CRDCT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_dict_CRDCT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_dict_CRDCT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_dict_CRDCT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_dict_CRDCT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_dict"."CRDCT_UNID";


--
-- Name: core_extsvc_orgcfgmeta; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta" (
    "CEOCM_UNID" INTEGER NOT NULL,
    "CEOCM_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CEOCM_STATUS" CHARACTER VARYING(8 char),
    "CEOCM_CPDATER" CHARACTER VARYING(48 char),
    "CEOCM_UPDATER" CHARACTER VARYING(48 char),
    "CEOCM_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CEOCM_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CEOCM_ORDER" INTEGER,
    "CEOCM_NAME" CHARACTER VARYING(128 char),
    "CEOCM_CODE" CHARACTER VARYING(50 char) NOT NULL,
    "CEOCM_ORGUUID" CHARACTER VARYING(48 char),
    "CEOCM_ORGNAME" CHARACTER VARYING(50 char),
    "CEOCM_TYPE" CHARACTER VARYING(50 char),
    "CEOCM_RANGE" CHARACTER VARYING(9 char),
    "CEOCM_REMARKS" CHARACTER VARYING(500 char),
    "CEOCM_CATEGORY" CHARACTER VARYING(50 char),
    "CEOCM_ENTRY_MODEL" CHARACTER VARYING(9 char),
    "CEOCM_AUXILIARY_ENTRY" CHARACTER VARYING(500 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_extsvc_orgcfgmeta"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta" IS '配置项管理表';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_UNID" IS 'UNID';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_UUID" IS 'UUID';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_STATUS" IS '状态';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_CPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_CPDATER" IS '创建者';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_ORDER" IS '排序号';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_NAME" IS '名称';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_CODE" IS '关键字';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_ORGUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_ORGUUID" IS '机构UUID';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_ORGNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_ORGNAME" IS '机构NAME';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_TYPE" IS '类别';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_RANGE" IS '范围0:共有,1:私有';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_REMARKS" IS '备注';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_CATEGORY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_CATEGORY" IS '所属分类';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_ENTRY_MODEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_ENTRY_MODEL" IS '录入方式';


--
-- Name: COLUMN "core_extsvc_orgcfgmeta"."CEOCM_AUXILIARY_ENTRY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_AUXILIARY_ENTRY" IS '辅助录入';


--
-- Name: core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"."CEOCM_UNID";


--
-- Name: core_extsvc_orgconfig; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig" (
    "CEOC_UNID" INTEGER NOT NULL,
    "CEOC_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CEOC_CREATOR" CHARACTER VARYING(48 char),
    "CEOC_UPDATER" CHARACTER VARYING(48 char),
    "CEOC_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CEOC_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CEOC_ORDER" INTEGER,
    "CEOC_NAME" CHARACTER VARYING(512 char),
    "CEOC_CODE" CHARACTER VARYING(100 char) NOT NULL,
    "CEOC_VALUE" TEXT,
    "CEOC_ORGUUID" CHARACTER VARYING(48 char),
    "CEOC_ORGNAME" CHARACTER VARYING(50 char),
    "CEOC_REMARKS" TEXT,
    "CEOC_STATUS" CHARACTER VARYING(8 char),
    "CEOC_VALUENAME" TEXT
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_extsvc_orgconfig"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig" IS '配置信息管理';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_ORDER" IS '排序号';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_NAME" IS '名称';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_CODE" IS '关键字';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_VALUE" IS '值';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_ORGUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_ORGUUID" IS '机构uuid';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_ORGNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_ORGNAME" IS '机构name';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_REMARKS" IS '备注';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_STATUS" IS '状态';


--
-- Name: COLUMN "core_extsvc_orgconfig"."CEOC_VALUENAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_VALUENAME" IS '值名称';


--
-- Name: core_extsvc_orgconfig_CEOC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig_CEOC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig_CEOC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_extsvc_orgconfig_CEOC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig_CEOC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"."CEOC_UNID";


--
-- Name: core_extsvc_pub_file; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file" (
    "CEPF_UNID" INTEGER NOT NULL,
    "CEPF_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CEPF_EMIX_UUID" CHARACTER VARYING(48 char),
    "CEPF_UPLOADER" CHARACTER VARYING(48 char),
    "CEPF_DEPT_UUID" CHARACTER VARYING(48 char),
    "CEPF_CONTENT_TYPE" CHARACTER VARYING(128 char),
    "CEPF_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "CEPF_ORIGINAL_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "CEPF_SERVER_PATH" CHARACTER VARYING(256 char) NOT NULL,
    "CEPF_EXTENTION" CHARACTER VARYING(8 char),
    "CEPF_SIZE" INTEGER NOT NULL,
    "CEPF_TYPE" CHARACTER VARYING(64 char),
    "CEPF_STATUS" CHARACTER VARYING(2 char),
    "CEPF_ORDER" INTEGER,
    "CEPF_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CEPF_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_extsvc_pub_file"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file" IS '公共附件';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_EMIX_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_EMIX_UUID" IS '业务实体';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_UPLOADER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_UPLOADER" IS '操作用户UUID';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_DEPT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_DEPT_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_CONTENT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_CONTENT_TYPE" IS '内容类型';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_NAME" IS '文件名称';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_ORIGINAL_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_ORIGINAL_NAME" IS '原始名称';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_SERVER_PATH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_SERVER_PATH" IS '服务器路径';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_EXTENTION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_EXTENTION" IS '文件扩展名';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_SIZE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_SIZE" IS '附件大小';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_TYPE" IS '附件类型';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_STATUS" IS '状态标记';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_ORDER" IS '排序号';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_extsvc_pub_file"."CEPF_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_UPDATE_TIME" IS '修改日期';


--
-- Name: core_extsvc_pub_file_CEPF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file_CEPF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file_CEPF_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_extsvc_pub_file_CEPF_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_pub_file_CEPF_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"."CEPF_UNID";


--
-- Name: core_extsvc_pub_template; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template" (
    "CEPT_UNID" INTEGER NOT NULL,
    "CEPT_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CEPT_NAME" CHARACTER VARYING(128 char),
    "CEPT_STATUS" CHARACTER VARYING(8 char),
    "CEPT_CREATOR" CHARACTER VARYING(48 char),
    "CEPT_UPDATER" CHARACTER VARYING(48 char),
    "CEPT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CEPT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CEPT_ORDER" INTEGER,
    "CEPT_TYPE" CHARACTER VARYING(100 char),
    "CEPT_DEPUUID" CHARACTER VARYING(48 char),
    "CEPT_DEPNAME" CHARACTER VARYING(100 char),
    "CEPT_EMIX_UUID" CHARACTER VARYING(100 char),
    "CEPT_REMARK" CHARACTER VARYING(500 char),
    "CEPT_BOOKMARK" TEXT,
    "CEPT_FIELD" TEXT,
    "CEPT_FIELDVALUEFROM" CHARACTER VARYING(8 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_extsvc_pub_template"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template" IS '模板配置';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_UUID" IS 'UUID';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_NAME" IS '名称';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_STATUS" IS '状态';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_TYPE" IS '类型';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_DEPUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_DEPUUID" IS '所属单位';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_DEPNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_DEPNAME" IS '所属单位名称';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_EMIX_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_EMIX_UUID" IS '业务标识';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_REMARK" IS '备注';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_BOOKMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_BOOKMARK" IS '书签名';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_FIELD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_FIELD" IS '字段名';


--
-- Name: COLUMN "core_extsvc_pub_template"."CEPT_FIELDVALUEFROM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_FIELDVALUEFROM" IS '字段值获取方式';


--
-- Name: core_extsvc_pub_template_CEPT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template_CEPT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template_CEPT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_extsvc_pub_template_CEPT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_pub_template_CEPT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"."CEPT_UNID";


--
-- Name: core_extsvc_setday; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_extsvc_setday" (
    "COSD_UNID" BIGINT NOT NULL,
    "COSD_UUID" CHARACTER VARYING(32 char),
    "COSD_NAME" CHARACTER VARYING(128 char),
    "COSD_STATUS" CHARACTER VARYING(8 char),
    "COSD_CREATOR" CHARACTER VARYING(48 char),
    "COSD_UPDATER" CHARACTER VARYING(48 char),
    "COSD_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "COSD_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "COSD_ORDER" INTEGER,
    "COSD_VERSION" INTEGER,
    "COSD_AM_BEGIN" CHARACTER VARYING(10 char),
    "COSD_AM_END" CHARACTER VARYING(10 char),
    "COSD_PM_BEGIN" CHARACTER VARYING(10 char),
    "COSD_PM_END" CHARACTER VARYING(10 char),
    "COSD_NIGHT_BEGIN" CHARACTER VARYING(10 char),
    "COSD_NIGHT_END" CHARACTER VARYING(10 char),
    "COSD_ST_FLAG" INTEGER,
    "COSD_TYPE" INTEGER,
    "COSD_YEAR" INTEGER,
    "COSD_MONTHS" INTEGER,
    "COSD_DAY" INTEGER,
    "COSD_DATE" CHARACTER VARYING(10 char),
    "COSD_WEEKDAY" CHARACTER VARYING(16 char),
    "COSD_WEEKNUMS" INTEGER,
    "COSD_WORKHOURS" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_setday" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_extsvc_setday"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_extsvc_setday" IS '每一天都时间表';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_UNID" IS 'unid';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_UUID" IS 'uuid';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_NAME" IS '名称';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_STATUS" IS '状态';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_ORDER" IS '排序号';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_VERSION" IS '版本号';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_AM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_AM_BEGIN" IS '上午上班时间：08:30';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_AM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_AM_END" IS '上午下班时间：12:00';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_PM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_PM_BEGIN" IS '下午上班时间：13:30';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_PM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_PM_END" IS '下午下班时间：17:30';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_NIGHT_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_NIGHT_BEGIN" IS '晚班开始时间';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_NIGHT_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_NIGHT_END" IS '晚班结束时间';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_ST_FLAG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_ST_FLAG" IS '当月时间是否设置过 1：设置过 -1： 未设置过';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_TYPE" IS '10：工作日；11：正常休息日；';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_YEAR" IS '年份';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_MONTHS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_MONTHS" IS '月份';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_DAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_DAY" IS '天';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_DATE" IS '时间 ：2018-11-14';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_WEEKDAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_WEEKDAY" IS '星期：星期三';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_WEEKNUMS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_WEEKNUMS" IS '周数（年）';


--
-- Name: COLUMN "core_extsvc_setday"."COSD_WORKHOURS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_WORKHOURS" IS '工时（具体到分钟，忽略秒）';


--
-- Name: core_extsvc_setday_COSD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_setday_COSD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_extsvc_setday_COSD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_extsvc_setday_COSD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_extsvc_setday_COSD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_extsvc_setday"."COSD_UNID";


--
-- Name: core_flex_business; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_business" (
    "CBM_UNID" INTEGER NOT NULL,
    "CBM_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CBM_STATUS" CHARACTER VARYING(8 char),
    "CBM_CREATOR" CHARACTER VARYING(48 char),
    "CBM_UPDATER" CHARACTER VARYING(48 char),
    "CBM_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CBM_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_ORDER" INTEGER,
    "CBM_MODELID" CHARACTER VARYING(20 char),
    "CBM_TEXT" CHARACTER VARYING(100 char),
    "CBM_EXPANDID1" CHARACTER VARYING(48 char),
    "CBM_EXPANDID2" CHARACTER VARYING(48 char),
    "CBM_EXPANDID3" CHARACTER VARYING(48 char),
    "CBM_EXPANDID4" CHARACTER VARYING(48 char),
    "CBM_EXPANDID5" CHARACTER VARYING(48 char),
    "CBM_EXPANDID6" CHARACTER VARYING(48 char),
    "CBM_EXPANDID7" CHARACTER VARYING(48 char),
    "CBM_EXPANDID8" CHARACTER VARYING(48 char),
    "CBM_EXPANDID9" CHARACTER VARYING(48 char),
    "CBM_EXPANDID10" CHARACTER VARYING(48 char),
    "CBM_EXPANDS1" TEXT,
    "CBM_EXPANDS2" TEXT,
    "CBM_EXPANDS3" TEXT,
    "CBM_EXPANDS4" TEXT,
    "CBM_EXPANDS5" TEXT,
    "CBM_EXPANDS6" TEXT,
    "CBM_EXPANDS7" TEXT,
    "CBM_EXPANDS8" TEXT,
    "CBM_EXPANDS9" TEXT,
    "CBM_EXPANDS10" TEXT,
    "CBM_EXPANDS11" TEXT,
    "CBM_EXPANDS12" TEXT,
    "CBM_EXPANDS13" TEXT,
    "CBM_EXPANDS14" TEXT,
    "CBM_EXPANDS15" TEXT,
    "CBM_EXPANDS16" TEXT,
    "CBM_EXPANDS17" TEXT,
    "CBM_EXPANDS18" TEXT,
    "CBM_EXPANDS19" TEXT,
    "CBM_EXPANDS20" TEXT,
    "CBM_EXPANDS21" TEXT,
    "CBM_EXPANDS22" TEXT,
    "CBM_EXPANDS23" TEXT,
    "CBM_EXPANDS24" TEXT,
    "CBM_EXPANDS25" TEXT,
    "CBM_EXPANDS26" TEXT,
    "CBM_EXPANDS27" TEXT,
    "CBM_EXPANDS28" TEXT,
    "CBM_EXPANDS29" TEXT,
    "CBM_EXPANDS30" TEXT,
    "CBM_EXPANDS31" TEXT,
    "CBM_EXPANDS32" TEXT,
    "CBM_EXPANDS33" TEXT,
    "CBM_EXPANDS34" TEXT,
    "CBM_EXPANDS35" TEXT,
    "CBM_EXPANDS36" TEXT,
    "CBM_EXPANDS37" TEXT,
    "CBM_EXPANDS38" TEXT,
    "CBM_EXPANDS39" TEXT,
    "CBM_EXPANDS40" TEXT,
    "CBM_EXPANDS41" TEXT,
    "CBM_EXPANDS42" TEXT,
    "CBM_EXPANDS43" TEXT,
    "CBM_EXPANDS44" TEXT,
    "CBM_EXPANDS45" TEXT,
    "CBM_EXPANDS46" TEXT,
    "CBM_EXPANDS47" TEXT,
    "CBM_EXPANDS48" TEXT,
    "CBM_EXPANDS49" TEXT,
    "CBM_EXPANDS50" TEXT,
    "CBM_EXPANDS51" TEXT,
    "CBM_EXPANDS52" TEXT,
    "CBM_EXPANDS53" TEXT,
    "CBM_EXPANDS54" TEXT,
    "CBM_EXPANDS55" TEXT,
    "CBM_EXPANDS56" TEXT,
    "CBM_EXPANDS57" TEXT,
    "CBM_EXPANDS58" TEXT,
    "CBM_EXPANDS59" TEXT,
    "CBM_EXPANDS60" TEXT,
    "CBM_EXPANDD1" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD2" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD3" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD4" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD5" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD6" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD7" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD8" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD9" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD10" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD11" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD12" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD13" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD14" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDD15" TIMESTAMP WITHOUT TIME ZONE,
    "CBM_EXPANDN1" INTEGER,
    "CBM_EXPANDN2" INTEGER,
    "CBM_EXPANDN3" INTEGER,
    "CBM_EXPANDN4" INTEGER,
    "CBM_EXPANDN5" INTEGER,
    "CBM_EXPANDN6" INTEGER,
    "CBM_EXPANDN7" INTEGER,
    "CBM_EXPANDN8" INTEGER,
    "CBM_EXPANDN9" INTEGER,
    "CBM_EXPANDN10" INTEGER,
    "CBM_EXPANDN11" INTEGER,
    "CBM_EXPANDN12" INTEGER,
    "CBM_EXPANDN13" INTEGER,
    "CBM_EXPANDN14" INTEGER,
    "CBM_EXPANDN15" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_business" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_business"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_business" IS '通用业务实体表';


--
-- Name: COLUMN "core_flex_business"."CBM_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_UNID" IS 'unid';


--
-- Name: COLUMN "core_flex_business"."CBM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_UUID" IS 'uuid';


--
-- Name: COLUMN "core_flex_business"."CBM_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_business"."CBM_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_flex_business"."CBM_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_flex_business"."CBM_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_flex_business"."CBM_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_flex_business"."CBM_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_ORDER" IS '排序';


--
-- Name: COLUMN "core_flex_business"."CBM_MODELID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_MODELID" IS '业务实体分类标识';


--
-- Name: COLUMN "core_flex_business"."CBM_TEXT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_TEXT" IS '业务实体内容';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID1" IS 'ID扩展1-10';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID2" IS 'CBM_EXPANDID2';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID3" IS 'CBM_EXPANDID3';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID4" IS 'CBM_EXPANDID4';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID5" IS 'CBM_EXPANDID5';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID6"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID6" IS 'CBM_EXPANDID6';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID7"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID7" IS 'CBM_EXPANDID7';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID8"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID8" IS 'CBM_EXPANDID8';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID9"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID9" IS 'CBM_EXPANDID9';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDID10"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDID10" IS 'CBM_EXPANDID10';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS1" IS '长字符串扩展1-60';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS2" IS 'CBM_EXPANDS2';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS3" IS 'CBM_EXPANDS3';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS4" IS 'CBM_EXPANDS4';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS5" IS 'CBM_EXPANDS5';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS6"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS6" IS 'CBM_EXPANDS6';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS7"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS7" IS 'CBM_EXPANDS7';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS8"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS8" IS 'CBM_EXPANDS8';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS9"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS9" IS 'CBM_EXPANDS9';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS10"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS10" IS 'CBM_EXPANDS10';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS11"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS11" IS 'CBM_EXPANDS11';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS12"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS12" IS 'CBM_EXPANDS12';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS13"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS13" IS 'CBM_EXPANDS13';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS14"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS14" IS 'CBM_EXPANDS14';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS15"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS15" IS 'CBM_EXPANDS15';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS16"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS16" IS 'CBM_EXPANDS16';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS17"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS17" IS 'CBM_EXPANDS17';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS18"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS18" IS 'CBM_EXPANDS18';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS19"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS19" IS 'CBM_EXPANDS19';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS20"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS20" IS 'CBM_EXPANDS20';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS21"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS21" IS 'CBM_EXPANDS21';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS22"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS22" IS 'CBM_EXPANDS22';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS23"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS23" IS 'CBM_EXPANDS23';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS24"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS24" IS 'CBM_EXPANDS24';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS25"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS25" IS 'CBM_EXPANDS25';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS26"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS26" IS 'CBM_EXPANDS26';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS27"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS27" IS 'CBM_EXPANDS27';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS28"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS28" IS 'CBM_EXPANDS28';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS29"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS29" IS 'CBM_EXPANDS29';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS30"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS30" IS 'CBM_EXPANDS30';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS31"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS31" IS 'CBM_EXPANDS31';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS32"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS32" IS 'CBM_EXPANDS32';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS33"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS33" IS 'CBM_EXPANDS33';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS34"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS34" IS 'CBM_EXPANDS34';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS35"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS35" IS 'CBM_EXPANDS35';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS36"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS36" IS 'CBM_EXPANDS36';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS37"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS37" IS 'CBM_EXPANDS37';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS38"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS38" IS 'CBM_EXPANDS38';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS39"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS39" IS 'CBM_EXPANDS39';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS40"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS40" IS 'CBM_EXPANDS40';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS41"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS41" IS 'CBM_EXPANDS41';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS42"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS42" IS 'CBM_EXPANDS42';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS43"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS43" IS 'CBM_EXPANDS43';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS44"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS44" IS 'CBM_EXPANDS44';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS45"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS45" IS 'CBM_EXPANDS45';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS46"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS46" IS 'CBM_EXPANDS46';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS47"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS47" IS 'CBM_EXPANDS47';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS48"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS48" IS 'CBM_EXPANDS48';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS49"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS49" IS 'CBM_EXPANDS49';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS50"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS50" IS 'CBM_EXPANDS50';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS51"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS51" IS 'CBM_EXPANDS51';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS52"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS52" IS 'CBM_EXPANDS52';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS53"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS53" IS 'CBM_EXPANDS53';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS54"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS54" IS 'CBM_EXPANDS54';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS55"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS55" IS 'CBM_EXPANDS55';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS56"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS56" IS 'CBM_EXPANDS56';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS57"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS57" IS 'CBM_EXPANDS57';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS58"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS58" IS 'CBM_EXPANDS58';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS59"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS59" IS 'CBM_EXPANDS59';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDS60"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDS60" IS 'CBM_EXPANDS60';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD1" IS '日期扩展1-15';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD2" IS 'CBM_EXPANDD2';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD3" IS 'CBM_EXPANDD3';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD4" IS 'CBM_EXPANDD4';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD5" IS 'CBM_EXPANDD5';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD6"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD6" IS 'CBM_EXPANDD6';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD7"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD7" IS 'CBM_EXPANDD7';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD8"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD8" IS 'CBM_EXPANDD8';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD9"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD9" IS 'CBM_EXPANDD9';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD10"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD10" IS 'CBM_EXPANDD10';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD11"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD11" IS 'CBM_EXPANDD11';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD12"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD12" IS 'CBM_EXPANDD12';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD13"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD13" IS 'CBM_EXPANDD13';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD14"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD14" IS 'CBM_EXPANDD14';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDD15"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDD15" IS 'CBM_EXPANDD15';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN1" IS 'number扩展1-15';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN2" IS 'CBM_EXPANDN2';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN3" IS 'CBM_EXPANDN3';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN4" IS 'CBM_EXPANDN4';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN5" IS 'CBM_EXPANDN5';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN6"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN6" IS 'CBM_EXPANDN6';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN7"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN7" IS 'CBM_EXPANDN7';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN8"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN8" IS 'CBM_EXPANDN8';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN9"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN9" IS 'CBM_EXPANDN9';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN10"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN10" IS 'CBM_EXPANDN10';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN11"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN11" IS 'CBM_EXPANDN11';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN12"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN12" IS 'CBM_EXPANDN12';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN13"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN13" IS 'CBM_EXPANDN13';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN14"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN14" IS 'CBM_EXPANDN14';


--
-- Name: COLUMN "core_flex_business"."CBM_EXPANDN15"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_EXPANDN15" IS 'CBM_EXPANDN15';


--
-- Name: core_flex_business_CBM_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_business_CBM_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_business_CBM_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_business_CBM_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_business_CBM_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_business"."CBM_UNID";


--
-- Name: core_flex_flowform; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_flowform" (
    "CFF_UNID" INTEGER NOT NULL,
    "CFF_UUID" CHARACTER VARYING(48 char),
    "CFF_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CFF_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CFF_CREATOR" CHARACTER VARYING(100 char),
    "CFF_UPDATER" CHARACTER VARYING(100 char),
    "CFF_STATUS" CHARACTER VARYING(100 char),
    "CFF_FLOWUUID" CHARACTER VARYING(48 char),
    "CFF_NODEUUID" CHARACTER VARYING(100 char),
    "CFF_FORMUUID" CHARACTER VARYING(48 char),
    "CFF_CONDITION" TEXT,
    "CFF_FLOWNAME" CHARACTER VARYING(100 char),
    "CFF_NODENAME" CHARACTER VARYING(100 char),
    "CFF_FORMNAME" CHARACTER VARYING(100 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_flowform" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_flowform"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_flowform" IS '表单流程关联表';


--
-- Name: COLUMN "core_flex_flowform"."CFF_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_flowform"."CFF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_flowform"."CFF_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_flowform"."CFF_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_flex_flowform"."CFF_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_flex_flowform"."CFF_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_flex_flowform"."CFF_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_flowform"."CFF_FLOWUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_FLOWUUID" IS '流程uuid';


--
-- Name: COLUMN "core_flex_flowform"."CFF_NODEUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_NODEUUID" IS '环节uuid';


--
-- Name: COLUMN "core_flex_flowform"."CFF_FORMUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_FORMUUID" IS '表单uuid';


--
-- Name: COLUMN "core_flex_flowform"."CFF_CONDITION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_CONDITION" IS '公式条件';


--
-- Name: COLUMN "core_flex_flowform"."CFF_FLOWNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_FLOWNAME" IS '流程名称';


--
-- Name: COLUMN "core_flex_flowform"."CFF_NODENAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_NODENAME" IS '环节名称';


--
-- Name: COLUMN "core_flex_flowform"."CFF_FORMNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_FORMNAME" IS '表单名称';


--
-- Name: core_flex_flowform_CFF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_flowform_CFF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_flowform_CFF_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_flowform_CFF_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_flowform_CFF_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_flowform"."CFF_UNID";


--
-- Name: core_flex_fnt_btn; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn" (
    "CFFNB_UNID" INTEGER NOT NULL,
    "CFFNB_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CFFNB_NAME" CHARACTER VARYING(32 char) NOT NULL,
    "CFFNB_CLASS" CHARACTER VARYING(32 char),
    "CFFNB_KEY_NAME" CHARACTER VARYING(32 char),
    "CFFNB_STATUS" CHARACTER VARYING(8 char),
    "CFFNB_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_fnt_btn"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn" IS '功能按钮';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_NAME" IS '功能名称';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_CLASS" IS '样式类';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_KEY_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_KEY_NAME" IS '操作关键字';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_fnt_btn"."CFFNB_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_ORDER" IS '排序号';


--
-- Name: core_flex_fnt_btn_CFFNB_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn_CFFNB_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn_CFFNB_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_fnt_btn_CFFNB_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_fnt_btn_CFFNB_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"."CFFNB_UNID";


--
-- Name: core_flex_form; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_form" (
    "CFFRM_UNID" INTEGER NOT NULL,
    "CFFRM_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CFFRM_META_MODEL_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFFRM_MODEL_UUID" CHARACTER VARYING(48 char),
    "CFFRM_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CFFRM_VERSION" INTEGER NOT NULL,
    "CFFRM_VTYPE" CHARACTER VARYING(8 char),
    "CFFRM_RENDER" CHARACTER VARYING(32 char),
    "CFFRM_LABEL" CHARACTER VARYING(128 char) NOT NULL,
    "CFFRM_CONTENT" TEXT,
    "CFFRM_HTML" TEXT,
    "CFFRM_HTML_EXT1" CHARACTER VARYING(8 char),
    "CFFRM_HTML_EXT2" CHARACTER VARYING(8 char),
    "CFFRM_HTML_EXT3" CHARACTER VARYING(8 char),
    "CFFRM_HTML_EXT4" CHARACTER VARYING(8 char),
    "CFFRM_JSON" TEXT,
    "CFFRM_JSON_EXT1" CHARACTER VARYING(8 char),
    "CFFRM_JSON_EXT2" CHARACTER VARYING(8 char),
    "CFFRM_TYPE" CHARACTER VARYING(48 char),
    "CFFRM_CRACT_UUID" CHARACTER VARYING(48 char),
    "CFFRM_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CFFRM_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CFFRM_REMARKS" CHARACTER VARYING(128 char),
    "CFFRM_ORDER" INTEGER,
    "CFFRM_STATUS" CHARACTER VARYING(4 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_form"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_form" IS '自定义表单';


--
-- Name: COLUMN "core_flex_form"."CFFRM_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_form"."CFFRM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_form"."CFFRM_META_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_META_MODEL_UUID" IS '库模型对象';


--
-- Name: COLUMN "core_flex_form"."CFFRM_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_MODEL_UUID" IS '模型对象';


--
-- Name: COLUMN "core_flex_form"."CFFRM_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_NAME" IS '表单名称';


--
-- Name: COLUMN "core_flex_form"."CFFRM_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_VERSION" IS '表单版本';


--
-- Name: COLUMN "core_flex_form"."CFFRM_VTYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_VTYPE" IS '版本类型';


--
-- Name: COLUMN "core_flex_form"."CFFRM_RENDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_RENDER" IS '渲染器';


--
-- Name: COLUMN "core_flex_form"."CFFRM_LABEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_LABEL" IS '表单标题';


--
-- Name: COLUMN "core_flex_form"."CFFRM_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_CONTENT" IS '表单内容';


--
-- Name: COLUMN "core_flex_form"."CFFRM_HTML"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_HTML" IS '表单HTML';


--
-- Name: COLUMN "core_flex_form"."CFFRM_HTML_EXT1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_HTML_EXT1" IS 'HTML扩展1';


--
-- Name: COLUMN "core_flex_form"."CFFRM_HTML_EXT2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_HTML_EXT2" IS 'HTML扩展2';


--
-- Name: COLUMN "core_flex_form"."CFFRM_HTML_EXT3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_HTML_EXT3" IS 'HTML扩展3';


--
-- Name: COLUMN "core_flex_form"."CFFRM_HTML_EXT4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_HTML_EXT4" IS 'HTML扩展4';


--
-- Name: COLUMN "core_flex_form"."CFFRM_JSON"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_JSON" IS '表单JSON';


--
-- Name: COLUMN "core_flex_form"."CFFRM_JSON_EXT1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_JSON_EXT1" IS 'JSON扩展1';


--
-- Name: COLUMN "core_flex_form"."CFFRM_JSON_EXT2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_JSON_EXT2" IS 'JSON扩展2';


--
-- Name: COLUMN "core_flex_form"."CFFRM_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_TYPE" IS '业务类别';


--
-- Name: COLUMN "core_flex_form"."CFFRM_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_CRACT_UUID" IS '创建者';


--
-- Name: COLUMN "core_flex_form"."CFFRM_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_form"."CFFRM_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_flex_form"."CFFRM_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_REMARKS" IS '备注';


--
-- Name: COLUMN "core_flex_form"."CFFRM_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_ORDER" IS '排序号';


--
-- Name: COLUMN "core_flex_form"."CFFRM_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_STATUS" IS '状态';


--
-- Name: core_flex_form_CFFRM_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_CFFRM_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form_CFFRM_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_form_CFFRM_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_CFFRM_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_form"."CFFRM_UNID";


--
-- Name: core_flex_form_field; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_form_field" (
    "CFFMF_UNID" INTEGER NOT NULL,
    "CFFMF_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CFFMF_META_MODEL_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFFMF_META_FIELD_UUID" CHARACTER VARYING(48 char),
    "CFFMF_MODEL_UUID" CHARACTER VARYING(48 char),
    "CFFMF_MODEL_FIELD_UUID" CHARACTER VARYING(48 char),
    "CFFMF_MODEL_PROP_NAME" CHARACTER VARYING(64 char),
    "CFFMF_FORM_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFFMF_LABEL" CHARACTER VARYING(128 char),
    "CFFMF_NAME" CHARACTER VARYING(64 char),
    "CFFMF_DATA_TYPE" CHARACTER VARYING(8 char),
    "CFFMF_VALUE" CHARACTER VARYING(64 char),
    "CFFMF_REQUIRED" CHARACTER VARYING(8 char),
    "CFFMF_READONLY" CHARACTER VARYING(8 char),
    "CFFMF_HIDDEN" CHARACTER VARYING(8 char),
    "CFFMF_COM" CHARACTER VARYING(32 char),
    "CFFMF_FIELD_EXTEND" CHARACTER VARYING(128 char),
    "CFFMF_STATUS" CHARACTER VARYING(8 char),
    "CFFMF_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form_field" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_form_field"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_form_field" IS '自定义表单字段定义';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_META_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_META_MODEL_UUID" IS '所属库模型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_META_FIELD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_META_FIELD_UUID" IS '关联字段模型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_MODEL_UUID" IS '所属业务模型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_MODEL_FIELD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_MODEL_FIELD_UUID" IS '关联业务字段';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_MODEL_PROP_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_MODEL_PROP_NAME" IS '字段属性名称';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_FORM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_FORM_UUID" IS '所属表单模型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_LABEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_LABEL" IS '字段标题';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_NAME" IS '业务字段名称';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_DATA_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_DATA_TYPE" IS '数据类型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_VALUE" IS '默认取值';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_REQUIRED"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_REQUIRED" IS '必须填写';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_READONLY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_READONLY" IS '字段只读';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_HIDDEN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_HIDDEN" IS '字段隐藏';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_COM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_COM" IS '组件类型';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_FIELD_EXTEND"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_FIELD_EXTEND" IS '扩展配置';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_form_field"."CFFMF_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_ORDER" IS '排序号';


--
-- Name: core_flex_form_field_CFFMF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_field_CFFMF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form_field_CFFMF_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_form_field_CFFMF_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_field_CFFMF_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_form_field"."CFFMF_UNID";


--
-- Name: core_flex_form_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_form_grant" (
    "CFFG_UNID" INTEGER NOT NULL,
    "CFFG_FORM_UUID" CHARACTER VARYING(128 char) DEFAULT NULL::CHARACTER VARYING NOT NULL,
    "CFFG_FORM_NAME" CHARACTER VARYING(255 char),
    "CFFG_OWNER_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CFFG_OWNER_TYPE" CHARACTER VARYING(4 char),
    "CFFG_CREATE_TIME" DATE,
    "CFFG_UPDATE_TIME" DATE,
    "CFFG_ORDER" INTEGER,
    "CFFG_CREATOR" CHARACTER VARYING(225 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form_grant" OWNER TO "SYSTEM";

--
-- Name: COLUMN "core_flex_form_grant"."CFFG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_UNID" IS '表记录主键，无意义';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_FORM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_FORM_UUID" IS '表单记录唯一标识';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_FORM_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_FORM_NAME" IS '表单名称';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_OWNER_UUID" IS '所有者标识UUID,可能是群主UUID也可能是用户或部门UUID';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_OWNER_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_OWNER_TYPE" IS '所有者类型';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_ORDER" IS '排序';


--
-- Name: COLUMN "core_flex_form_grant"."CFFG_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_CREATOR" IS '创建者';


--
-- Name: core_flex_form_grant_CFFG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_grant_CFFG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_form_grant_CFFG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_form_grant_CFFG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_form_grant_CFFG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_form_grant"."CFFG_UNID";


--
-- Name: core_flex_model; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_model" (
    "CFMOD_UNID" INTEGER NOT NULL,
    "CFMOD_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CFMOD_META_UUID" CHARACTER VARYING(48 char),
    "CFMOD_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "CFMOD_VERSION" INTEGER NOT NULL,
    "CFMOD_VTYPE" CHARACTER VARYING(8 char) NOT NULL,
    "CFMOD_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CFMOD_TYPE" CHARACTER VARYING(8 char),
    "CFMOD_CRACT_UUID" CHARACTER VARYING(48 char),
    "CFMOD_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CFMOD_UPDATE_TIME" DATE,
    "CFMOD_REMARKS" CHARACTER VARYING(128 char),
    "CFMOD_ORDER" INTEGER,
    "CFMOD_STATUS" CHARACTER VARYING(4 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_model" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_model"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_model" IS '自定义业务模型';


--
-- Name: COLUMN "core_flex_model"."CFMOD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_model"."CFMOD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_model"."CFMOD_META_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_META_UUID" IS '数据库模型';


--
-- Name: COLUMN "core_flex_model"."CFMOD_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_CODE" IS '模型代码';


--
-- Name: COLUMN "core_flex_model"."CFMOD_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_VERSION" IS '配置版本';


--
-- Name: COLUMN "core_flex_model"."CFMOD_VTYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_VTYPE" IS '版本类型';


--
-- Name: COLUMN "core_flex_model"."CFMOD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_NAME" IS '模型名称';


--
-- Name: COLUMN "core_flex_model"."CFMOD_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_TYPE" IS '业务类别';


--
-- Name: COLUMN "core_flex_model"."CFMOD_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_CRACT_UUID" IS '创建者';


--
-- Name: COLUMN "core_flex_model"."CFMOD_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_model"."CFMOD_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_flex_model"."CFMOD_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_REMARKS" IS '备注';


--
-- Name: COLUMN "core_flex_model"."CFMOD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_ORDER" IS '排序号';


--
-- Name: COLUMN "core_flex_model"."CFMOD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_STATUS" IS '状态';


--
-- Name: core_flex_model_CFMOD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_model_CFMOD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_model_CFMOD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_model_CFMOD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_model_CFMOD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_model"."CFMOD_UNID";


--
-- Name: core_flex_model_field; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_model_field" (
    "CFMDF_UNID" INTEGER NOT NULL,
    "CFMDF_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CFMDF_MODEL_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFMDF_META_FIELD_UUID" CHARACTER VARYING(48 char),
    "CFMDF_CMM_NAME" CHARACTER VARYING(48 char),
    "CFMDF_PROP_NAME" CHARACTER VARYING(48 char),
    "CFMDF_NAME" CHARACTER VARYING(64 char),
    "CFMDF_SYSTF" CHARACTER VARYING(8 char),
    "CFMDF_DATA_TYPE" CHARACTER VARYING(8 char),
    "CFMDF_MAX_LIMIT" INTEGER,
    "CFMDF_MIN_LIMIT" INTEGER,
    "CFMDF_TYPE" CHARACTER VARYING(8 char),
    "CFMDF_STATUS" CHARACTER VARYING(8 char),
    "CFFMF_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_model_field" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_model_field"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_model_field" IS '自定义业务模型字段';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_MODEL_UUID" IS '所属业务模型';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_META_FIELD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_META_FIELD_UUID" IS '元模型字段';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_CMM_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_CMM_NAME" IS '通用属性';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_PROP_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_PROP_NAME" IS '字段属性';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_NAME" IS '业务字段名称';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_SYSTF"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_SYSTF" IS '系统字段';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_DATA_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_DATA_TYPE" IS '数据类型';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_MAX_LIMIT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_MAX_LIMIT" IS '最大限制';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_MIN_LIMIT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_MIN_LIMIT" IS '最小限制';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_TYPE" IS '字段类型';


--
-- Name: COLUMN "core_flex_model_field"."CFMDF_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_model_field"."CFFMF_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFFMF_ORDER" IS '排序号';


--
-- Name: core_flex_model_field_CFMDF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_model_field_CFMDF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_model_field_CFMDF_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_model_field_CFMDF_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_model_field_CFMDF_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_model_field"."CFMDF_UNID";


--
-- Name: core_flex_nodeform; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_nodeform" (
    "CFN_UNID" INTEGER NOT NULL,
    "CFN_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFN_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CFN_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CFN_CREATOR" CHARACTER VARYING(100 char),
    "CFN_UPDATER" CHARACTER VARYING(100 char),
    "CFN_STATUS" CHARACTER VARYING(100 char),
    "CFN_FLOWUUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFN_NODEUUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFN_FORMUUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFN_FLOWNAME" CHARACTER VARYING(100 char),
    "CFN_NODENAME" CHARACTER VARYING(100 char),
    "CFN_FORMNAME" CHARACTER VARYING(100 char),
    "CFN_FIELDPROPERTIES" TEXT
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_nodeform" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_nodeform"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_nodeform" IS '环节表单关系表';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_FLOWUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_FLOWUUID" IS '流程uuid';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_NODEUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_NODEUUID" IS '环节uuid';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_FORMUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_FORMUUID" IS '表单uuid';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_FLOWNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_FLOWNAME" IS '流程名称';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_NODENAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_NODENAME" IS '环节名称';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_FORMNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_FORMNAME" IS '表单名称';


--
-- Name: COLUMN "core_flex_nodeform"."CFN_FIELDPROPERTIES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_FIELDPROPERTIES" IS '环节字段控制';


--
-- Name: core_flex_nodeform_CFN_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_nodeform_CFN_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_nodeform_CFN_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_nodeform_CFN_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_nodeform_CFN_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_nodeform"."CFN_UNID";


--
-- Name: core_flex_table; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_table" (
    "CFTAB_UNID" INTEGER NOT NULL,
    "CFTAB_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CFTAB_MODEL_UUID" CHARACTER VARYING(48 char),
    "CFTAB_FORM_UUID" CHARACTER VARYING(48 char),
    "CFTAB_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CFTAB_LABEL" CHARACTER VARYING(128 char) NOT NULL,
    "CFTAB_TYPE" CHARACTER VARYING(8 char),
    "CFTAB_CRACT_UUID" CHARACTER VARYING(48 char),
    "CFTAB_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CFTAB_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CFTAB_REMARKS" CHARACTER VARYING(128 char),
    "CFTAB_ORDER" INTEGER,
    "CFTAB_STATUS" CHARACTER VARYING(4 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_table" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_table"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_table" IS '自定义表格';


--
-- Name: COLUMN "core_flex_table"."CFTAB_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_table"."CFTAB_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_table"."CFTAB_MODEL_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_MODEL_UUID" IS '模型对象';


--
-- Name: COLUMN "core_flex_table"."CFTAB_FORM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_FORM_UUID" IS '表单对象';


--
-- Name: COLUMN "core_flex_table"."CFTAB_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_NAME" IS '表格名称';


--
-- Name: COLUMN "core_flex_table"."CFTAB_LABEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_LABEL" IS '表单标题';


--
-- Name: COLUMN "core_flex_table"."CFTAB_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_TYPE" IS '业务类别';


--
-- Name: COLUMN "core_flex_table"."CFTAB_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_CRACT_UUID" IS '创建者';


--
-- Name: COLUMN "core_flex_table"."CFTAB_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_flex_table"."CFTAB_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_flex_table"."CFTAB_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_REMARKS" IS '备注';


--
-- Name: COLUMN "core_flex_table"."CFTAB_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_ORDER" IS '排序号';


--
-- Name: COLUMN "core_flex_table"."CFTAB_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_STATUS" IS '状态';


--
-- Name: core_flex_table_CFTAB_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_table_CFTAB_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_table_CFTAB_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_table_CFTAB_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_table_CFTAB_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_table"."CFTAB_UNID";


--
-- Name: core_flex_table_col; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_flex_table_col" (
    "CFTBC_UNID" INTEGER NOT NULL,
    "CFTBC_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CFTBC_TABLE_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CFTBC_TITLE" CHARACTER VARYING(128 char) NOT NULL,
    "CFTBC_NAME" CHARACTER VARYING(64 char),
    "CFTBC_CONVERTER" CHARACTER VARYING(128 char),
    "CFTBC_WIDTH" INTEGER,
    "CFTBC_LOCK_WIDTH" CHARACTER VARYING(8 char),
    "CFTBC_ALIGN" CHARACTER VARYING(8 char),
    "CFTBC_TYPE" CHARACTER VARYING(8 char),
    "CFTBC_HIDE" CHARACTER VARYING(8 char),
    "CFTBC_STATUS" CHARACTER VARYING(8 char),
    "CFTBC_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_table_col" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_flex_table_col"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_flex_table_col" IS '自定义表格列';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_TABLE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_TABLE_UUID" IS '所属表格';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_TITLE" IS '列标题';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_NAME" IS '取值表达式';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_CONVERTER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_CONVERTER" IS '取值转换器';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_WIDTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_WIDTH" IS '列展示宽度';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_LOCK_WIDTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_LOCK_WIDTH" IS '宽度锁定';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_ALIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_ALIGN" IS '对其方式';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_TYPE" IS '字段类型';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_HIDE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_HIDE" IS '是否隐藏';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_STATUS" IS '状态';


--
-- Name: COLUMN "core_flex_table_col"."CFTBC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_ORDER" IS '排序号';


--
-- Name: core_flex_table_col_CFTBC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_table_col_CFTBC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_flex_table_col_CFTBC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_flex_table_col_CFTBC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_flex_table_col_CFTBC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_flex_table_col"."CFTBC_UNID";


--
-- Name: core_function; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_function" (
    "CRFNT_UNID" INTEGER NOT NULL,
    "CRFNT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRFNT_CODE" CHARACTER VARYING(128 char),
    "CRFNT_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CRFNT_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRFNT_URL" CHARACTER VARYING(512 char),
    "CRFNT_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "CRFNT_UITAG" CHARACTER VARYING(128 char),
    "CRFNT_UITIP" CHARACTER VARYING(128 char),
    "CRFNT_CLASS" CHARACTER VARYING(128 char),
    "CRFNT_ICON_CLASS" CHARACTER VARYING(128 char),
    "CRFNT_NODE_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "CRFNT_URLCODES" TEXT,
    "CRFNT_STATUS" CHARACTER VARYING(8 char),
    "CRFNT_CREATOR" CHARACTER VARYING(48 char) NOT NULL,
    "CRFNT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRFNT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRFNT_ORDER" INTEGER,
    "CRFNT_REMARKS" CHARACTER VARYING(512 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_function" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_function"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_function" IS '功能项';


--
-- Name: COLUMN "core_function"."CRFNT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_function"."CRFNT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_function"."CRFNT_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_CODE" IS '资源代码';


--
-- Name: COLUMN "core_function"."CRFNT_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_function"."CRFNT_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_PARENT_UUID" IS '父结点PID';


--
-- Name: COLUMN "core_function"."CRFNT_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_URL" IS '功能地址';


--
-- Name: COLUMN "core_function"."CRFNT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_NAME" IS '功能说明';


--
-- Name: COLUMN "core_function"."CRFNT_UITAG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UITAG" IS '元素标记';


--
-- Name: COLUMN "core_function"."CRFNT_UITIP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UITIP" IS '元素提示';


--
-- Name: COLUMN "core_function"."CRFNT_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_CLASS" IS '元素样式';


--
-- Name: COLUMN "core_function"."CRFNT_ICON_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_ICON_CLASS" IS '图标样式';


--
-- Name: COLUMN "core_function"."CRFNT_NODE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_NODE_TYPE" IS '业务类别';


--
-- Name: COLUMN "core_function"."CRFNT_URLCODES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_URLCODES" IS '功能代码';


--
-- Name: COLUMN "core_function"."CRFNT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_STATUS" IS '节点状态';


--
-- Name: COLUMN "core_function"."CRFNT_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_function"."CRFNT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_function"."CRFNT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_function"."CRFNT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_function"."CRFNT_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_function"."CRFNT_REMARKS" IS '备注';


--
-- Name: core_function_CRFNT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_function_CRFNT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_function_CRFNT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_function_CRFNT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_function_CRFNT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_function"."CRFNT_UNID";


--
-- Name: core_group; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_group" (
    "CRGRP_UNID" INTEGER NOT NULL,
    "CRGRP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRGRP_INDEX_KEY" CHARACTER VARYING(48 char),
    "CRGRP_LEVEL_CODE" CHARACTER VARYING(30 char),
    "CRGRP_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRGRP_REF_UUID" CHARACTER VARYING(48 char),
    "CRGRP_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CRGRP_TYPE" CHARACTER VARYING(8 char),
    "CRGRP_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "CRGRP_INDEX" CHARACTER VARYING(128 char),
    "CRGRP_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRGRP_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRGRP_CRACT_UUID" CHARACTER VARYING(48 char),
    "CRGRP_ORDER" INTEGER,
    "CRGRP_REMARKS" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_group" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_group"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_group" IS '群组信息';


--
-- Name: COLUMN "core_group"."CRGRP_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_group"."CRGRP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_group"."CRGRP_INDEX_KEY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_INDEX_KEY" IS '索引键';


--
-- Name: COLUMN "core_group"."CRGRP_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_group"."CRGRP_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_PARENT_UUID" IS '父节点PID';


--
-- Name: COLUMN "core_group"."CRGRP_REF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_REF_UUID" IS '引用标识';


--
-- Name: COLUMN "core_group"."CRGRP_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_NAME" IS '群组名称';


--
-- Name: COLUMN "core_group"."CRGRP_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_TYPE" IS '节点类型';


--
-- Name: COLUMN "core_group"."CRGRP_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_STATUS" IS '群组状态';


--
-- Name: COLUMN "core_group"."CRGRP_INDEX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_INDEX" IS '节点索引';


--
-- Name: COLUMN "core_group"."CRGRP_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_group"."CRGRP_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_group"."CRGRP_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_CRACT_UUID" IS '创建者';


--
-- Name: COLUMN "core_group"."CRGRP_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_ORDER" IS '排序号';


--
-- Name: COLUMN "core_group"."CRGRP_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_group"."CRGRP_REMARKS" IS '备注';


--
-- Name: core_group_CRGRP_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_group_CRGRP_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_group_CRGRP_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_group_CRGRP_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_group_CRGRP_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_group"."CRGRP_UNID";


--
-- Name: core_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_log" (
    "CRLOG_UNID" INTEGER NOT NULL,
    "CRLOG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRLOG_CRACT_UUID" CHARACTER VARYING(48 char),
    "CRLOG_CRORG_UUID" CHARACTER VARYING(300 char),
    "CRLOG_RECORD_UUID" TEXT,
    "CRLOG_TYPE" CHARACTER VARYING(8 char),
    "CRLOG_LEVEL" INTEGER,
    "CRLOG_TABLE_NAME" CHARACTER VARYING(64 char),
    "CRLOG_MODULAR" CHARACTER VARYING(128 char),
    "CRLOG_METHOD_SIGN" CHARACTER VARYING(128 char),
    "CRLOG_DESC" TEXT,
    "CRLOG_DETAIL" TEXT,
    "CRLOG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRLOG_YEAR" INTEGER,
    "CRLOG_MONTH" INTEGER,
    "CRLOG_DATE" INTEGER,
    "CRLOG_HOURE" INTEGER,
    "CRLOG_SPEND_TIME" INTEGER,
    "CRLOG_IP" CHARACTER VARYING(64 char),
    "CRLOG_CRACT_NAME" CHARACTER VARYING(48 char),
    "CRLOG_MAC_ADDRESS" CHARACTER VARYING(48 char),
    "CRLOG_USER_AGENT" CHARACTER VARYING(512 char),
    "CRLOG_CLIENTOS" CHARACTER VARYING(128 char),
    "CRLOG_CLIENT_PRODUCT" CHARACTER VARYING(64 char),
    "CRLOG_CLIENT_VERSION" CHARACTER VARYING(64 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_log" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_log"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_log" IS '通用日志';


--
-- Name: COLUMN "core_log"."CRLOG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_log"."CRLOG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_log"."CRLOG_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CRACT_UUID" IS '操作用户UUID';


--
-- Name: COLUMN "core_log"."CRLOG_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CRORG_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_log"."CRLOG_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_RECORD_UUID" IS '记录标识';


--
-- Name: COLUMN "core_log"."CRLOG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_log"."CRLOG_LEVEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_LEVEL" IS '日志级别';


--
-- Name: COLUMN "core_log"."CRLOG_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_TABLE_NAME" IS '操作表名称';


--
-- Name: COLUMN "core_log"."CRLOG_MODULAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_MODULAR" IS '业务模块';


--
-- Name: COLUMN "core_log"."CRLOG_METHOD_SIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_METHOD_SIGN" IS '方法签名';


--
-- Name: COLUMN "core_log"."CRLOG_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_DESC" IS '操作说明';


--
-- Name: COLUMN "core_log"."CRLOG_DETAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_DETAIL" IS '详细参数';


--
-- Name: COLUMN "core_log"."CRLOG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CREATE_TIME" IS '记录时间';


--
-- Name: COLUMN "core_log"."CRLOG_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_YEAR" IS '记录年份';


--
-- Name: COLUMN "core_log"."CRLOG_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_MONTH" IS '记录月份';


--
-- Name: COLUMN "core_log"."CRLOG_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_DATE" IS '记录日期';


--
-- Name: COLUMN "core_log"."CRLOG_HOURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_HOURE" IS '记录小时';


--
-- Name: COLUMN "core_log"."CRLOG_SPEND_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_SPEND_TIME" IS '消耗时间';


--
-- Name: COLUMN "core_log"."CRLOG_IP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_IP" IS '操作IP';


--
-- Name: COLUMN "core_log"."CRLOG_CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CRACT_NAME" IS '操作者';


--
-- Name: COLUMN "core_log"."CRLOG_MAC_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_MAC_ADDRESS" IS 'mac地址';


--
-- Name: COLUMN "core_log"."CRLOG_USER_AGENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_USER_AGENT" IS '客户端AGENT';


--
-- Name: COLUMN "core_log"."CRLOG_CLIENTOS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CLIENTOS" IS '操作系统';


--
-- Name: COLUMN "core_log"."CRLOG_CLIENT_PRODUCT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CLIENT_PRODUCT" IS '客户端产品';


--
-- Name: COLUMN "core_log"."CRLOG_CLIENT_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_log"."CRLOG_CLIENT_VERSION" IS '客户端版本';


--
-- Name: core_log_CRLOG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_log_CRLOG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_log_CRLOG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_log_CRLOG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_log_CRLOG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_log"."CRLOG_UNID";


--
-- Name: core_menu; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_menu" (
    "CRMNU_UNID" INTEGER NOT NULL,
    "CRMNU_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRMNU_INDEX_KEY" CHARACTER VARYING(128 char),
    "CRMNU_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CRMNU_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRMNU_ENTRY_UUID" CHARACTER VARYING(48 char),
    "CRMNU_UITAG" CHARACTER VARYING(128 char),
    "CRMNU_UITIP" CHARACTER VARYING(128 char),
    "CRMNU_NAME" CHARACTER VARYING(100 char) NOT NULL,
    "CRMNU_URL" CHARACTER VARYING(512 char),
    "CRMNU_TARGET" CHARACTER VARYING(32 char),
    "CRMNU_FUN_URLS" TEXT,
    "CRMNU_PIC_URL" CHARACTER VARYING(128 char),
    "CRMNU_PIC_CSS" CHARACTER VARYING(64 char),
    "CRMNU_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "CRMNU_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "CRMNU_CREATOR" CHARACTER VARYING(48 char),
    "CRMNU_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRMNU_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRMNU_ORDER" INTEGER,
    "CRMNU_REMARKS" CHARACTER VARYING(200 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_menu" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_menu"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_menu" IS '菜单项';


--
-- Name: COLUMN "core_menu"."CRMNU_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_menu"."CRMNU_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_menu"."CRMNU_INDEX_KEY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_INDEX_KEY" IS '检索键,主要提供给程序员对自己感兴趣的结进行检索';


--
-- Name: COLUMN "core_menu"."CRMNU_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_menu"."CRMNU_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_PARENT_UUID" IS '父结点PID';


--
-- Name: COLUMN "core_menu"."CRMNU_ENTRY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_ENTRY_UUID" IS '逻辑入口';


--
-- Name: COLUMN "core_menu"."CRMNU_UITAG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UITAG" IS '元素标记';


--
-- Name: COLUMN "core_menu"."CRMNU_UITIP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UITIP" IS '元素提示';


--
-- Name: COLUMN "core_menu"."CRMNU_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_NAME" IS '菜单名称';


--
-- Name: COLUMN "core_menu"."CRMNU_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_URL" IS '访问地址';


--
-- Name: COLUMN "core_menu"."CRMNU_TARGET"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_TARGET" IS '加载目标';


--
-- Name: COLUMN "core_menu"."CRMNU_FUN_URLS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_FUN_URLS" IS '功能地址';


--
-- Name: COLUMN "core_menu"."CRMNU_PIC_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_PIC_URL" IS '图标地址';


--
-- Name: COLUMN "core_menu"."CRMNU_PIC_CSS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_PIC_CSS" IS '图标样式';


--
-- Name: COLUMN "core_menu"."CRMNU_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_TYPE" IS '功能项类型';


--
-- Name: COLUMN "core_menu"."CRMNU_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_STATUS" IS '状态';


--
-- Name: COLUMN "core_menu"."CRMNU_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_menu"."CRMNU_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_menu"."CRMNU_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_menu"."CRMNU_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_ORDER" IS '排序号';


--
-- Name: COLUMN "core_menu"."CRMNU_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_REMARKS" IS '备注';


--
-- Name: core_menu_CRMNU_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_menu_CRMNU_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_menu_CRMNU_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_menu_CRMNU_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_menu_CRMNU_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_menu"."CRMNU_UNID";


--
-- Name: core_menu_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_menu_grant" (
    "CRGRT_UNID" INTEGER NOT NULL,
    "CRGRT_MENU_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRGRT_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRGRT_OWNER_TYPE" CHARACTER VARYING(8 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_menu_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_menu_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_menu_grant" IS '菜单授权表';


--
-- Name: COLUMN "core_menu_grant"."CRGRT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu_grant"."CRGRT_UNID" IS '唯一标识';


--
-- Name: COLUMN "core_menu_grant"."CRGRT_MENU_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu_grant"."CRGRT_MENU_UUID" IS '菜单标识UUID';


--
-- Name: COLUMN "core_menu_grant"."CRGRT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu_grant"."CRGRT_OWNER_UUID" IS '所有者标识UUID,可能是角色UUID也可能是用户或部门UUID';


--
-- Name: COLUMN "core_menu_grant"."CRGRT_OWNER_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_menu_grant"."CRGRT_OWNER_TYPE" IS '所有者类型';


--
-- Name: core_menu_grant_CRGRT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_menu_grant_CRGRT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_menu_grant_CRGRT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_menu_grant_CRGRT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_menu_grant_CRGRT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_menu_grant"."CRGRT_UNID";


--
-- Name: core_meta_column; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_meta_column" (
    "CMCMD_UNID" INTEGER NOT NULL,
    "CMCMD_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CMCMD_CMTMD_UUID" CHARACTER VARYING(48 char),
    "CMCMD_CRACT_UUID" CHARACTER VARYING(48 char),
    "CMCMD_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CMCMD_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CMCMD_JAVA_PROPERTY" CHARACTER VARYING(64 char) NOT NULL,
    "CMCMD_CMM_PROPERTY" CHARACTER VARYING(16 char),
    "CMCMD_TABLE_CATALOG" CHARACTER VARYING(32 char),
    "CMCMD_TABLE_SCHEMA" CHARACTER VARYING(32 char),
    "CMCMD_TABLE_NAME" CHARACTER VARYING(32 char),
    "CMCMD_COLUMN_NAME" CHARACTER VARYING(32 char),
    "CMCMD_COLUMN_LABEL" CHARACTER VARYING(64 char),
    "CMCMD_DATA_TYPE" INTEGER,
    "CMCMD_TYPE_NAME" CHARACTER VARYING(32 char),
    "CMCMD_COLUMN_SIZE" INTEGER,
    "CMCMD_DECIMAL_DIGITS" INTEGER,
    "CMCMD_NUM_PREC_RADIX" INTEGER,
    "CMCMD_NULLABLE" INTEGER,
    "CMCMD_REMARKS" CHARACTER VARYING(128 char),
    "CMCMD_CHAR_OCTET_LENGTH" INTEGER,
    "CMCMD_ORDINAL_POSITION" INTEGER,
    "CMCMD_IS_NULLABLE" CHARACTER VARYING(8 char),
    "CMCMD_FIELD_TYPE" CHARACTER VARYING(8 char),
    "CMCMD_DEFAULT" CHARACTER VARYING(128 char),
    "CMCMD_ORDER" INTEGER,
    "CMCMD_STATUS" CHARACTER VARYING(4 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_column" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_meta_column"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_meta_column" IS '数据库列模型信息';


--
-- Name: COLUMN "core_meta_column"."CMCMD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_UNID" IS 'UNID';


--
-- Name: COLUMN "core_meta_column"."CMCMD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_UUID" IS 'UUID';


--
-- Name: COLUMN "core_meta_column"."CMCMD_CMTMD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_CMTMD_UUID" IS '表UUID';


--
-- Name: COLUMN "core_meta_column"."CMCMD_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_CRACT_UUID" IS '记录创建者而非数据库';


--
-- Name: COLUMN "core_meta_column"."CMCMD_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_meta_column"."CMCMD_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_meta_column"."CMCMD_JAVA_PROPERTY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_JAVA_PROPERTY" IS '对应java属性名称';


--
-- Name: COLUMN "core_meta_column"."CMCMD_CMM_PROPERTY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_CMM_PROPERTY" IS '通用属性名称';


--
-- Name: COLUMN "core_meta_column"."CMCMD_TABLE_CATALOG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_TABLE_CATALOG" IS '表目录';


--
-- Name: COLUMN "core_meta_column"."CMCMD_TABLE_SCHEMA"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_TABLE_SCHEMA" IS '表模式';


--
-- Name: COLUMN "core_meta_column"."CMCMD_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_TABLE_NAME" IS '表名称';


--
-- Name: COLUMN "core_meta_column"."CMCMD_COLUMN_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_COLUMN_NAME" IS '列名称';


--
-- Name: COLUMN "core_meta_column"."CMCMD_COLUMN_LABEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_COLUMN_LABEL" IS '列标题,如果不存在就从备注cmcmd_remarks中去取';


--
-- Name: COLUMN "core_meta_column"."CMCMD_DATA_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_DATA_TYPE" IS 'java.sql.Types中规范的类型 ';


--
-- Name: COLUMN "core_meta_column"."CMCMD_TYPE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_TYPE_NAME" IS '类型名称';


--
-- Name: COLUMN "core_meta_column"."CMCMD_COLUMN_SIZE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_COLUMN_SIZE" IS '列大小';


--
-- Name: COLUMN "core_meta_column"."CMCMD_DECIMAL_DIGITS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_DECIMAL_DIGITS" IS '小数部分的位数';


--
-- Name: COLUMN "core_meta_column"."CMCMD_NUM_PREC_RADIX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_NUM_PREC_RADIX" IS '基数';


--
-- Name: COLUMN "core_meta_column"."CMCMD_NULLABLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_NULLABLE" IS '可否为NULL';


--
-- Name: COLUMN "core_meta_column"."CMCMD_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_REMARKS" IS '备注';


--
-- Name: COLUMN "core_meta_column"."CMCMD_CHAR_OCTET_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_CHAR_OCTET_LENGTH" IS '对于 char 类型，该长度是列中的最大字节数';


--
-- Name: COLUMN "core_meta_column"."CMCMD_ORDINAL_POSITION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_ORDINAL_POSITION" IS '表中的列的索引（从 1 开始）';


--
-- Name: COLUMN "core_meta_column"."CMCMD_IS_NULLABLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_IS_NULLABLE" IS '"NO" 表示明确不允许列使用 NULL 值，"YES" 表示可能允许列使用 NULL 值。空字符串表示没人知道是否允许使用 null 值';


--
-- Name: COLUMN "core_meta_column"."CMCMD_FIELD_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_FIELD_TYPE" IS '字段类型';


--
-- Name: COLUMN "core_meta_column"."CMCMD_DEFAULT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_DEFAULT" IS '默认值';


--
-- Name: COLUMN "core_meta_column"."CMCMD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_ORDER" IS '排序号';


--
-- Name: COLUMN "core_meta_column"."CMCMD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_STATUS" IS '状态';


--
-- Name: core_meta_column_CMCMD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_column_CMCMD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_column_CMCMD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_meta_column_CMCMD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_column_CMCMD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_meta_column"."CMCMD_UNID";


--
-- Name: core_meta_data_source; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_meta_data_source" (
    "CMSRC_UNID" INTEGER NOT NULL,
    "CMSRC_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CMSRC_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CMSRC_DBTYPE" CHARACTER VARYING(32 char) NOT NULL,
    "CMSRC_DRIVER_CLASS" CHARACTER VARYING(64 char),
    "CMSRC_URL" CHARACTER VARYING(64 char),
    "CMSRC_USERNAME" CHARACTER VARYING(64 char),
    "CMSRC_PASSWORD" CHARACTER VARYING(64 char),
    "CMSRC_ORDER" INTEGER,
    "CMSRC_CREATOR" CHARACTER VARYING(32 char),
    "CMSRC_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CMSRC_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CMSRC_REMARKS" CHARACTER VARYING(256 char),
    "CMSRC_DATABASE_PRODUCT_NAME" CHARACTER VARYING(128 char),
    "CMSRC_DATABASE_PRODUCT_VERSION" CHARACTER VARYING(128 char),
    "CMSRC_DATABASE_MAJOR_VERSION" INTEGER,
    "CMSRC_DATABASE_MINOR_VERSION" INTEGER,
    "CMSRC_CATALOG" CHARACTER VARYING(64 char),
    "CMSRC_CATALOG_TERM" CHARACTER VARYING(64 char),
    "CMSRC_CATALOG_SEPARATOR" CHARACTER VARYING(2 char),
    "CMSRC_MAX_CATALOG_NAME_LENGTH" INTEGER,
    "CMSRC_CATALOGS" CHARACTER VARYING(256 char),
    "CMSRC_SCHEMA_TERM" CHARACTER VARYING(64 char),
    "CMSRC_MAX_SCHEMA_NAME_LENGTH" INTEGER,
    "CMSRC_SCHEMAS" TEXT,
    "CMSRC_MAX_CHAR_LITERAL_LENGTH" INTEGER,
    "CMSRC_MAX_COLUMN_NAME_LENGTH" INTEGER,
    "CMSRC_MAX_COLUMNS_IN_GROUP_BY" INTEGER,
    "CMSRC_MAX_COLUMNS_IN_INDEX" INTEGER,
    "CMSRC_MAX_COLUMNS_IN_ORDER_BY" INTEGER,
    "CMSRC_MAX_COLUMNS_IN_SELECT" INTEGER,
    "CMSRC_MAX_COLUMNS_IN_TABLE" INTEGER,
    "CMSRC_MAX_INDEX_LENGTH" INTEGER,
    "CMSRC_MAX_PROCEDURE_NAMELENGTH" INTEGER,
    "CMSRC_MAX_ROW_SIZE" INTEGER,
    "CMSRC_MAX_STATEMENT_LENGTH" INTEGER,
    "CMSRC_MAX_STATEMENTS" INTEGER,
    "CMSRC_MAX_TABLE_NAME_LENGTH" INTEGER,
    "CMSRC_MAX_TABLESIN_SELECT" INTEGER,
    "CMSRC_IDENTIFIER_QUOTE_STRING" CHARACTER VARYING(8 char),
    "CMSRC_SEARCH_STRING_ESCAPE" CHARACTER VARYING(8 char),
    "CMSRC_SQL_KEYWORDS" CHARACTER VARYING(256 char),
    "CMSRC_STRING_FUNCTIONS" CHARACTER VARYING(512 char),
    "CMSRC_SYSTEM_FUNCTIONS" CHARACTER VARYING(256 char),
    "CMSRC_TIME_DATE_FUNCTIONS" CHARACTER VARYING(512 char),
    "CMSRC_NUMERIC_FUNCTIONS" CHARACTER VARYING(256 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_data_source" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_meta_data_source"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_meta_data_source" IS '第三方业务数据源';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_NAME" IS '数据源名称';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DBTYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DBTYPE" IS '数据库类型';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DRIVER_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DRIVER_CLASS" IS '驱动类名称';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_URL" IS '连接字符串';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_USERNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_USERNAME" IS '用户名称';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_PASSWORD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_PASSWORD" IS '密码';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_ORDER" IS '排序号';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_REMARKS" IS '备注';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DATABASE_PRODUCT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DATABASE_PRODUCT_NAME" IS '数据库名称';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DATABASE_PRODUCT_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DATABASE_PRODUCT_VERSION" IS '数据库版本';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DATABASE_MAJOR_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DATABASE_MAJOR_VERSION" IS '数据库主版本号';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_DATABASE_MINOR_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_DATABASE_MINOR_VERSION" IS '数据库次版本号';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CATALOG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CATALOG" IS '目录名称';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CATALOG_TERM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CATALOG_TERM" IS '对catalog名称解释';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CATALOG_SEPARATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CATALOG_SEPARATOR" IS '数据库与的连接符';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_CATALOG_NAME_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_CATALOG_NAME_LENGTH" IS 'catalog最大长度';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_CATALOGS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_CATALOGS" IS 'catalogs集合';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_SCHEMA_TERM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_SCHEMA_TERM" IS '对schema名称解释';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_SCHEMA_NAME_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_SCHEMA_NAME_LENGTH" IS 'schema名称最大长度';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_SCHEMAS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_SCHEMAS" IS 'schemass集合';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_CHAR_LITERAL_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_CHAR_LITERAL_LENGTH" IS '检索此数据库允许用于字符字面值的最大字符数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMN_NAME_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMN_NAME_LENGTH" IS '此数据库允许用于列名称的最大字符数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_GROUP_BY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_GROUP_BY" IS '此数据库允许在 GROUP BY 子句中使用的最大列数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_INDEX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_INDEX" IS '此数据库允许在索引中使用的最大列数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_ORDER_BY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_ORDER_BY" IS '此数据库允许在 ORDER BY 子句中使用的最大列数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_SELECT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_SELECT" IS '此数据库允许在 SELECT 列表中使用的最大列数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_TABLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_COLUMNS_IN_TABLE" IS '此数据库允许在表中使用的最大列数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_INDEX_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_INDEX_LENGTH" IS '此数据库允许用于索引（包括索引的所有部分）的最大字节数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_PROCEDURE_NAMELENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_PROCEDURE_NAMELENGTH" IS '此数据库允许用于过程名称的最大字节数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_ROW_SIZE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_ROW_SIZE" IS '此数据库允许在单行中使用的最大字节数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_STATEMENT_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_STATEMENT_LENGTH" IS '此数据库允许在 SQL 语句中使用的最大字符数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_STATEMENTS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_STATEMENTS" IS '此数据库中在同一时间内可处于开放状态的最大活动语句数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_TABLE_NAME_LENGTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_TABLE_NAME_LENGTH" IS '此数据库允许在表名称中使用的最大字符数';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_MAX_TABLESIN_SELECT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_MAX_TABLESIN_SELECT" IS '此数据库允许在 SELECT 语句中使用的表的最大数量';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_IDENTIFIER_QUOTE_STRING"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_IDENTIFIER_QUOTE_STRING" IS '如何引用规范中的关键字通常为引号';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_SEARCH_STRING_ESCAPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_SEARCH_STRING_ESCAPE" IS '转义通配符的字符串';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_SQL_KEYWORDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_SQL_KEYWORDS" IS '此数据库的还不是 SQL92 关键字的所有 SQL 关键字的逗号分隔列表';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_STRING_FUNCTIONS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_STRING_FUNCTIONS" IS '此数据库的字符串函数的逗号分隔列表';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_SYSTEM_FUNCTIONS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_SYSTEM_FUNCTIONS" IS '此数据库的系统函数的逗号分隔列表';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_TIME_DATE_FUNCTIONS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_TIME_DATE_FUNCTIONS" IS '此数据库的时间和日期函数的逗号分隔列表';


--
-- Name: COLUMN "core_meta_data_source"."CMSRC_NUMERIC_FUNCTIONS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_NUMERIC_FUNCTIONS" IS '此数据库的数学函数的逗号分隔列表';


--
-- Name: core_meta_data_source_CMSRC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_data_source_CMSRC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_data_source_CMSRC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_meta_data_source_CMSRC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_data_source_CMSRC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_meta_data_source"."CMSRC_UNID";


--
-- Name: core_meta_model; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_meta_model" (
    "CMTMD_UNID" INTEGER NOT NULL,
    "CMTMD_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CMTMD_SOURCE_UUID" CHARACTER VARYING(48 char),
    "CMTMD_CRACT_UUID" CHARACTER VARYING(48 char),
    "CMTMD_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CMTMD_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CMTMD_MODEL_TYPE" CHARACTER VARYING(8 char),
    "CMTMD_TABLE_CATALOG" CHARACTER VARYING(32 char),
    "CMTMD_TABLE_SCHEMA" CHARACTER VARYING(32 char),
    "CMTMD_TABLE_NAME" CHARACTER VARYING(32 char) NOT NULL,
    "CMTMD_TABLE_TYPE" CHARACTER VARYING(32 char),
    "CMTMD_TABLE_LABEL" CHARACTER VARYING(64 char),
    "CMTMD_FIELD_PREFIX" CHARACTER VARYING(8 char),
    "CMTMD_REMARKS" CHARACTER VARYING(128 char),
    "CMTMD_TYPE_CATALOG" CHARACTER VARYING(32 char),
    "CMTMD_TYPE_SCHEMA" CHARACTER VARYING(32 char),
    "CMTMD_TYPE_NAME" CHARACTER VARYING(32 char),
    "CMTMD_SELF_REFERENCE_COL_NAME" CHARACTER VARYING(32 char),
    "CMTMD_REF_GENERATION" CHARACTER VARYING(32 char),
    "CMTMD_ORDER" INTEGER,
    "CMTMD_STATUS" CHARACTER VARYING(4 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_model" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_meta_model"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_meta_model" IS '表模型信息';


--
-- Name: COLUMN "core_meta_model"."CMTMD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_UNID" IS 'UNID';


--
-- Name: COLUMN "core_meta_model"."CMTMD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_UUID" IS 'UUID';


--
-- Name: COLUMN "core_meta_model"."CMTMD_SOURCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_SOURCE_UUID" IS '数据库UUID';


--
-- Name: COLUMN "core_meta_model"."CMTMD_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_CRACT_UUID" IS '记录创建者而非数据库';


--
-- Name: COLUMN "core_meta_model"."CMTMD_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_meta_model"."CMTMD_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_meta_model"."CMTMD_MODEL_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_MODEL_TYPE" IS '业务分类';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TABLE_CATALOG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TABLE_CATALOG" IS 'table目录名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TABLE_SCHEMA"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TABLE_SCHEMA" IS 'table模式名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TABLE_NAME" IS '表名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TABLE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TABLE_TYPE" IS '表类型';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TABLE_LABEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TABLE_LABEL" IS '表标题,如果不存在就从备注cmtmd_remarks中取';


--
-- Name: COLUMN "core_meta_model"."CMTMD_FIELD_PREFIX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_FIELD_PREFIX" IS '字段前缀';


--
-- Name: COLUMN "core_meta_model"."CMTMD_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_REMARKS" IS '备注';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TYPE_CATALOG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TYPE_CATALOG" IS '类型目录名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TYPE_SCHEMA"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TYPE_SCHEMA" IS '类型模式名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_TYPE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_TYPE_NAME" IS '类型名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_SELF_REFERENCE_COL_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_SELF_REFERENCE_COL_NAME" IS '有类型表的指定 "identifier" 列的名称';


--
-- Name: COLUMN "core_meta_model"."CMTMD_REF_GENERATION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_REF_GENERATION" IS '指定在 SELF_REFERENCING_COL_NAME 中创建值的方式。这些值为 SYSTEM、USER 和 DERIVED。（可能为 null）';


--
-- Name: COLUMN "core_meta_model"."CMTMD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_ORDER" IS '排序号';


--
-- Name: COLUMN "core_meta_model"."CMTMD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_STATUS" IS '状态';


--
-- Name: core_meta_model_CMTMD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_model_CMTMD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_meta_model_CMTMD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_meta_model_CMTMD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_meta_model_CMTMD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_meta_model"."CMTMD_UNID";


--
-- Name: core_notice; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_notice" (
    "CN_UNID" INTEGER NOT NULL,
    "CN_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CN_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    "CN_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CN_STATUS" CHARACTER VARYING(10 char),
    "CN_TITLE" CHARACTER VARYING(1000 char),
    "CN_URL" CHARACTER VARYING(1000 char),
    "CN_CURRENTUUID" CHARACTER VARYING(48 char),
    "CN_CURRENTNAME" CHARACTER VARYING(100 char),
    "CN_PREPROCESSOR_UUID" CHARACTER VARYING(48 char),
    "CN_PREPROCESSOR_NAME" CHARACTER VARYING(45 char),
    "CN_READ_STATUS" CHARACTER VARYING(10 char),
    "CN_DONE_STATUS" CHARACTER VARYING(10 char),
    "CN_STARS_STATUS" CHARACTER VARYING(10 char),
    "CN_URGENT_STATUS" CHARACTER VARYING(10 char),
    "CN_APPLICATION" CHARACTER VARYING(10 char),
    "CN_TYPE" CHARACTER VARYING(10 char),
    "CN_END_TIME" TIMESTAMP WITHOUT TIME ZONE,
    "CN_RECORD_UUID" CHARACTER VARYING(48 char),
    "CN_IDOS" CHARACTER VARYING(10 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_notice" OWNER TO "SYSTEM";

--
-- Name: COLUMN "core_notice"."CN_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_UNID" IS 'unid';


--
-- Name: COLUMN "core_notice"."CN_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_UUID" IS 'uuid';


--
-- Name: COLUMN "core_notice"."CN_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_notice"."CN_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_notice"."CN_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_STATUS" IS '记录状态';


--
-- Name: COLUMN "core_notice"."CN_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_TITLE" IS '标题';


--
-- Name: COLUMN "core_notice"."CN_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_URL" IS '链接地址';


--
-- Name: COLUMN "core_notice"."CN_CURRENTUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_CURRENTUUID" IS '当前处理人uuid';


--
-- Name: COLUMN "core_notice"."CN_CURRENTNAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_CURRENTNAME" IS '当前处理人name';


--
-- Name: COLUMN "core_notice"."CN_PREPROCESSOR_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_PREPROCESSOR_UUID" IS '前续处理人id';


--
-- Name: COLUMN "core_notice"."CN_PREPROCESSOR_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_PREPROCESSOR_NAME" IS '前续处理人name';


--
-- Name: COLUMN "core_notice"."CN_READ_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_READ_STATUS" IS '阅读状态';


--
-- Name: COLUMN "core_notice"."CN_DONE_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_DONE_STATUS" IS '处理状态';


--
-- Name: COLUMN "core_notice"."CN_STARS_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_STARS_STATUS" IS '标星状态';


--
-- Name: COLUMN "core_notice"."CN_URGENT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_URGENT_STATUS" IS '紧急状态';


--
-- Name: COLUMN "core_notice"."CN_APPLICATION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_APPLICATION" IS '应用id';


--
-- Name: COLUMN "core_notice"."CN_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_TYPE" IS '业务分类';


--
-- Name: COLUMN "core_notice"."CN_END_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_END_TIME" IS '失效截至日期';


--
-- Name: COLUMN "core_notice"."CN_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_RECORD_UUID" IS '关联实体uuid';


--
-- Name: COLUMN "core_notice"."CN_IDOS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_notice"."CN_IDOS" IS '消息业务唯一标识';


--
-- Name: core_number_config; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_number_config" (
    "CRNOC_UNID" INTEGER NOT NULL,
    "CRNOC_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRNOC_CODE" CHARACTER VARYING(128 char) NOT NULL,
    "CRNOC_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "CRNOC_ORG_UUID" CHARACTER VARYING(48 char),
    "CRNOC_ORG_NAME" CHARACTER VARYING(128 char),
    "CRNOC_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "CRNOC_CREATOR" CHARACTER VARYING(48 char),
    "CRNOC_UPDATER" CHARACTER VARYING(48 char),
    "CRNOC_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRNOC_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRNOC_ORDER" INTEGER,
    "CRNOC_NUMBER" INTEGER,
    "CRNOC_USE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRNOC_FORMAT" CHARACTER VARYING(128 char) NOT NULL,
    "CRNOC_NEXT_METHOD" CHARACTER VARYING(8 char),
    "CRNOC_RESET_METHOD" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_number_config" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_number_config"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_number_config" IS '流水号配置';


--
-- Name: COLUMN "core_number_config"."CRNOC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_number_config"."CRNOC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_number_config"."CRNOC_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_CODE" IS '代码';


--
-- Name: COLUMN "core_number_config"."CRNOC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_NAME" IS '名称';


--
-- Name: COLUMN "core_number_config"."CRNOC_ORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_ORG_UUID" IS '单位标识';


--
-- Name: COLUMN "core_number_config"."CRNOC_ORG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_ORG_NAME" IS '单位名称';


--
-- Name: COLUMN "core_number_config"."CRNOC_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_STATUS" IS '状态';


--
-- Name: COLUMN "core_number_config"."CRNOC_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_number_config"."CRNOC_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_number_config"."CRNOC_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_number_config"."CRNOC_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_number_config"."CRNOC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_ORDER" IS '排序号';


--
-- Name: COLUMN "core_number_config"."CRNOC_NUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_NUMBER" IS '当前编号';


--
-- Name: COLUMN "core_number_config"."CRNOC_USE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_USE_TIME" IS '使用时间';


--
-- Name: COLUMN "core_number_config"."CRNOC_FORMAT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_FORMAT" IS '解析格式';


--
-- Name: COLUMN "core_number_config"."CRNOC_NEXT_METHOD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_NEXT_METHOD" IS '续号方式';


--
-- Name: COLUMN "core_number_config"."CRNOC_RESET_METHOD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_RESET_METHOD" IS '重置策略';


--
-- Name: core_number_config_CRNOC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_number_config_CRNOC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_number_config_CRNOC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_number_config_CRNOC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_number_config_CRNOC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_number_config"."CRNOC_UNID";


--
-- Name: core_number_history; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_number_history" (
    "CRNOH_UNID" INTEGER NOT NULL,
    "CRNOH_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRNOH_CRNOC_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRNOH_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "CRNOH_CREATOR" CHARACTER VARYING(48 char),
    "CRNOH_UPDATER" CHARACTER VARYING(48 char),
    "CRNOH_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRNOH_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRNOH_ENTITY_UUID" CHARACTER VARYING(48 char),
    "CRNOH_ENTITY_TITLE" CHARACTER VARYING(128 char),
    "CRNOH_NUMBER" INTEGER NOT NULL,
    "CRNOH_FORMAT_NUMBER" CHARACTER VARYING(128 char) NOT NULL,
    "CRNOH_YEAR" INTEGER NOT NULL,
    "CRNOH_MONTH" INTEGER NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_number_history" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_number_history"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_number_history" IS '流水号历史';


--
-- Name: COLUMN "core_number_history"."CRNOH_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_UNID" IS 'UNID';


--
-- Name: COLUMN "core_number_history"."CRNOH_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_UUID" IS 'UUID';


--
-- Name: COLUMN "core_number_history"."CRNOH_CRNOC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_CRNOC_UUID" IS '配置引用';


--
-- Name: COLUMN "core_number_history"."CRNOH_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_STATUS" IS '状态';


--
-- Name: COLUMN "core_number_history"."CRNOH_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_number_history"."CRNOH_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_number_history"."CRNOH_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_number_history"."CRNOH_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_number_history"."CRNOH_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_ENTITY_UUID" IS '公文标识';


--
-- Name: COLUMN "core_number_history"."CRNOH_ENTITY_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_ENTITY_TITLE" IS '公文标题';


--
-- Name: COLUMN "core_number_history"."CRNOH_NUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_NUMBER" IS '数字编号';


--
-- Name: COLUMN "core_number_history"."CRNOH_FORMAT_NUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_FORMAT_NUMBER" IS '格式编号';


--
-- Name: COLUMN "core_number_history"."CRNOH_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_YEAR" IS '使用年份';


--
-- Name: COLUMN "core_number_history"."CRNOH_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_MONTH" IS '使用月份';


--
-- Name: core_number_history_CRNOH_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_number_history_CRNOH_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_number_history_CRNOH_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_number_history_CRNOH_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_number_history_CRNOH_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_number_history"."CRNOH_UNID";


--
-- Name: core_oauth_client; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_client" (
    "OATCT_UNID" INTEGER NOT NULL,
    "OATCT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "OATCT_CLTID" CHARACTER VARYING(40 char) NOT NULL,
    "OATCT_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "OATCT_SECRET" CHARACTER VARYING(64 char) NOT NULL,
    "OATCT_GRANT_TYPE" CHARACTER VARYING(128 char) NOT NULL,
    "OATCT_REDIRECT_URI" TEXT NOT NULL,
    "OATCT_SCOPES" CHARACTER VARYING(128 char),
    "OATCT_ORDER" INTEGER,
    "OATCT_STATUS" CHARACTER VARYING(8 char),
    "OATCT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "OATCT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "OATCT_REMARK" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_client" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_client"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_client" IS '授权客户端';


--
-- Name: COLUMN "core_oauth_client"."OATCT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_oauth_client"."OATCT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_UUID" IS 'UUID';


--
-- Name: COLUMN "core_oauth_client"."OATCT_CLTID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_CLTID" IS '客户端标识';


--
-- Name: COLUMN "core_oauth_client"."OATCT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_NAME" IS '客户端名称';


--
-- Name: COLUMN "core_oauth_client"."OATCT_SECRET"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_SECRET" IS '客户端密钥';


--
-- Name: COLUMN "core_oauth_client"."OATCT_GRANT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_GRANT_TYPE" IS '授权类型支持';


--
-- Name: COLUMN "core_oauth_client"."OATCT_REDIRECT_URI"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_REDIRECT_URI" IS '跳转地址';


--
-- Name: COLUMN "core_oauth_client"."OATCT_SCOPES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_SCOPES" IS '授权范围';


--
-- Name: COLUMN "core_oauth_client"."OATCT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_oauth_client"."OATCT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_STATUS" IS '状态';


--
-- Name: COLUMN "core_oauth_client"."OATCT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_oauth_client"."OATCT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_oauth_client"."OATCT_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_REMARK" IS '备注';


--
-- Name: core_oauth_client_OATCT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_client_OATCT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_client_OATCT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_client_OATCT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_client_OATCT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_client"."OATCT_UNID";


--
-- Name: core_oauth_credentials; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_credentials" (
    "CREDT_UNID" INTEGER NOT NULL,
    "CREDT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CREDT_OWNER_UUID" CHARACTER VARYING(48 char),
    "CREDT_OWNER_NAME" CHARACTER VARYING(64 char),
    "CREDT_CLIENT_UUID" CHARACTER VARYING(128 char) NOT NULL,
    "CREDT_CLIENT_NAME" CHARACTER VARYING(64 char),
    "CREDT_MODE" CHARACTER VARYING(64 char) NOT NULL,
    "CREDT_GRANT_SCOPES" CHARACTER VARYING(512 char),
    "CREDT_ACCESS_TOKEN" CHARACTER VARYING(32 char) NOT NULL,
    "CREDT_ACCESS_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CREDT_ACCESS_COUNT" INTEGER,
    "CREDT_TOKEN_TYPE" CHARACTER VARYING(8 char),
    "CREDT_STATUS" CHARACTER VARYING(8 char),
    "CREDT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CREDT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_credentials" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_credentials"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_credentials" IS '授权凭证';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_UUID" IS 'UUID';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_OWNER_UUID" IS '所有者标识';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_OWNER_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_OWNER_NAME" IS '所有者名称';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_CLIENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_CLIENT_UUID" IS '客户端标识';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_CLIENT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_CLIENT_NAME" IS '客户端名称';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_MODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_MODE" IS '授权模式';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_GRANT_SCOPES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_GRANT_SCOPES" IS '授权范围';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_ACCESS_TOKEN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_ACCESS_TOKEN" IS '访问令牌';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_ACCESS_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_ACCESS_TIME" IS '访问时间';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_ACCESS_COUNT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_ACCESS_COUNT" IS '访问次数';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_TOKEN_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_TOKEN_TYPE" IS '令牌类型';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_STATUS" IS '凭证状态';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_oauth_credentials"."CREDT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_UPDATE_TIME" IS '修改日期';


--
-- Name: core_oauth_credentials_CREDT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_credentials_CREDT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_credentials_CREDT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_credentials_CREDT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_credentials_CREDT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_credentials"."CREDT_UNID";


--
-- Name: core_oauth_endpoint; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_endpoint" (
    "OATEP_UNID" INTEGER NOT NULL,
    "OATEP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "OATEP_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "OATEP_VERTION" CHARACTER VARYING(8 char) NOT NULL,
    "OATEP_TARGET" CHARACTER VARYING(64 char) NOT NULL,
    "OATEP_METHOD" CHARACTER VARYING(64 char) NOT NULL,
    "OATEP_ARG_TYPE" CHARACTER VARYING(64 char) NOT NULL,
    "OATEP_RESULT_UI" CHARACTER VARYING(32 char),
    "OATEP_ORDER" INTEGER,
    "OATEP_STATUS" CHARACTER VARYING(8 char),
    "OATEP_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "OATEP_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "OATEP_REMARK" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_endpoint" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_endpoint"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_endpoint" IS '授权服务端点';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_UNID" IS 'UNID';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_UUID" IS 'UUID';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_CODE" IS '服务代码';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_VERTION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_VERTION" IS '服务版本';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_TARGET"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_TARGET" IS '服务对象';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_METHOD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_METHOD" IS '服务方法';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_ARG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_ARG_TYPE" IS '参数类型';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_RESULT_UI"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_RESULT_UI" IS '结果配置';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_ORDER" IS '排序号';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_STATUS" IS '状态';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_oauth_endpoint"."OATEP_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_REMARK" IS '备注';


--
-- Name: core_oauth_endpoint_OATEP_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_endpoint_OATEP_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_endpoint_OATEP_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_endpoint_OATEP_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_endpoint_OATEP_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_endpoint"."OATEP_UNID";


--
-- Name: core_oauth_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_log" (
    "OATLG_UNID" INTEGER NOT NULL,
    "OATLG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "OATLG_CRACT_UUID" CHARACTER VARYING(48 char),
    "OATLG_CRORG_UUID" CHARACTER VARYING(300 char),
    "OATLG_RECORD_UUID" TEXT,
    "OATLG_TYPE" CHARACTER VARYING(8 char),
    "OATLG_LEVEL" INTEGER,
    "OATLG_TABLE_NAME" CHARACTER VARYING(64 char),
    "OATLG_METHOD_SIGN" CHARACTER VARYING(128 char),
    "OATLG_DESC" TEXT,
    "OATLG_DETAIL" TEXT,
    "OATLG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "OATLG_YEAR" INTEGER,
    "OATLG_MONTH" INTEGER,
    "OATLG_DATE" INTEGER,
    "OATLG_HOURE" INTEGER,
    "OATLG_SPEND_TIME" INTEGER,
    "OATLG_IP" CHARACTER VARYING(64 char),
    "OATLG_CRACT_NAME" CHARACTER VARYING(48 char),
    "OATLG_MAC_ADDRESS" CHARACTER VARYING(48 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_log" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_log"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_log" IS '开放授权日志';


--
-- Name: COLUMN "core_oauth_log"."OATLG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_oauth_log"."OATLG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_oauth_log"."OATLG_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_CRACT_UUID" IS '操作用户UUID';


--
-- Name: COLUMN "core_oauth_log"."OATLG_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_CRORG_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_oauth_log"."OATLG_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_RECORD_UUID" IS '记录标识';


--
-- Name: COLUMN "core_oauth_log"."OATLG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_oauth_log"."OATLG_LEVEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_LEVEL" IS '日志级别';


--
-- Name: COLUMN "core_oauth_log"."OATLG_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_TABLE_NAME" IS '操作表名称';


--
-- Name: COLUMN "core_oauth_log"."OATLG_METHOD_SIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_METHOD_SIGN" IS '方法签名';


--
-- Name: COLUMN "core_oauth_log"."OATLG_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_DESC" IS '操作说明';


--
-- Name: COLUMN "core_oauth_log"."OATLG_DETAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_DETAIL" IS '详细参数';


--
-- Name: COLUMN "core_oauth_log"."OATLG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_CREATE_TIME" IS '操作日期时间';


--
-- Name: COLUMN "core_oauth_log"."OATLG_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_YEAR" IS '记录年份';


--
-- Name: COLUMN "core_oauth_log"."OATLG_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_MONTH" IS '记录月份';


--
-- Name: COLUMN "core_oauth_log"."OATLG_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_DATE" IS '记录日期';


--
-- Name: COLUMN "core_oauth_log"."OATLG_HOURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_HOURE" IS '记录小时';


--
-- Name: COLUMN "core_oauth_log"."OATLG_SPEND_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_SPEND_TIME" IS '消耗时间';


--
-- Name: COLUMN "core_oauth_log"."OATLG_IP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_IP" IS '操作IP';


--
-- Name: COLUMN "core_oauth_log"."OATLG_CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_CRACT_NAME" IS '操作者';


--
-- Name: COLUMN "core_oauth_log"."OATLG_MAC_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_MAC_ADDRESS" IS 'mac地址';


--
-- Name: core_oauth_log_OATLG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_log_OATLG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_log_OATLG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_log_OATLG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_log_OATLG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_log"."OATLG_UNID";


--
-- Name: core_oauth_resource; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_resource" (
    "RESRC_UNID" INTEGER NOT NULL,
    "RESRC_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "RESRC_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "RESRC_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "RESRC_TYPE" CHARACTER VARYING(64 char) NOT NULL,
    "RESRC_ORDER" INTEGER,
    "RESRC_STATUS" CHARACTER VARYING(8 char),
    "RESRC_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "RESRC_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "RESRC_REMARK" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_resource" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_resource"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_resource" IS '授权资源表';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_UNID" IS 'UNID';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_UUID" IS 'UUID';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_CODE" IS '资源代码';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_NAME" IS '资源名称';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_TYPE" IS '资源类型';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_ORDER" IS '排序号';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_STATUS" IS '状态';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_oauth_resource"."RESRC_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_REMARK" IS '备注';


--
-- Name: core_oauth_resource_RESRC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_resource_RESRC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_resource_RESRC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_resource_RESRC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_resource_RESRC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_resource"."RESRC_UNID";


--
-- Name: core_oauth_ticket; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_oauth_ticket" (
    "TCKT_UNID" INTEGER NOT NULL,
    "TCKT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "TCKT_CREDT_UUID" CHARACTER VARYING(48 char),
    "TCKT_CLIENT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "TCKT_OWNER_UUID" CHARACTER VARYING(48 char),
    "TCKT_GRANT_SCOPES" CHARACTER VARYING(512 char) NOT NULL,
    "TCKT_TICKET_VALUE" CHARACTER VARYING(32 char) NOT NULL,
    "TCKT_TYPE" CHARACTER VARYING(8 char),
    "TCKT_STATUS" CHARACTER VARYING(8 char),
    "TCKT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "TCKT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_ticket" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_oauth_ticket"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_oauth_ticket" IS '授权票据';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_UUID" IS 'UUID';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_CREDT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_CREDT_UUID" IS '身份标识';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_CLIENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_CLIENT_UUID" IS '客户端标识';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_OWNER_UUID" IS '所有者标识';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_GRANT_SCOPES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_GRANT_SCOPES" IS '授权范围';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_TICKET_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_TICKET_VALUE" IS '访问票据';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_TYPE" IS '票据类型';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_STATUS" IS '凭证状态';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_oauth_ticket"."TCKT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_UPDATE_TIME" IS '修改日期';


--
-- Name: core_oauth_ticket_TCKT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_ticket_TCKT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_oauth_ticket_TCKT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_oauth_ticket_TCKT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_oauth_ticket_TCKT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_oauth_ticket"."TCKT_UNID";


--
-- Name: core_operator_config; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_operator_config" (
    "CROFG_UNID" INTEGER NOT NULL,
    "CROFG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CROFG_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CROFG_PARENT_UUID" CHARACTER VARYING(48 char),
    "CROFG_OPERATOR_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CROFG_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "CROFG_PATH_CODE" CHARACTER VARYING(512 char),
    "CROFG_NAME" CHARACTER VARYING(128 char),
    "CROFG_VALUE" TEXT,
    "CROFG_STATUS" CHARACTER VARYING(8 char),
    "CROFG_TYPE" CHARACTER VARYING(8 char),
    "CROFG_INDEX" CHARACTER VARYING(512 char),
    "CROFG_ORDER" INTEGER,
    "CROFG_CREATOR" CHARACTER VARYING(32 char),
    "CROFG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CROFG_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CROFG_REMARKS" CHARACTER VARYING(256 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_operator_config" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_operator_config"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_operator_config" IS '个人业务配置';


--
-- Name: COLUMN "core_operator_config"."CROFG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_operator_config"."CROFG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_operator_config"."CROFG_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_operator_config"."CROFG_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_PARENT_UUID" IS '父标识UUID';


--
-- Name: COLUMN "core_operator_config"."CROFG_OPERATOR_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_OPERATOR_UUID" IS '账号标识';


--
-- Name: COLUMN "core_operator_config"."CROFG_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_CODE" IS '配置代码';


--
-- Name: COLUMN "core_operator_config"."CROFG_PATH_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_PATH_CODE" IS '路径代码';


--
-- Name: COLUMN "core_operator_config"."CROFG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_NAME" IS '配置名称';


--
-- Name: COLUMN "core_operator_config"."CROFG_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_VALUE" IS '配置值';


--
-- Name: COLUMN "core_operator_config"."CROFG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_STATUS" IS '配置状态';


--
-- Name: COLUMN "core_operator_config"."CROFG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_TYPE" IS '配置项类型';


--
-- Name: COLUMN "core_operator_config"."CROFG_INDEX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_INDEX" IS '关键字索引';


--
-- Name: COLUMN "core_operator_config"."CROFG_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_ORDER" IS '排序号';


--
-- Name: COLUMN "core_operator_config"."CROFG_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_operator_config"."CROFG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_operator_config"."CROFG_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_UPDATE_TIME" IS '更新日期';


--
-- Name: COLUMN "core_operator_config"."CROFG_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_REMARKS" IS '备注';


--
-- Name: core_operator_config_CROFG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_operator_config_CROFG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_operator_config_CROFG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_operator_config_CROFG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_operator_config_CROFG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_operator_config"."CROFG_UNID";


--
-- Name: core_org_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_org_grant" (
    "ORGGRT_UNID" INTEGER NOT NULL,
    "ORGGRT_ORG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "ORGGRT_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_org_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_org_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_org_grant" IS '组织授权表';


--
-- Name: COLUMN "core_org_grant"."ORGGRT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_grant"."ORGGRT_UNID" IS '唯一标识';


--
-- Name: COLUMN "core_org_grant"."ORGGRT_ORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_grant"."ORGGRT_ORG_UUID" IS '组织标识UUID';


--
-- Name: COLUMN "core_org_grant"."ORGGRT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_grant"."ORGGRT_OWNER_UUID" IS '所有者标识UUID,可能是角色UUID也可能是用户或部门UUID';


--
-- Name: core_org_grant_ORGGRT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_org_grant_ORGGRT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_org_grant_ORGGRT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_org_grant_ORGGRT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_org_grant_ORGGRT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_org_grant"."ORGGRT_UNID";


--
-- Name: core_org_tree; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_org_tree" (
    "CROAT_UNID" INTEGER NOT NULL,
    "CROAT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CROAT_PARENT_UUID" CHARACTER VARYING(48 char),
    "CROAT_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CROAT_REF_UUID" CHARACTER VARYING(48 char),
    "CROAT_REF_PARENT_UUID" CHARACTER VARYING(48 char),
    "CROAT_TITLE" CHARACTER VARYING(64 char),
    "CROAT_TYPE" CHARACTER VARYING(2 char),
    "CROAT_REF_TYPE" CHARACTER VARYING(2 char),
    "CROAT_RLT_TYPE" CHARACTER VARYING(2 char),
    "CROAT_INDEX" CHARACTER VARYING(512 char),
    "CROAT_ORDER" INTEGER,
    "CROAT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CROAT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CROAT_CREATOR" CHARACTER VARYING(48 char),
    "CROAT_STATUS" CHARACTER VARYING(2 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_org_tree" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_org_tree"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_org_tree" IS '组织关系树';


--
-- Name: COLUMN "core_org_tree"."CROAT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_org_tree"."CROAT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_org_tree"."CROAT_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_PARENT_UUID" IS '父结点PID';


--
-- Name: COLUMN "core_org_tree"."CROAT_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_org_tree"."CROAT_REF_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_REF_UUID" IS '引用标识';


--
-- Name: COLUMN "core_org_tree"."CROAT_REF_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_REF_PARENT_UUID" IS '引用父标识';


--
-- Name: COLUMN "core_org_tree"."CROAT_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_TITLE" IS '节点标题';


--
-- Name: COLUMN "core_org_tree"."CROAT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_TYPE" IS '节点类型';


--
-- Name: COLUMN "core_org_tree"."CROAT_REF_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_REF_TYPE" IS '引用类型';


--
-- Name: COLUMN "core_org_tree"."CROAT_RLT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_RLT_TYPE" IS '关联类型';


--
-- Name: COLUMN "core_org_tree"."CROAT_INDEX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_INDEX" IS '节点索引';


--
-- Name: COLUMN "core_org_tree"."CROAT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_org_tree"."CROAT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_org_tree"."CROAT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_org_tree"."CROAT_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_org_tree"."CROAT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_STATUS" IS '状态';


--
-- Name: core_org_tree_CROAT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_org_tree_CROAT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_org_tree_CROAT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_org_tree_CROAT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_org_tree_CROAT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_org_tree"."CROAT_UNID";


--
-- Name: core_organization; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_organization" (
    "CRORG_UNID" INTEGER NOT NULL,
    "CRORG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRORG_LEVEL_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "CRORG_NUMBER" CHARACTER VARYING(32 char),
    "CRORG_PARENT_UUID" CHARACTER VARYING(48 char),
    "CRORG_NAME" CHARACTER VARYING(64 char),
    "CRORG_FULL_NAME" CHARACTER VARYING(128 char),
    "CRORG_ADDRESS" CHARACTER VARYING(128 char),
    "CRORG_PHONE" CHARACTER VARYING(64 char),
    "CRORG_TYPE" CHARACTER VARYING(2 char),
    "CRORG_STATUS" CHARACTER VARYING(2 char),
    "CRORG_ORDER" INTEGER,
    "CRORG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRORG_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CRORG_CREATOR" CHARACTER VARYING(48 char),
    "CRORG_PINYIN" CHARACTER VARYING(32 char),
    "CRORG_OUTER_UUID" CHARACTER VARYING(48 char),
    "CRORG_NKC" CHARACTER VARYING(32 char),
    "CRORG_GRP_OWNERS" CHARACTER VARYING(128 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_organization" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_organization"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_organization" IS '组织信息';


--
-- Name: COLUMN "core_organization"."CRORG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_organization"."CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_organization"."CRORG_LEVEL_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_LEVEL_CODE" IS '层级编码';


--
-- Name: COLUMN "core_organization"."CRORG_NUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_NUMBER" IS '机构编号';


--
-- Name: COLUMN "core_organization"."CRORG_PARENT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_PARENT_UUID" IS '父结点PID';


--
-- Name: COLUMN "core_organization"."CRORG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_NAME" IS '机构简称';


--
-- Name: COLUMN "core_organization"."CRORG_FULL_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_FULL_NAME" IS '机构全称';


--
-- Name: COLUMN "core_organization"."CRORG_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_ADDRESS" IS '机构地址';


--
-- Name: COLUMN "core_organization"."CRORG_PHONE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_PHONE" IS '机构电话';


--
-- Name: COLUMN "core_organization"."CRORG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_TYPE" IS '组织类型';


--
-- Name: COLUMN "core_organization"."CRORG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_STATUS" IS '状态';


--
-- Name: COLUMN "core_organization"."CRORG_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_ORDER" IS '排序号';


--
-- Name: COLUMN "core_organization"."CRORG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_organization"."CRORG_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_organization"."CRORG_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_organization"."CRORG_PINYIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_PINYIN" IS '拼音简写';


--
-- Name: COLUMN "core_organization"."CRORG_OUTER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_OUTER_UUID" IS '外部标识';


--
-- Name: COLUMN "core_organization"."CRORG_NKC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_NKC" IS '9键代码';


--
-- Name: COLUMN "core_organization"."CRORG_GRP_OWNERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_organization"."CRORG_GRP_OWNERS" IS '所属群组';


--
-- Name: core_organization_CRORG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_organization_CRORG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_organization_CRORG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_organization_CRORG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_organization_CRORG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_organization"."CRORG_UNID";


--
-- Name: core_owner_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_owner_grant" (
    "CROGT_CRACT_UUID" CHARACTER VARYING(36 char) NOT NULL,
    "CROGT_OWNER_UUID" CHARACTER VARYING(36 char) NOT NULL,
    "CROGT_RLT_TYPE" CHARACTER VARYING(2 char) NOT NULL,
    "CROGT_OWNER_TYPE" CHARACTER VARYING(2 char) NOT NULL,
    "CROGT_OWNER_TEXT" CHARACTER VARYING(128 char) NOT NULL,
    "CROGT_ORD" INTEGER NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_owner_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_owner_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_owner_grant" IS '广义授权表';


--
-- Name: COLUMN "core_owner_grant"."CROGT_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_CRACT_UUID" IS '账户标识';


--
-- Name: COLUMN "core_owner_grant"."CROGT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_OWNER_UUID" IS '广义所有者标识';


--
-- Name: COLUMN "core_owner_grant"."CROGT_RLT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_RLT_TYPE" IS '关联类型';


--
-- Name: COLUMN "core_owner_grant"."CROGT_OWNER_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_OWNER_TYPE" IS '所有者类型';


--
-- Name: COLUMN "core_owner_grant"."CROGT_OWNER_TEXT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_OWNER_TEXT" IS '所有者文本';


--
-- Name: COLUMN "core_owner_grant"."CROGT_ORD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_owner_grant"."CROGT_ORD" IS '排序号';


--
-- Name: core_pubext_fields; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_pubext_fields" (
    "CREXT_ENTITY_UUID" CHARACTER VARYING(36 char) NOT NULL,
    "CREXT_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CREXT_VALUE" TEXT,
    "CREXT_VALUE_EXT1" TEXT,
    "CREXT_VALUE_EXT2" TEXT,
    "CREXT_VALUE_EXT3" TEXT,
    "CREXT_VALUE_EXT4" TEXT,
    "CREXT_VALUE_EXT5" TEXT,
    "CREXT_VALUE_EXT6" TEXT,
    "CREXT_VALUE_EXT7" TEXT,
    "CREXT_VALUE_EXT8" TEXT,
    "CREXT_VALUE_EXT9" TEXT,
    "CREXT_VALUE_EXT10" TEXT
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_pubext_fields" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_pubext_fields"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_pubext_fields" IS '公共扩展字段';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_ENTITY_UUID" IS '实体标识';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_NAME" IS '字段名称';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE" IS '字段取值';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT1" IS '取值扩展1';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT2" IS '取值扩展2';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT3" IS '取值扩展3';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT4" IS '取值扩展4';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT5" IS '取值扩展5';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT6"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT6" IS '取值扩展6';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT7"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT7" IS '取值扩展7';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT8"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT8" IS '取值扩展8';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT9"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT9" IS '取值扩展9';


--
-- Name: COLUMN "core_pubext_fields"."CREXT_VALUE_EXT10"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_pubext_fields"."CREXT_VALUE_EXT10" IS '取值扩展10';


--
-- Name: core_resrc_file; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_resrc_file" (
    "CRFILE_UNID" INTEGER NOT NULL,
    "CRFILE_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CRFILE_EMIX_UUID" CHARACTER VARYING(48 char),
    "CRFILE_UPLOADER" CHARACTER VARYING(48 char),
    "CRFILE_DEPT_UUID" CHARACTER VARYING(48 char),
    "CRFILE_CONTENT_TYPE" CHARACTER VARYING(128 char),
    "CRFILE_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "CRFILE_ORIGINAL_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "CRFILE_SERVER_PATH" CHARACTER VARYING(256 char) NOT NULL,
    "CRFILE_EXTENTION" CHARACTER VARYING(8 char),
    "CRFILE_SIZE" INTEGER NOT NULL,
    "CRFILE_TYPE" CHARACTER VARYING(64 char),
    "CRFILE_STATUS" CHARACTER VARYING(2 char),
    "CRFILE_ORDER" INTEGER,
    "CRFILE_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRFILE_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_resrc_file" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_resrc_file"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_resrc_file" IS '平台附件表';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_EMIX_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_EMIX_UUID" IS '业务实体';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_UPLOADER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_UPLOADER" IS '操作用户UUID';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_DEPT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_DEPT_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_CONTENT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_CONTENT_TYPE" IS '内容类型';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_NAME" IS '文件名称';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_ORIGINAL_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_ORIGINAL_NAME" IS '原始名称';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_SERVER_PATH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_SERVER_PATH" IS '服务器路径';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_EXTENTION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_EXTENTION" IS '文件扩展名';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_SIZE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_SIZE" IS '附件大小';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_TYPE" IS '附件类型';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_STATUS" IS '状态标记';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_ORDER" IS '排序号';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_resrc_file"."CRFILE_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_UPDATE_TIME" IS '修改日期';


--
-- Name: core_resrc_file_CRFILE_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_resrc_file_CRFILE_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_resrc_file_CRFILE_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_resrc_file_CRFILE_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_resrc_file_CRFILE_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_resrc_file"."CRFILE_UNID";


--
-- Name: core_session_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_session_log" (
    "SESSLG_UNID" INTEGER NOT NULL,
    "SESSLG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "SESSLG_CRACT_UUID" CHARACTER VARYING(48 char),
    "SESSLG_CRORG_UUID" CHARACTER VARYING(300 char),
    "SESSLG_RECORD_UUID" TEXT,
    "SESSLG_TYPE" CHARACTER VARYING(8 char),
    "SESSLG_LEVEL" INTEGER,
    "SESSLG_TABLE_NAME" CHARACTER VARYING(64 char),
    "SESSLG_MODULAR" CHARACTER VARYING(128 char),
    "SESSLG_METHOD_SIGN" CHARACTER VARYING(128 char),
    "SESSLG_DESC" TEXT,
    "SESSLG_DETAIL" TEXT,
    "SESSLG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "SESSLG_YEAR" INTEGER,
    "SESSLG_MONTH" INTEGER,
    "SESSLG_DATE" INTEGER,
    "SESSLG_HOURE" INTEGER,
    "SESSLG_SPEND_TIME" INTEGER,
    "SESSLG_IP" CHARACTER VARYING(64 char),
    "SESSLG_CRACT_NAME" CHARACTER VARYING(48 char),
    "SESSLG_MAC_ADDRESS" CHARACTER VARYING(48 char),
    "SESSLG_SID" CHARACTER VARYING(32 char),
    "SESSLG_ONLINE_TIME" INTEGER,
    "SESSLG_USER_AGENT" CHARACTER VARYING(512 char),
    "SESSLG_CLIENTOS" CHARACTER VARYING(128 char),
    "SESSLG_CLIENT_PRODUCT" CHARACTER VARYING(64 char),
    "SESSLG_CLIENT_VERSION" CHARACTER VARYING(64 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_session_log" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_session_log"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_session_log" IS '系统会话日志';


--
-- Name: COLUMN "core_session_log"."SESSLG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_session_log"."SESSLG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_session_log"."SESSLG_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CRACT_UUID" IS '操作用户UUID';


--
-- Name: COLUMN "core_session_log"."SESSLG_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CRORG_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_session_log"."SESSLG_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_RECORD_UUID" IS '记录标识';


--
-- Name: COLUMN "core_session_log"."SESSLG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_session_log"."SESSLG_LEVEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_LEVEL" IS '日志级别';


--
-- Name: COLUMN "core_session_log"."SESSLG_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_TABLE_NAME" IS '操作表名称';


--
-- Name: COLUMN "core_session_log"."SESSLG_MODULAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_MODULAR" IS '业务模块';


--
-- Name: COLUMN "core_session_log"."SESSLG_METHOD_SIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_METHOD_SIGN" IS '方法签名';


--
-- Name: COLUMN "core_session_log"."SESSLG_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_DESC" IS '操作说明';


--
-- Name: COLUMN "core_session_log"."SESSLG_DETAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_DETAIL" IS '详细参数';


--
-- Name: COLUMN "core_session_log"."SESSLG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CREATE_TIME" IS '操作日期时间';


--
-- Name: COLUMN "core_session_log"."SESSLG_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_YEAR" IS '记录年份';


--
-- Name: COLUMN "core_session_log"."SESSLG_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_MONTH" IS '记录月份';


--
-- Name: COLUMN "core_session_log"."SESSLG_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_DATE" IS '记录日期';


--
-- Name: COLUMN "core_session_log"."SESSLG_HOURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_HOURE" IS '记录小时';


--
-- Name: COLUMN "core_session_log"."SESSLG_SPEND_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_SPEND_TIME" IS '消耗时间';


--
-- Name: COLUMN "core_session_log"."SESSLG_IP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_IP" IS '操作IP';


--
-- Name: COLUMN "core_session_log"."SESSLG_CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CRACT_NAME" IS '操作者';


--
-- Name: COLUMN "core_session_log"."SESSLG_MAC_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_MAC_ADDRESS" IS 'mac地址';


--
-- Name: COLUMN "core_session_log"."SESSLG_SID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_SID" IS '会话标识';


--
-- Name: COLUMN "core_session_log"."SESSLG_ONLINE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_ONLINE_TIME" IS '在线时长';


--
-- Name: COLUMN "core_session_log"."SESSLG_USER_AGENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_USER_AGENT" IS '客户端AGENT';


--
-- Name: COLUMN "core_session_log"."SESSLG_CLIENTOS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CLIENTOS" IS '操作系统';


--
-- Name: COLUMN "core_session_log"."SESSLG_CLIENT_PRODUCT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CLIENT_PRODUCT" IS '客户端产品';


--
-- Name: COLUMN "core_session_log"."SESSLG_CLIENT_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_CLIENT_VERSION" IS '客户端版本';


--
-- Name: core_session_log_SESSLG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_session_log_SESSLG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_session_log_SESSLG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_session_log_SESSLG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_session_log_SESSLG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_session_log"."SESSLG_UNID";


--
-- Name: core_setday; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_setday" (
    "COSD_UNID" BIGINT NOT NULL,
    "COSD_UUID" CHARACTER VARYING(32 char),
    "COSD_NAME" CHARACTER VARYING(128 char),
    "COSD_STATUS" CHARACTER VARYING(8 char),
    "COSD_CREATOR" CHARACTER VARYING(48 char),
    "COSD_UPDATER" CHARACTER VARYING(48 char),
    "COSD_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "COSD_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "COSD_ORDER" INTEGER,
    "COSD_VERSION" INTEGER,
    "COSD_AM_BEGIN" CHARACTER VARYING(10 char),
    "COSD_AM_END" CHARACTER VARYING(10 char),
    "COSD_PM_BEGIN" CHARACTER VARYING(10 char),
    "COSD_PM_END" CHARACTER VARYING(10 char),
    "COSD_NIGHT_BEGIN" CHARACTER VARYING(10 char),
    "COSD_NIGHT_END" CHARACTER VARYING(10 char),
    "COSD_ST_FLAG" INTEGER,
    "COSD_TYPE" INTEGER,
    "COSD_YEAR" INTEGER,
    "COSD_MONTHS" INTEGER,
    "COSD_DAY" INTEGER,
    "COSD_DATE" CHARACTER VARYING(10 char),
    "COSD_WEEKDAY" CHARACTER VARYING(16 char),
    "COSD_WEEKNUMS" INTEGER,
    "COSD_WORKHOURS" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_setday" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_setday"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_setday" IS '每一天都时间表';


--
-- Name: COLUMN "core_setday"."COSD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_UNID" IS 'unid';


--
-- Name: COLUMN "core_setday"."COSD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_UUID" IS 'uuid';


--
-- Name: COLUMN "core_setday"."COSD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_NAME" IS '名称';


--
-- Name: COLUMN "core_setday"."COSD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_STATUS" IS '状态';


--
-- Name: COLUMN "core_setday"."COSD_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_setday"."COSD_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_setday"."COSD_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_setday"."COSD_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_setday"."COSD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_ORDER" IS '排序号';


--
-- Name: COLUMN "core_setday"."COSD_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_VERSION" IS '版本号';


--
-- Name: COLUMN "core_setday"."COSD_AM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_AM_BEGIN" IS '上午上班时间：08:30';


--
-- Name: COLUMN "core_setday"."COSD_AM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_AM_END" IS '上午下班时间：12:00';


--
-- Name: COLUMN "core_setday"."COSD_PM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_PM_BEGIN" IS '下午上班时间：13:30';


--
-- Name: COLUMN "core_setday"."COSD_PM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_PM_END" IS '下午下班时间：17:30';


--
-- Name: COLUMN "core_setday"."COSD_NIGHT_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_NIGHT_BEGIN" IS '晚班开始时间';


--
-- Name: COLUMN "core_setday"."COSD_NIGHT_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_NIGHT_END" IS '晚班结束时间';


--
-- Name: COLUMN "core_setday"."COSD_ST_FLAG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_ST_FLAG" IS '当月时间是否设置过 1：设置过 -1： 未设置过';


--
-- Name: COLUMN "core_setday"."COSD_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_TYPE" IS '10：工作日；11：正常休息日；';


--
-- Name: COLUMN "core_setday"."COSD_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_YEAR" IS '年份';


--
-- Name: COLUMN "core_setday"."COSD_MONTHS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_MONTHS" IS '月份';


--
-- Name: COLUMN "core_setday"."COSD_DAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_DAY" IS '天';


--
-- Name: COLUMN "core_setday"."COSD_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_DATE" IS '时间 ：2018-11-14';


--
-- Name: COLUMN "core_setday"."COSD_WEEKDAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_WEEKDAY" IS '星期：星期三';


--
-- Name: COLUMN "core_setday"."COSD_WEEKNUMS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_WEEKNUMS" IS '周数（年）';


--
-- Name: COLUMN "core_setday"."COSD_WORKHOURS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday"."COSD_WORKHOURS" IS '工时（具体到分钟，忽略秒）';


--
-- Name: core_setday_COSD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_setday_COSD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_setday_COSD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_setday_COSD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_setday_COSD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_setday"."COSD_UNID";


--
-- Name: core_setday_strategy; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_setday_strategy" (
    "COSDS_UNID" INTEGER NOT NULL,
    "COSDS_UUID" CHARACTER VARYING(32 char),
    "COSDS_NAME" CHARACTER VARYING(128 char),
    "COSDS_STATUS" CHARACTER VARYING(8 char),
    "COSDS_CREATOR" CHARACTER VARYING(48 char),
    "COSDS_UPDATER" CHARACTER VARYING(48 char),
    "COSDS_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "COSDS_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "COSDS_ORDER" INTEGER,
    "COSDS_VERSION" INTEGER,
    "COSDS_YEAR" INTEGER,
    "COSDS_MONTH_BEING" INTEGER,
    "COSDS_MONTH_END" INTEGER,
    "COSDS_OFFDAY" CHARACTER VARYING(64 char),
    "COSDS_HOLIDAY" CHARACTER VARYING(64 char),
    "COSDS_SHIFT" CHARACTER VARYING(64 char),
    "COSDS_AM_BEGIN" CHARACTER VARYING(16 char),
    "COSDS_AM_END" CHARACTER VARYING(16 char),
    "COSDS_PM_BEGIN" CHARACTER VARYING(16 char),
    "COSDS_PM_END" CHARACTER VARYING(16 char),
    "COSDS_NIGHT_BEING" CHARACTER VARYING(16 char),
    "COSDS_NIGHT_END" CHARACTER VARYING(16 char),
    "COSDS_TYPE" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_setday_strategy" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_setday_strategy"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_setday_strategy" IS 'CORE_SETDAY_STRATEGY';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_UNID" IS 'COSDS_UNID';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_UUID" IS 'COSDS_UUID';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_NAME" IS 'COSDS_NAME';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_STATUS" IS 'COSDS_STATUS';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_CREATOR" IS 'COSDS_CREATOR';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_UPDATER" IS 'COSDS_UPDATER';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_CREATE_TIME" IS 'COSDS_CREATE_TIME';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_UPDATE_TIME" IS 'COSDS_UPDATE_TIME';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_ORDER" IS 'COSDS_ORDER';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_VERSION" IS 'COSDS_VERSION';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_YEAR" IS '所属年';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_MONTH_BEING"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_MONTH_BEING" IS '月段开始';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_MONTH_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_MONTH_END" IS '月段结束';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_OFFDAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_OFFDAY" IS '休息日';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_HOLIDAY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_HOLIDAY" IS '节假日';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_SHIFT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_SHIFT" IS '调休';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_AM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_AM_BEGIN" IS '工作时间 am';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_AM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_AM_END" IS '工作时间 am';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_PM_BEGIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_PM_BEGIN" IS '工作时间 pm';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_PM_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_PM_END" IS '工作时间 pm';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_NIGHT_BEING"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_NIGHT_BEING" IS '工作时间 nm';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_NIGHT_END"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_NIGHT_END" IS '工作时间 nm';


--
-- Name: COLUMN "core_setday_strategy"."COSDS_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_TYPE" IS '1: DEFAULT; 2: SETTING';


--
-- Name: core_setday_strategy_COSDS_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_setday_strategy_COSDS_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_setday_strategy_COSDS_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_setday_strategy_COSDS_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_setday_strategy_COSDS_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_setday_strategy"."COSDS_UNID";


--
-- Name: core_uams_account_mapping; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_account_mapping" (
    "ACTMAP_UNID" INTEGER NOT NULL,
    "ACTMAP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "ACTMAP_ACT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "ACTMAP_ACT_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "ACTMAP_APP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "ACTMAP_APP_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "ACTMAP_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "ACTMAP_PWD" TEXT NOT NULL,
    "ACTMAP_ORDER" INTEGER,
    "ACTMAP_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "ACTMAP_UPDATER" CHARACTER VARYING(48 char) NOT NULL,
    "ACTMAP_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "ACTMAP_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_account_mapping" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_account_mapping"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_account_mapping" IS '系统帐号映射';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_UUID" IS 'UUID';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_ACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_ACT_UUID" IS '本地帐号';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_ACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_ACT_NAME" IS '本地账户名称';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_APP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_APP_UUID" IS '系统标识';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_APP_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_APP_NAME" IS '系统名称';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_CODE" IS '帐号名称';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_PWD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_PWD" IS '帐号密码';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_ORDER" IS '排序号';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_STATUS" IS '状态';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_UPDATER" IS '最后更新人';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_uams_account_mapping"."ACTMAP_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_UPDATE_TIME" IS '更新时间';


--
-- Name: core_uams_account_mapping_ACTMAP_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_account_mapping_ACTMAP_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_account_mapping_ACTMAP_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_account_mapping_ACTMAP_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_account_mapping_ACTMAP_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_account_mapping"."ACTMAP_UNID";


--
-- Name: core_uams_action_history; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_action_history" (
    "CUAHTR_UNID" INTEGER NOT NULL,
    "CUAHTR_RANGE_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUAHTR_DATA_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUAHTR_DATA_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "CUAHTR_DATA_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "CUAHTR_ACTION_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "CUAHTR_DATA_UPDATE" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_action_history" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_action_history"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_action_history" IS '操作历史';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_RANGE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_RANGE_UUID" IS '范围标识';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_DATA_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_DATA_UUID" IS '数据标识';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_DATA_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_DATA_TYPE" IS '数据类型';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_DATA_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_DATA_NAME" IS '中文名称';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_ACTION_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_ACTION_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_uams_action_history"."CUAHTR_DATA_UPDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_DATA_UPDATE" IS '数据更新时间';


--
-- Name: core_uams_action_history_CUAHTR_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_action_history_CUAHTR_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_action_history_CUAHTR_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_action_history_CUAHTR_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_action_history_CUAHTR_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_action_history"."CUAHTR_UNID";


--
-- Name: core_uams_app; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_app" (
    "CUAPP_UNID" INTEGER NOT NULL,
    "CUAPP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUAPP_NAME" CHARACTER VARYING(64 char),
    "CUAPP_TITLE" CHARACTER VARYING(256 char),
    "CUAPP_ENTRY_URL" CHARACTER VARYING(256 char),
    "CUAPP_ICON_CLASS" CHARACTER VARYING(256 char),
    "CUAPP_ICON_URL" CHARACTER VARYING(32 char),
    "CUAPP_REMARK" CHARACTER VARYING(128 char),
    "CUAPP_STATUS" CHARACTER VARYING(8 char),
    "CUAPP_ORDER" INTEGER,
    "CUAPP_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CUAPP_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "CUAPP_APP_TYPE" CHARACTER VARYING(64 char),
    "CUAPP_CRORG_UUID" CHARACTER VARYING(64 char),
    "CUAPP_CRACT_UUID" CHARACTER VARYING(64 char),
    "CUAPP_CONTACT" CHARACTER VARYING(64 char),
    "CUAPP_APP_FRAME" CHARACTER VARYING(64 char),
    "CUAPP_AUTH_URL" CHARACTER VARYING(256 char),
    "CUAPP_WRITE_URL" CHARACTER VARYING(256 char),
    "CUAPP_AUTH_TYPE" CHARACTER VARYING(64 char),
    "CUAPP_CALLBACK_TYPE" CHARACTER VARYING(64 char),
    "CUAPP_CODE_NAME" CHARACTER VARYING(64 char),
    "CUAPP_PWD_NAME" CHARACTER VARYING(64 char),
    "CUAPP_CODE_ENCRYP" CHARACTER VARYING(64 char),
    "CUAPP_PWD_ENCRYP" CHARACTER VARYING(64 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_app"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_app" IS '外部业务系统';


--
-- Name: COLUMN "core_uams_app"."CUAPP_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_app"."CUAPP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_UUID" IS 'UUID';


--
-- Name: COLUMN "core_uams_app"."CUAPP_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_NAME" IS '系统名称';


--
-- Name: COLUMN "core_uams_app"."CUAPP_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_TITLE" IS '标题';


--
-- Name: COLUMN "core_uams_app"."CUAPP_ENTRY_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_ENTRY_URL" IS '入口地址';


--
-- Name: COLUMN "core_uams_app"."CUAPP_ICON_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_ICON_CLASS" IS '图标类';


--
-- Name: COLUMN "core_uams_app"."CUAPP_ICON_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_ICON_URL" IS '图标文件';


--
-- Name: COLUMN "core_uams_app"."CUAPP_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_REMARK" IS '备注';


--
-- Name: COLUMN "core_uams_app"."CUAPP_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_STATUS" IS '状态';


--
-- Name: COLUMN "core_uams_app"."CUAPP_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_ORDER" IS '排序号';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_uams_app"."CUAPP_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_uams_app"."CUAPP_APP_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_APP_TYPE" IS '应用类型';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CRORG_UUID" IS '所属单位';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CRACT_UUID" IS '负责人';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CONTACT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CONTACT" IS '联系方式';


--
-- Name: COLUMN "core_uams_app"."CUAPP_APP_FRAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_APP_FRAME" IS '系统架构';


--
-- Name: COLUMN "core_uams_app"."CUAPP_AUTH_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_AUTH_URL" IS '身份验证地址';


--
-- Name: COLUMN "core_uams_app"."CUAPP_WRITE_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_WRITE_URL" IS '会话写入地址';


--
-- Name: COLUMN "core_uams_app"."CUAPP_AUTH_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_AUTH_TYPE" IS '身份验证方式';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CALLBACK_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CALLBACK_TYPE" IS '验证回调方式';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CODE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CODE_NAME" IS '身份帐号名称';


--
-- Name: COLUMN "core_uams_app"."CUAPP_PWD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_PWD_NAME" IS '身份密码名称';


--
-- Name: COLUMN "core_uams_app"."CUAPP_CODE_ENCRYP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_CODE_ENCRYP" IS '帐号加密方式';


--
-- Name: COLUMN "core_uams_app"."CUAPP_PWD_ENCRYP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_PWD_ENCRYP" IS '密码加密方式';


--
-- Name: core_uams_app_CUAPP_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_CUAPP_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app_CUAPP_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_app_CUAPP_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_CUAPP_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_app"."CUAPP_UNID";


--
-- Name: core_uams_app_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_app_grant" (
    "CUAGT_UNID" INTEGER NOT NULL,
    "CUAGT_APP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUAGT_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_app_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_app_grant" IS '应用授权表';


--
-- Name: COLUMN "core_uams_app_grant"."CUAGT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_grant"."CUAGT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_app_grant"."CUAGT_APP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_grant"."CUAGT_APP_UUID" IS '业务系统标识';


--
-- Name: COLUMN "core_uams_app_grant"."CUAGT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_grant"."CUAGT_OWNER_UUID" IS '所有者标识';


--
-- Name: core_uams_app_grant_CUAGT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_grant_CUAGT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app_grant_CUAGT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_app_grant_CUAGT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_grant_CUAGT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_app_grant"."CUAGT_UNID";


--
-- Name: core_uams_app_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_app_log" (
    "APPLG_UNID" INTEGER NOT NULL,
    "APPLG_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "APPLG_CRACT_UUID" CHARACTER VARYING(48 char),
    "APPLG_CRORG_UUID" CHARACTER VARYING(300 char),
    "APPLG_RECORD_UUID" TEXT,
    "APPLG_TYPE" CHARACTER VARYING(8 char),
    "APPLG_LEVEL" INTEGER,
    "APPLG_TABLE_NAME" CHARACTER VARYING(64 char),
    "APPLG_METHOD_SIGN" CHARACTER VARYING(128 char),
    "APPLG_DESC" TEXT,
    "APPLG_DETAIL" TEXT,
    "APPLG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "APPLG_YEAR" INTEGER,
    "APPLG_MONTH" INTEGER,
    "APPLG_DATE" INTEGER,
    "APPLG_HOURE" INTEGER,
    "APPLG_SPEND_TIME" INTEGER,
    "APPLG_IP" CHARACTER VARYING(64 char),
    "APPLG_CRACT_NAME" CHARACTER VARYING(48 char),
    "APPLG_MAC_ADDRESS" CHARACTER VARYING(48 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app_log" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_app_log"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_app_log" IS '业务系统访问日志';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_CRACT_UUID" IS '操作用户UUID';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_CRORG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_CRORG_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_RECORD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_RECORD_UUID" IS '记录标识';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_TYPE" IS '操作类型';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_LEVEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_LEVEL" IS '日志级别';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_TABLE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_TABLE_NAME" IS '操作表名称';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_METHOD_SIGN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_METHOD_SIGN" IS '方法签名';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_DESC" IS '操作说明';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_DETAIL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_DETAIL" IS '详细参数';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_CREATE_TIME" IS '操作日期时间';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_YEAR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_YEAR" IS '记录年份';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_MONTH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_MONTH" IS '记录月份';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_DATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_DATE" IS '记录日期';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_HOURE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_HOURE" IS '记录小时';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_SPEND_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_SPEND_TIME" IS '消耗时间';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_IP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_IP" IS '操作IP';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_CRACT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_CRACT_NAME" IS '操作者';


--
-- Name: COLUMN "core_uams_app_log"."APPLG_MAC_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_MAC_ADDRESS" IS 'mac地址';


--
-- Name: core_uams_app_log_APPLG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_log_APPLG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_app_log_APPLG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_app_log_APPLG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_app_log_APPLG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_app_log"."APPLG_UNID";


--
-- Name: core_uams_home; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_home" (
    "CRUHM_UNID" INTEGER NOT NULL,
    "CRUHM_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "CRUHM_CODE_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "CRUHM_TITLE" CHARACTER VARYING(128 char) NOT NULL,
    "CRUHM_ENTRY_URL" CHARACTER VARYING(256 char),
    "CRUHM_ICON_CLASS" CHARACTER VARYING(256 char),
    "CRUHM_ICON_URL" CHARACTER VARYING(32 char),
    "CRUHM_REMARK" CHARACTER VARYING(128 char),
    "CRUHM_STATUS" CHARACTER VARYING(8 char),
    "CRUHM_ORDER" INTEGER,
    "CRUHM_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CRUHM_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_home" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_home"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_home" IS '场景门户';


--
-- Name: COLUMN "core_uams_home"."CRUHM_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_uams_home"."CRUHM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_uams_home"."CRUHM_CODE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_CODE_NAME" IS '代码名称';


--
-- Name: COLUMN "core_uams_home"."CRUHM_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_TITLE" IS '门户标题';


--
-- Name: COLUMN "core_uams_home"."CRUHM_ENTRY_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_ENTRY_URL" IS '入口地址';


--
-- Name: COLUMN "core_uams_home"."CRUHM_ICON_CLASS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_ICON_CLASS" IS '图标类';


--
-- Name: COLUMN "core_uams_home"."CRUHM_ICON_URL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_ICON_URL" IS '图标文件';


--
-- Name: COLUMN "core_uams_home"."CRUHM_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_REMARK" IS '备注';


--
-- Name: COLUMN "core_uams_home"."CRUHM_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_STATUS" IS '状态';


--
-- Name: COLUMN "core_uams_home"."CRUHM_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_ORDER" IS '排序号';


--
-- Name: COLUMN "core_uams_home"."CRUHM_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_uams_home"."CRUHM_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_UPDATE_TIME" IS '更新时间';


--
-- Name: core_uams_home_CRUHM_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_home_CRUHM_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_home_CRUHM_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_home_CRUHM_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_home_CRUHM_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_home"."CRUHM_UNID";


--
-- Name: core_uams_home_app; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_home_app" (
    "HMAPP_UNID" INTEGER NOT NULL,
    "HMAPP_HOME_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "HMAPP_APP_UUID" CHARACTER VARYING(48 char) NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_home_app" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_home_app"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_home_app" IS '门户系统关系';


--
-- Name: COLUMN "core_uams_home_app"."HMAPP_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home_app"."HMAPP_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_home_app"."HMAPP_HOME_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home_app"."HMAPP_HOME_UUID" IS '场景门户标识';


--
-- Name: COLUMN "core_uams_home_app"."HMAPP_APP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_home_app"."HMAPP_APP_UUID" IS '业务系统标识';


--
-- Name: core_uams_home_app_HMAPP_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_home_app_HMAPP_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_home_app_HMAPP_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_home_app_HMAPP_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_home_app_HMAPP_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_home_app"."HMAPP_UNID";


--
-- Name: core_uams_output_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_uams_output_grant" (
    "CUOGRT_UNID" INTEGER NOT NULL,
    "CUOGRT_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUOGRT_NAME" CHARACTER VARYING(512 char) NOT NULL,
    "CUOGRT_APP_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUOGRT_APP_TITLE" CHARACTER VARYING(64 char) NOT NULL,
    "CUOGRT_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "CUOGRT_SERVICE_TYPE" CHARACTER VARYING(64 char) NOT NULL,
    "CUOGRT_DATA_RANGE" TEXT,
    "CUOGRT_FIELD_RANGE" CHARACTER VARYING(512 char),
    "CUOGRT_DATA_EXCLUDE" TEXT,
    "CUOGRT_FIELD_EXCLUDE" CHARACTER VARYING(512 char),
    "CUOGRT_PRIORIT" INTEGER,
    "CUOGRT_ORDER" INTEGER,
    "CUOGRT_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "CUOGRT_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "CUOGRT_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_output_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_uams_output_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_uams_output_grant" IS '数据输出授权';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_UNID" IS 'UNID';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_UUID" IS 'UUID';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_NAME" IS '配置名称';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_APP_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_APP_UUID" IS '系统标识';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_APP_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_APP_TITLE" IS '系统标题';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_OWNER_UUID" IS '所有者标识';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_SERVICE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_SERVICE_TYPE" IS '授权业务';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_DATA_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_DATA_RANGE" IS '数据范围';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_FIELD_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_FIELD_RANGE" IS '字段范围';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_DATA_EXCLUDE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_DATA_EXCLUDE" IS '数据排除';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_FIELD_EXCLUDE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_FIELD_EXCLUDE" IS '字段排除';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_PRIORIT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_PRIORIT" IS '优先级';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_ORDER" IS '排序号';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_STATUS" IS '授权状态';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_uams_output_grant"."CUOGRT_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_UPDATE_TIME" IS '更新时间';


--
-- Name: core_uams_output_grant_CUOGRT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_output_grant_CUOGRT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_uams_output_grant_CUOGRT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_uams_output_grant_CUOGRT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_uams_output_grant_CUOGRT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_uams_output_grant"."CUOGRT_UNID";


--
-- Name: core_wkflw_cmd; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_cmd" (
    "WFCMD_UNID" INTEGER NOT NULL,
    "WFCMD_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFCMD_FLOW_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFCMD_NODE_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFCMD_NODE_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFCMD_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "WFCMD_RULE_NAME" CHARACTER VARYING(32 char) NOT NULL,
    "WFCMD_BTN_POSITION" CHARACTER VARYING(20 char) NOT NULL,
    "WFCMD_BTN_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFCMD_BTN_ICON" CHARACTER VARYING(64 char),
    "WFCMD_HANDLER_TYPE" CHARACTER VARYING(8 char),
    "WFCMD_HANDLER_SCRIPT" CHARACTER VARYING(128 char),
    "WFCMD_ROUTER_FORMULA" CHARACTER VARYING(128 char),
    "WFCMD_ROUTER_PROVIDER" CHARACTER VARYING(32 char),
    "WFCMD_ROUTERS" CHARACTER VARYING(256 char),
    "WFCMD_DOCUMENT_MARK" CHARACTER VARYING(8 char),
    "WFCMD_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFCMD_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_cmd" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_cmd"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_cmd" IS '环节指令';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_UNID" IS 'UNID';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_UUID" IS 'UUID';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_FLOW_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_FLOW_UUID" IS '流程标识';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_NODE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_NODE_UUID" IS '所属环节';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_NODE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_NODE_NAME" IS '环节名称';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_CODE" IS '指令代码';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_RULE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_RULE_NAME" IS '流转规则';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_BTN_POSITION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_BTN_POSITION" IS '按钮位置';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_BTN_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_BTN_NAME" IS '按钮名称';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_BTN_ICON"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_BTN_ICON" IS '按钮图标';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_HANDLER_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_HANDLER_TYPE" IS '交互类型';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_HANDLER_SCRIPT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_HANDLER_SCRIPT" IS '交互脚本';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_ROUTER_FORMULA"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_ROUTER_FORMULA" IS '路由公式';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_ROUTER_PROVIDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_ROUTER_PROVIDER" IS '路由提供者';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_ROUTERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_ROUTERS" IS '可选路由';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_DOCUMENT_MARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_DOCUMENT_MARK" IS '文稿留痕';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_STATUS" IS '命令状态';


--
-- Name: COLUMN "core_wkflw_cmd"."WFCMD_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_ORDER" IS '排序号';


--
-- Name: core_wkflw_cmd_WFCMD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_cmd_WFCMD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_cmd_WFCMD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_cmd_WFCMD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_cmd_WFCMD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_cmd"."WFCMD_UNID";


--
-- Name: core_wkflw_file; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_file" (
    "WKFILE_UNID" INTEGER NOT NULL,
    "WKFILE_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WKFILE_EMIX_UUID" CHARACTER VARYING(48 char),
    "WKFILE_UPLOADER" CHARACTER VARYING(48 char),
    "WKFILE_DEPT_UUID" CHARACTER VARYING(48 char),
    "WKFILE_CONTENT_TYPE" CHARACTER VARYING(128 char),
    "WKFILE_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "WKFILE_ORIGINAL_NAME" CHARACTER VARYING(256 char) NOT NULL,
    "WKFILE_SERVER_PATH" CHARACTER VARYING(256 char) NOT NULL,
    "WKFILE_EXTENTION" CHARACTER VARYING(8 char),
    "WKFILE_SIZE" INTEGER NOT NULL,
    "WKFILE_TYPE" CHARACTER VARYING(64 char),
    "WKFILE_STATUS" CHARACTER VARYING(2 char),
    "WKFILE_ORDER" INTEGER,
    "WKFILE_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WKFILE_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WKFILE_FLOW_TYPE" CHARACTER VARYING(8 char),
    "WKFILE_INSTANCE_UUID" CHARACTER VARYING(32 char),
    "WKFILE_FLOW_UUID" CHARACTER VARYING(48 char),
    "WKFILE_NODE_UUID" CHARACTER VARYING(48 char),
    "WKFILE_BRANCH_UUID" CHARACTER VARYING(48 char),
    "WKFILE_PROCESS_UUID" CHARACTER VARYING(48 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_file" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_file"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_file" IS '工作流附件表';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_UNID" IS '标识UNID';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_UUID" IS '标识UUID';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_EMIX_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_EMIX_UUID" IS '业务实体';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_UPLOADER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_UPLOADER" IS '操作用户UUID';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_DEPT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_DEPT_UUID" IS '操作机构UUID';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_CONTENT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_CONTENT_TYPE" IS '内容类型';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_NAME" IS '文件名称';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_ORIGINAL_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_ORIGINAL_NAME" IS '原始名称';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_SERVER_PATH"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_SERVER_PATH" IS '服务器路径';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_EXTENTION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_EXTENTION" IS '文件扩展名';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_SIZE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_SIZE" IS '附件大小';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_TYPE" IS '附件类型';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_STATUS" IS '状态标记';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_ORDER" IS '排序号';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_CREATE_TIME" IS '创建日期';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_UPDATE_TIME" IS '修改日期';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_FLOW_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_FLOW_TYPE" IS '业务分类';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_INSTANCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_INSTANCE_UUID" IS '流程实例';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_FLOW_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_FLOW_UUID" IS '关联流程';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_NODE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_NODE_UUID" IS '关联环节';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_BRANCH_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_BRANCH_UUID" IS '关联分支';


--
-- Name: COLUMN "core_wkflw_file"."WKFILE_PROCESS_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_PROCESS_UUID" IS '关联过程';


--
-- Name: core_wkflw_file_WKFILE_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_file_WKFILE_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_file_WKFILE_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_file_WKFILE_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_file_WKFILE_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_file"."WKFILE_UNID";


--
-- Name: core_wkflw_flow; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_flow" (
    "WFFLW_UNID" INTEGER NOT NULL,
    "WFFLW_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFFLW_CODE" CHARACTER VARYING(64 char) NOT NULL,
    "WFFLW_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFFLW_ENTITY" CHARACTER VARYING(64 char) NOT NULL,
    "WFFLW_TYPE" CHARACTER VARYING(64 char),
    "WFFLW_FORM_BUILDER" CHARACTER VARYING(64 char),
    "WFFLW_CHART" TEXT,
    "WFFLW_CHART_EXT1" TEXT,
    "WFFLW_CHART_EXT2" TEXT,
    "WFFLW_CHART_EXT3" TEXT,
    "WFFLW_CHART_EXT4" TEXT,
    "WFFLW_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFFLW_VERSION" INTEGER,
    "WFFLW_VER_STATUS" CHARACTER VARYING(8 char),
    "WFFLW_VER_REMARK" CHARACTER VARYING(128 char),
    "WFFLW_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFFLW_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFFLW_CREATOR" CHARACTER VARYING(48 char) NOT NULL,
    "WFFLW_UPDATER" CHARACTER VARYING(48 char) NOT NULL,
    "WFFLW_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_flow" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_flow"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_flow" IS '工作流定义';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_UNID" IS 'UNID';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_UUID" IS 'UUID';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CODE" IS '流程代码';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_NAME" IS '流程名称';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_ENTITY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_ENTITY" IS '流转对象';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_TYPE" IS '流程分类';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_FORM_BUILDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_FORM_BUILDER" IS '表单构建器';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CHART"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CHART" IS '流程图数据';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CHART_EXT1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CHART_EXT1" IS '流程图扩展1';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CHART_EXT2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CHART_EXT2" IS '流程图扩展2';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CHART_EXT3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CHART_EXT3" IS '流程图扩展3';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CHART_EXT4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CHART_EXT4" IS '流程图扩展4';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_STATUS" IS '流程状态';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_VERSION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_VERSION" IS '版本号码';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_VER_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_VER_STATUS" IS '版本状态';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_VER_REMARK"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_VER_REMARK" IS '版本说明';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_flow"."WFFLW_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_ORDER" IS '排序号';


--
-- Name: core_wkflw_flow_WFFLW_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_flow_WFFLW_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_flow_WFFLW_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_flow_WFFLW_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_flow_WFFLW_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_flow"."WFFLW_UNID";


--
-- Name: core_wkflw_inst_config; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config" (
    "WFCFG_UNID" INTEGER NOT NULL,
    "WFCFG_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFCFG_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFCFG_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFCFG_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFCFG_CREATOR" CHARACTER VARYING(48 char),
    "WFCFG_UPDATER" CHARACTER VARYING(48 char),
    "WFCFG_ORDER" INTEGER,
    "WFCFG_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "WFCFG_CODE" CHARACTER VARYING(48 char),
    "WFCFG_TYPE" CHARACTER VARYING(48 char),
    "WFCFG_WKFLW_DEFN" CHARACTER VARYING(32 char) NOT NULL,
    "WFCFG_WKFLW_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFCFG_WKFLW_VERS" INTEGER NOT NULL,
    "WFCFG_WKFLW_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFCFG_WKFLW_TYPE" CHARACTER VARYING(32 char),
    "WFCFG_FORM_UUID" CHARACTER VARYING(32 char),
    "WFCFG_FORM_CODE" CHARACTER VARYING(32 char),
    "WFCFG_FORM_VERS" INTEGER,
    "WFCFG_FORM_NAME" CHARACTER VARYING(64 char),
    "WFCFG_FORM_BUILDER" CHARACTER VARYING(64 char),
    "WFCFG_ENTITY_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFCFG_EXTCONF" TEXT
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_inst_config"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config" IS '流程实例配置';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_UNID" IS 'UNID标识';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_UUID" IS 'UUID标识';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_STATUS" IS '配置状态';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_ORDER" IS '排序号';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_NAME" IS '业务名称';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_CODE" IS '业务代码';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_TYPE" IS '业务类别';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_WKFLW_DEFN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_WKFLW_DEFN" IS '流程定义';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_WKFLW_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_WKFLW_CODE" IS '流程代码';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_WKFLW_VERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_WKFLW_VERS" IS '流程版本';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_WKFLW_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_WKFLW_NAME" IS '流程名称';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_WKFLW_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_WKFLW_TYPE" IS '流程分类';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_FORM_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_FORM_UUID" IS '表单标识';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_FORM_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_FORM_CODE" IS '表单代码';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_FORM_VERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_FORM_VERS" IS '表单版本';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_FORM_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_FORM_NAME" IS '表单名称';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_FORM_BUILDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_FORM_BUILDER" IS '表单构建器';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_ENTITY_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_ENTITY_NAME" IS '实体类名';


--
-- Name: COLUMN "core_wkflw_inst_config"."WFCFG_EXTCONF"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_EXTCONF" IS '扩展配置';


--
-- Name: core_wkflw_inst_config_WFCFG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_WFCFG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_WFCFG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_inst_config_WFCFG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_WFCFG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"."WFCFG_UNID";


--
-- Name: core_wkflw_inst_config_grant; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant" (
    "CWICG_UNID" INTEGER NOT NULL,
    "CWICG_INST_CONFIG_UUID" CHARACTER VARYING(48 char),
    "CWICG_OWNER_UUID" CHARACTER VARYING(48 char),
    "CRGRT_OWNER_TYPE" CHARACTER VARYING(8 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_inst_config_grant"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant" IS '流程配置分级管理';


--
-- Name: COLUMN "core_wkflw_inst_config_grant"."CWICG_INST_CONFIG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant"."CWICG_INST_CONFIG_UUID" IS '流程实例配置标识';


--
-- Name: COLUMN "core_wkflw_inst_config_grant"."CWICG_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant"."CWICG_OWNER_UUID" IS '资源拥有者标识';


--
-- Name: COLUMN "core_wkflw_inst_config_grant"."CRGRT_OWNER_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant"."CRGRT_OWNER_TYPE" IS '拥有者类型';


--
-- Name: core_wkflw_inst_config_grant_CWICG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant_CWICG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant_CWICG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_inst_config_grant_CWICG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant_CWICG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant"."CWICG_UNID";


--
-- Name: core_wkflw_instance; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_instance" (
    "WFINST_UNID" INTEGER NOT NULL,
    "WFINST_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFINST_TEXT" CHARACTER VARYING(128 char) NOT NULL,
    "WFINST_END_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFINST_TIME_LONG" INTEGER,
    "WFINST_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFINST_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFINST_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFINST_CREATOR" CHARACTER VARYING(48 char),
    "WFINST_UPDATER" CHARACTER VARYING(48 char),
    "WFINST_CONFIG_UUID" CHARACTER VARYING(32 char),
    "WFINST_CONFIG_CODE" CHARACTER VARYING(64 char),
    "WFINST_FORM_BUILDER" CHARACTER VARYING(64 char),
    "WFINST_WKFLW_DEFN" CHARACTER VARYING(32 char) NOT NULL,
    "WFINST_WKFLW_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFINST_WKFLW_VERS" INTEGER,
    "WFINST_WKFLW_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFINST_WKFLW_TYPE" CHARACTER VARYING(32 char),
    "WFINST_ENTITY_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFINST_ENTITY_TEXT" CHARACTER VARYING(128 char),
    "WFINST_ENTITY_NAME" CHARACTER VARYING(64 char),
    "WFINST_ENTITY_TYPE" CHARACTER VARYING(32 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_instance" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_instance"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_instance" IS '工作流实例';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_UNID" IS 'UNID标识';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_UUID" IS 'UUID标识';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_TEXT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_TEXT" IS '实例名称';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_END_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_END_TIME" IS '结束时间';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_TIME_LONG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_TIME_LONG" IS '持续时间';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_STATUS" IS '实例状态';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_CONFIG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_CONFIG_UUID" IS '实例配置标识';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_CONFIG_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_CONFIG_CODE" IS '实例配置代码';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_FORM_BUILDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_FORM_BUILDER" IS '表单构建器';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_WKFLW_DEFN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_WKFLW_DEFN" IS '流程定义';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_WKFLW_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_WKFLW_CODE" IS '流程代码';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_WKFLW_VERS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_WKFLW_VERS" IS '流程版本';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_WKFLW_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_WKFLW_NAME" IS '流程名称';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_WKFLW_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_WKFLW_TYPE" IS '流程分类';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_ENTITY_UUID" IS '实体标识';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_ENTITY_TEXT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_ENTITY_TEXT" IS '实体名称';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_ENTITY_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_ENTITY_NAME" IS '实体类名';


--
-- Name: COLUMN "core_wkflw_instance"."WFINST_ENTITY_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_ENTITY_TYPE" IS '实体分类';


--
-- Name: core_wkflw_instance_WFINST_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_instance_WFINST_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_instance_WFINST_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_instance_WFINST_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_instance_WFINST_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_instance"."WFINST_UNID";


--
-- Name: core_wkflw_node; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_node" (
    "WFNDE_UNID" INTEGER NOT NULL,
    "WFNDE_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFNDE_FLOW_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFNDE_CODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFNDE_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFNDE_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDE_OPINION_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDE_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDE_TIME_LIMIT" INTEGER NOT NULL,
    "WFNDE_WAKEUP_SERVICE" CHARACTER VARYING(64 char),
    "WFNDE_WAKEUP_AMOUNT" INTEGER,
    "WFNDE_AMOUNT_UPDATE_TYPE" CHARACTER VARYING(8 char),
    "WFNDE_OWNER_RANGE" CHARACTER VARYING(32 char),
    "WFNDE_EXTEND_RANGE" CHARACTER VARYING(512 char),
    "WFNDE_OWNER_UUIDS" TEXT,
    "WFNDE_OWNER_TEXTS" TEXT,
    "WFNDE_OWNER_PARSER" CHARACTER VARYING(32 char),
    "WFNDE_READ_ONLY" CHARACTER VARYING(8 char),
    "WFNDE_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFNDE_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFNDE_CREATOR" CHARACTER VARYING(48 char) NOT NULL,
    "WFNDE_UPDATER" CHARACTER VARYING(48 char) NOT NULL,
    "WFNDE_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_node" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_node"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_node" IS '流程环节';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_UNID" IS 'UNID';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_UUID" IS 'UUID';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_FLOW_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_FLOW_UUID" IS '流程标识';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_CODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_CODE" IS '环节代码';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_NAME" IS '环节名称';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_TYPE" IS '环节类型';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_OPINION_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_OPINION_TYPE" IS '意见域类型';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_STATUS" IS '环节状态';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_TIME_LIMIT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_TIME_LIMIT" IS '办理时限';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_WAKEUP_SERVICE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_WAKEUP_SERVICE" IS '激活条件';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_WAKEUP_AMOUNT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_WAKEUP_AMOUNT" IS '唤醒基数';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_AMOUNT_UPDATE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_AMOUNT_UPDATE_TYPE" IS '基数更新类型';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_OWNER_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_OWNER_RANGE" IS '处理人范围';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_EXTEND_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_EXTEND_RANGE" IS '扩展范围';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_OWNER_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_OWNER_UUIDS" IS '环节处理人';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_OWNER_TEXTS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_OWNER_TEXTS" IS '处理人名称';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_OWNER_PARSER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_OWNER_PARSER" IS '人员解析器';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_READ_ONLY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_READ_ONLY" IS '文稿只读';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_node"."WFNDE_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_ORDER" IS '排序号';


--
-- Name: core_wkflw_node_WFNDE_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_node_WFNDE_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_node_WFNDE_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_node_WFNDE_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_node_WFNDE_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_node"."WFNDE_UNID";


--
-- Name: core_wkflw_process; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_process" (
    "WFPRO_UNID" INTEGER NOT NULL,
    "WFPRO_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFPRO_INSTANCE_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFPRO_ENTITY_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFPRO_WKFLW_DEFN" CHARACTER VARYING(48 char) NOT NULL,
    "WFPRO_NODE_UUID" CHARACTER VARYING(48 char),
    "WFPRO_CMD_UUID" CHARACTER VARYING(48 char),
    "WFPRO_WFNDS_UUID" CHARACTER VARYING(48 char),
    "WFPRO_WFHDR_UUID" CHARACTER VARYING(48 char),
    "WFPRO_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFPRO_TARGET_UUIDS" CHARACTER VARYING(256 char),
    "WFPRO_TARGET_TEXTS" CHARACTER VARYING(512 char),
    "WFPRO_NODE_NAME" CHARACTER VARYING(64 char),
    "WFPRO_CMD_NAME" CHARACTER VARYING(64 char),
    "WFPRO_OWNER_TEXT" CHARACTER VARYING(128 char) NOT NULL,
    "WFPRO_RESULT" CHARACTER VARYING(8 char),
    "WFPRO_OPINION" TEXT,
    "WFPRO_DESC" TEXT NOT NULL,
    "WFPRO_FILE_UUID" CHARACTER VARYING(128 char),
    "WFPRO_CLIENT_TYPE" CHARACTER VARYING(8 char),
    "WFPRO_TYPE" CHARACTER VARYING(8 char),
    "WFPRO_EXTEND_CONTENT" TEXT,
    "WFPRO_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFPRO_CREATOR" CHARACTER VARYING(48 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_process" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_process"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_process" IS '工作流处理过程';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_UNID" IS 'UNID标识';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_UUID" IS 'UUID标识';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_INSTANCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_INSTANCE_UUID" IS '流程实例';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_ENTITY_UUID" IS '关联实体';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_WKFLW_DEFN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_WKFLW_DEFN" IS '关联流程';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_NODE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_NODE_UUID" IS '关联环节';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_CMD_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_CMD_UUID" IS '关联命令';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_WFNDS_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_WFNDS_UUID" IS '关联状态';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_WFHDR_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_WFHDR_UUID" IS '关联结果';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_OWNER_UUID" IS '处理人标识';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_TARGET_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_TARGET_UUIDS" IS '目标标识';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_TARGET_TEXTS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_TARGET_TEXTS" IS '目标名称';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_NODE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_NODE_NAME" IS '环节名称';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_CMD_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_CMD_NAME" IS '操作名称';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_OWNER_TEXT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_OWNER_TEXT" IS '处理人名称';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_RESULT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_RESULT" IS '处理结果';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_OPINION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_OPINION" IS '个人意见';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_DESC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_DESC" IS '流转描述';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_FILE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_FILE_UUID" IS '文件标识';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_CLIENT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_CLIENT_TYPE" IS '终端类型';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_TYPE" IS '记录类别';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_EXTEND_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_EXTEND_CONTENT" IS '扩展内容';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_process"."WFPRO_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_CREATOR" IS '创建者';


--
-- Name: core_wkflw_process_WFPRO_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_process_WFPRO_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_process_WFPRO_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_process_WFPRO_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_process_WFPRO_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_process"."WFPRO_UNID";


--
-- Name: core_wkflw_result; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_result" (
    "WFHDR_UNID" INTEGER NOT NULL,
    "WFHDR_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFHDR_INSTANCE_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFHDR_WKFLW_DEFN" CHARACTER VARYING(48 char) NOT NULL,
    "WFHDR_WFNDS_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFHDR_WKFLW_NODE" CHARACTER VARYING(48 char) NOT NULL,
    "WFHDR_ENTITY_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFHDR_OWNER_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFHDR_OWNER_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFHDR_PROCESS_RESULT" CHARACTER VARYING(8 char),
    "WFHDR_OPINION" TEXT,
    "WFHDR_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFHDR_GEN_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFHDR_HANDLE_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFHDR_READ_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFHDR_START_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFHDR_FINISH_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFHDR_TIME_LONG" INTEGER,
    "WFHDR_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFHDR_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFHDR_CREATOR" CHARACTER VARYING(48 char),
    "WFHDR_UPDATER" CHARACTER VARYING(48 char),
    "WFHDR_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_result" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_result"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_result" IS '工作流处理结果';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_UNID" IS 'UNID标识';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_UUID" IS 'UUID标识';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_INSTANCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_INSTANCE_UUID" IS '流程实例';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_WKFLW_DEFN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_WKFLW_DEFN" IS '流程定义';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_WFNDS_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_WFNDS_UUID" IS '流程状态';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_WKFLW_NODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_WKFLW_NODE" IS '流程节点';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_ENTITY_UUID" IS '实体标识';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_OWNER_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_OWNER_UUID" IS '处理人标识';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_OWNER_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_OWNER_NAME" IS '处理人名称';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_PROCESS_RESULT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_PROCESS_RESULT" IS '处理结果';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_OPINION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_OPINION" IS '个人意见';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_STATUS" IS '处理状态';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_GEN_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_GEN_TYPE" IS '生成方式';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_HANDLE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_HANDLE_TYPE" IS '处理方式';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_READ_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_READ_STATUS" IS '阅读状态';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_START_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_START_TIME" IS '开始时间';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_FINISH_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_FINISH_TIME" IS '办结时间';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_TIME_LONG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_TIME_LONG" IS '办理时长';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_result"."WFHDR_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_ORDER" IS '排序号';


--
-- Name: core_wkflw_result_WFHDR_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_result_WFHDR_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_result_WFHDR_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_result_WFHDR_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_result_WFHDR_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_result"."WFHDR_UNID";


--
-- Name: core_wkflw_router; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_router" (
    "WFRTE_UNID" INTEGER NOT NULL,
    "WFRTE_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFRTE_FLOW_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFRTE_NAME" CHARACTER VARYING(128 char) NOT NULL,
    "WFRTE_SOURCE_NODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFRTE_SOURCE_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFRTE_BRANCH_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFRTE_TARGET_NODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFRTE_TARGET_NAME" CHARACTER VARYING(64 char) NOT NULL,
    "WFRTE_OWNER_RANGE" CHARACTER VARYING(32 char),
    "WFRTE_OWNER_UUIDS" TEXT,
    "WFRTE_OWNER_TEXTS" TEXT,
    "WFRTE_OWNER_PARSER" CHARACTER VARYING(32 char),
    "WFRTE_WAKEUP_SERVICE" CHARACTER VARYING(64 char),
    "WFRTE_WAKEUP_AMOUNT" INTEGER,
    "WFRTE_STATUS" CHARACTER VARYING(8 char) NOT NULL,
    "WFRTE_REMARKS" CHARACTER VARYING(128 char),
    "WFRTE_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_router" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_router"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_router" IS '流转路由';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_UNID" IS 'UNID';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_UUID" IS 'UUID';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_FLOW_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_FLOW_UUID" IS '流程标识';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_NAME" IS '路由名称';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_SOURCE_NODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_SOURCE_NODE" IS '起始环节';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_SOURCE_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_SOURCE_NAME" IS '起始环节名称';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_BRANCH_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_BRANCH_TYPE" IS '路由分支属性';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_TARGET_NODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_TARGET_NODE" IS '目标环节';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_TARGET_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_TARGET_NAME" IS '环节名称';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_OWNER_RANGE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_OWNER_RANGE" IS '路由范围';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_OWNER_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_OWNER_UUIDS" IS '预设处理人';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_OWNER_TEXTS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_OWNER_TEXTS" IS '处理人名称';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_OWNER_PARSER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_OWNER_PARSER" IS '人员解析器';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_WAKEUP_SERVICE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_WAKEUP_SERVICE" IS '激活条件';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_WAKEUP_AMOUNT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_WAKEUP_AMOUNT" IS '唤醒基数';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_STATUS" IS '状态';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_REMARKS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_REMARKS" IS '路由说明';


--
-- Name: COLUMN "core_wkflw_router"."WFRTE_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_ORDER" IS '排序号';


--
-- Name: core_wkflw_router_WFRTE_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_router_WFRTE_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_router_WFRTE_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_router_WFRTE_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_router_WFRTE_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_router"."WFRTE_UNID";


--
-- Name: core_wkflw_status; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."core_wkflw_status" (
    "WFNDS_UNID" INTEGER NOT NULL,
    "WFNDS_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFNDS_INSTANCE_UUID" CHARACTER VARYING(32 char) NOT NULL,
    "WFNDS_ENTITY_UUID" CHARACTER VARYING(48 char) NOT NULL,
    "WFNDS_OWNER_UUIDS" TEXT NOT NULL,
    "WFNDS_OWNER_TEXTS" TEXT NOT NULL,
    "WFNDS_WKFLW_DEFN" CHARACTER VARYING(32 char) NOT NULL,
    "WFNDS_WKFLW_NODE" CHARACTER VARYING(32 char) NOT NULL,
    "WFNDS_NODE_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDS_BRANCH_TYPE" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDS_WAKEUP_SERVICE" CHARACTER VARYING(64 char),
    "WFNDS_WAKEUP_AMOUNT" INTEGER,
    "WFNDS_PREV_UUIDS" CHARACTER VARYING(660 char),
    "WFNDS_NEXT_UUIDS" CHARACTER VARYING(660 char),
    "WFNDS_NODE_PREV" CHARACTER VARYING(32 char),
    "WFNDS_LINK_FLOW" CHARACTER VARYING(32 char),
    "WFNDS_STATE" CHARACTER VARYING(8 char) NOT NULL,
    "WFNDS_TIME_LIMIT" INTEGER NOT NULL,
    "WFNDS_START_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL,
    "WFNDS_FINISH_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFNDS_TIME_LONG" INTEGER,
    "WFNDS_CREATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFNDS_UPDATE_TIME" TIMESTAMP WITHOUT TIME ZONE DEFAULT '0001-01-01 00:00:00'::TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    "WFNDS_CREATOR" CHARACTER VARYING(48 char),
    "WFNDS_UPDATER" CHARACTER VARYING(48 char),
    "WFNDS_ORDER" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_status" OWNER TO "SYSTEM";

--
-- Name: TABLE "core_wkflw_status"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."core_wkflw_status" IS '工作流状态表';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_UNID" IS 'UNID标识';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_UUID" IS 'UUID标识';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_INSTANCE_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_INSTANCE_UUID" IS '流程实例';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_ENTITY_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_ENTITY_UUID" IS '实体标识';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_OWNER_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_OWNER_UUIDS" IS '所有者标识';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_OWNER_TEXTS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_OWNER_TEXTS" IS '所有者名称';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_WKFLW_DEFN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_WKFLW_DEFN" IS '工作流定义';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_WKFLW_NODE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_WKFLW_NODE" IS '流程节点';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_NODE_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_NODE_TYPE" IS '环节类型';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_BRANCH_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_BRANCH_TYPE" IS '分支类型';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_WAKEUP_SERVICE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_WAKEUP_SERVICE" IS '唤醒服务';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_WAKEUP_AMOUNT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_WAKEUP_AMOUNT" IS '唤醒基数';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_PREV_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_PREV_UUIDS" IS '上一状态';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_NEXT_UUIDS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_NEXT_UUIDS" IS '下一状态';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_NODE_PREV"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_NODE_PREV" IS '退回状态链';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_LINK_FLOW"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_LINK_FLOW" IS '主子链接';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_STATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_STATE" IS '流程状态';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_TIME_LIMIT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_TIME_LIMIT" IS '办理时限';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_START_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_START_TIME" IS '开始时间';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_FINISH_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_FINISH_TIME" IS '办结时间';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_TIME_LONG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_TIME_LONG" IS '办理时长';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_CREATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_CREATE_TIME" IS '创建时间';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_UPDATE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_UPDATE_TIME" IS '更新时间';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_CREATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_CREATOR" IS '创建者';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_UPDATER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_UPDATER" IS '更新者';


--
-- Name: COLUMN "core_wkflw_status"."WFNDS_ORDER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_ORDER" IS '排序号';


--
-- Name: core_wkflw_status_WFNDS_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_status_WFNDS_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."core_wkflw_status_WFNDS_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: core_wkflw_status_WFNDS_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."core_wkflw_status_WFNDS_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."core_wkflw_status"."WFNDS_UNID";


--
-- Name: s_account_relation; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_account_relation" (
    "SAR_UNID" INTEGER NOT NULL,
    "SAR_UUID" CHARACTER VARYING(255 char),
    "SAR_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SAR_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "CRACT_UUID" CHARACTER VARYING(50 char),
    "PWG_UUID" CHARACTER VARYING(50 char),
    "SAR_IPWHITELIST" CHARACTER VARYING(255 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_account_relation" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_account_relation"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_account_relation" IS '用户表扩展业务关联表';


--
-- Name: COLUMN "s_account_relation"."CRACT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_account_relation"."CRACT_UUID" IS '用户ID关联';


--
-- Name: COLUMN "s_account_relation"."PWG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_account_relation"."PWG_UUID" IS '发送权限分组关联';


--
-- Name: COLUMN "s_account_relation"."SAR_IPWHITELIST"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_account_relation"."SAR_IPWHITELIST" IS 'IP白名单';


--
-- Name: s_account_relation_SAR_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_account_relation_SAR_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_account_relation_SAR_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_account_relation_SAR_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_account_relation_SAR_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_account_relation"."SAR_UNID";


--
-- Name: s_machine; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_machine" (
    "MAC_UNID" INTEGER NOT NULL,
    "MAC_UUID" CHARACTER VARYING(50 char),
    "MAC_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "MAC_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "MAC_OPERATOR" CHARACTER VARYING(32 char),
    "MAC_WWHM" CHARACTER VARYING(32 char),
    "MAC_WSHM" CHARACTER VARYING(32 char),
    "MAC_ZCHF" CHARACTER VARYING(32 char),
    "MAC_SFMR" CHARACTER VARYING(32 char),
    "MAC_ZJFSL" CHARACTER VARYING(32 char),
    "MAC_ATTRIBUTE" CHARACTER VARYING(255 char),
    "MAC_ENUMMIN" CHARACTER VARYING(32 char),
    "MAC_ENUMMAX" CHARACTER VARYING(32 char),
    "MAC_DTJFZS" INTEGER,
    "MAC_DTFY" DOUBLE PRECISION,
    "MAC_EXTEND1" CHARACTER VARYING(32 char),
    "MAC_EXTEND2" CHARACTER VARYING(32 char),
    "MAC_EXTEND3" CHARACTER VARYING(32 char),
    "MAC_EXTEND4" CHARACTER VARYING(32 char),
    "MAC_EXTEND5" CHARACTER VARYING(32 char) DEFAULT '1'::CHARACTER VARYING,
    "MAC_COMNUMBER" CHARACTER VARYING(200 char),
    "MAC_RECEIPT_TYPE" INTEGER DEFAULT 0,
    "MAC_RECEIPT_OPEN_STATUS" INTEGER DEFAULT 0,
    "MAC_REPLY_OPEN_STATUS" INTEGER DEFAULT 0
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machine" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_machine"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_machine" IS '短信机表';


--
-- Name: COLUMN "s_machine"."MAC_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_UDATE" IS '数据修改时间  用作短信机状态检测时间';


--
-- Name: COLUMN "s_machine"."MAC_OPERATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_OPERATOR" IS '运营商：1移动、2联通、3电信、4全网通';


--
-- Name: COLUMN "s_machine"."MAC_WWHM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_WWHM" IS '是否支持外网号码 0支持 1不支持';


--
-- Name: COLUMN "s_machine"."MAC_WSHM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_WSHM" IS '是否支持外省号码 0支持 1不支持';


--
-- Name: COLUMN "s_machine"."MAC_ZCHF"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_ZCHF" IS '是否支持回复 0支持 1不支持';


--
-- Name: COLUMN "s_machine"."MAC_SFMR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_SFMR" IS '是否是默认短信机 0是 1不是';


--
-- Name: COLUMN "s_machine"."MAC_ZJFSL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_ZJFSL" IS '最佳发送量';


--
-- Name: COLUMN "s_machine"."MAC_ATTRIBUTE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_ATTRIBUTE" IS '短信机属性uuid';


--
-- Name: COLUMN "s_machine"."MAC_ENUMMIN"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_ENUMMIN" IS '扩展号最小值';


--
-- Name: COLUMN "s_machine"."MAC_ENUMMAX"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_ENUMMAX" IS '扩展号最大值';


--
-- Name: COLUMN "s_machine"."MAC_DTJFZS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_DTJFZS" IS '单条计费字数';


--
-- Name: COLUMN "s_machine"."MAC_DTFY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_DTFY" IS '单条短信费用';


--
-- Name: COLUMN "s_machine"."MAC_EXTEND1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_EXTEND1" IS '短息机实现类';


--
-- Name: COLUMN "s_machine"."MAC_EXTEND2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_EXTEND2" IS '短信机状态 1正常 2故障 3停用 4删除';


--
-- Name: COLUMN "s_machine"."MAC_EXTEND3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_EXTEND3" IS '短信机名字';


--
-- Name: COLUMN "s_machine"."MAC_EXTEND4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_EXTEND4" IS '短信机类型';


--
-- Name: COLUMN "s_machine"."MAC_EXTEND5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_EXTEND5" IS '短信机回执回复方式';


--
-- Name: COLUMN "s_machine"."MAC_COMNUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_COMNUMBER" IS '如10633333申请接口时，运营商给的号码';


--
-- Name: COLUMN "s_machine"."MAC_RECEIPT_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_RECEIPT_TYPE" IS '是否支持回执';


--
-- Name: COLUMN "s_machine"."MAC_RECEIPT_OPEN_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_RECEIPT_OPEN_STATUS" IS '是否开启回执状态';


--
-- Name: COLUMN "s_machine"."MAC_REPLY_OPEN_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machine"."MAC_REPLY_OPEN_STATUS" IS '是否开启回复状态';


--
-- Name: s_machine_MAC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_machine_MAC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machine_MAC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_machine_MAC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_machine_MAC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_machine"."MAC_UNID";


--
-- Name: s_machinetype; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_machinetype" (
    "SMT_UNID" INTEGER NOT NULL,
    "SMT_UUID" CHARACTER VARYING(255 char),
    "SMT_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SMT_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SMT_OP" INTEGER,
    "SMT_TYPENAME" CHARACTER VARYING(255 char),
    "SMT_ATTRIBUTE" CHARACTER VARYING(1024 char),
    "SMT_EXTEND1" CHARACTER VARYING(255 char),
    "SMT_EXTEND2" CHARACTER VARYING(255 char),
    "SMT_EXTEND3" CHARACTER VARYING(255 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machinetype" OWNER TO "SYSTEM";

--
-- Name: COLUMN "s_machinetype"."SMT_OP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_OP" IS '所属运营商1移动、2联通、3电信、4全网通';


--
-- Name: COLUMN "s_machinetype"."SMT_TYPENAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_TYPENAME" IS '短信机类型名';


--
-- Name: COLUMN "s_machinetype"."SMT_ATTRIBUTE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_ATTRIBUTE" IS '短信机属性字段，逗号隔开';


--
-- Name: COLUMN "s_machinetype"."SMT_EXTEND1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_EXTEND1" IS '备用字段1';


--
-- Name: COLUMN "s_machinetype"."SMT_EXTEND2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_EXTEND2" IS '备用字段2';


--
-- Name: COLUMN "s_machinetype"."SMT_EXTEND3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_EXTEND3" IS '备用字段3';


--
-- Name: s_machinetype_SMT_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_machinetype_SMT_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machinetype_SMT_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_machinetype_SMT_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_machinetype_SMT_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_machinetype"."SMT_UNID";


--
-- Name: s_machinevalue; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_machinevalue" (
    "MV_UNID" INTEGER NOT NULL,
    "MV_UUID" CHARACTER VARYING(255 char),
    "MV_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "MV_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "MV_ATTRIBUTE" CHARACTER VARYING(255 char),
    "MV_VALUE" CHARACTER VARYING(255 char),
    "MV_MT_UUID" CHARACTER VARYING(255 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machinevalue" OWNER TO "SYSTEM";

--
-- Name: COLUMN "s_machinevalue"."MV_ATTRIBUTE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinevalue"."MV_ATTRIBUTE" IS '短信机属性';


--
-- Name: COLUMN "s_machinevalue"."MV_VALUE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinevalue"."MV_VALUE" IS '属性值';


--
-- Name: COLUMN "s_machinevalue"."MV_MT_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_machinevalue"."MV_MT_UUID" IS '短信机类型';


--
-- Name: s_machinevalue_MV_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_machinevalue_MV_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_machinevalue_MV_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_machinevalue_MV_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_machinevalue_MV_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_machinevalue"."MV_UNID";


--
-- Name: s_sms_forward; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sms_forward" (
    "SSF_UNID" BIGINT NOT NULL,
    "SSF_UUID" CHARACTER VARYING(50 char),
    "SSF_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SSF_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SSF_FAILREASON" CHARACTER VARYING(255 char),
    "SSF_SMBEFORE" CHARACTER VARYING(255 char),
    "SSF_AFTER" CHARACTER VARYING(255 char),
    "SSF_SENDUUID" CHARACTER VARYING(255 char),
    "SSF_STATUS" INTEGER,
    "SSF_PHONE" CHARACTER VARYING(255 char),
    "SSF_EXTENDNUMBER" CHARACTER VARYING(255 char),
    "SSF_CONTENT" CHARACTER VARYING(255 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_forward" OWNER TO "SYSTEM";

--
-- Name: COLUMN "s_sms_forward"."SSF_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_UDATE" IS '修改时间';


--
-- Name: COLUMN "s_sms_forward"."SSF_FAILREASON"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_FAILREASON" IS '失败原因';


--
-- Name: COLUMN "s_sms_forward"."SSF_SMBEFORE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_SMBEFORE" IS '前短信机';


--
-- Name: COLUMN "s_sms_forward"."SSF_AFTER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_AFTER" IS '转发短信机';


--
-- Name: COLUMN "s_sms_forward"."SSF_SENDUUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_SENDUUID" IS '关联主表uuid';


--
-- Name: COLUMN "s_sms_forward"."SSF_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_STATUS" IS '短信状态';


--
-- Name: COLUMN "s_sms_forward"."SSF_PHONE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_PHONE" IS '号码';


--
-- Name: COLUMN "s_sms_forward"."SSF_EXTENDNUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_EXTENDNUMBER" IS '扩展号';


--
-- Name: COLUMN "s_sms_forward"."SSF_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_CONTENT" IS '短信内容';


--
-- Name: s_sms_forward_SSF_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_forward_SSF_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_forward_SSF_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sms_forward_SSF_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_forward_SSF_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sms_forward"."SSF_UNID";


--
-- Name: s_op_forward; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_op_forward" (
    "SOF_UNID" INTEGER DEFAULT 'risen_jhsdys_sms_rserver.s_sms_forward_SSF_UNID_SEQ'::REGCLASS NOT NULL,
    "SOF_UUID" CHARACTER VARYING(50 char),
    "SOF_CDATE" TIMESTAMP WITH TIME ZONE,
    "SOF_UDATE" TIMESTAMP WITH TIME ZONE,
    "SOF_OP" CHARACTER VARYING(50 char),
    "SOF_OP_NAME" CHARACTER VARYING(50 char),
    "SOF_CONTACT_PHONE" CHARACTER VARYING(50 char),
    "SOF_MACHINE" CHARACTER VARYING(50 char),
    "SOF_SCAN_NUM" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_op_forward" OWNER TO "SYSTEM";

--
-- Name: s_powergroup; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_powergroup" (
    "PWG_UNID" INTEGER NOT NULL,
    "PWG_UUID" CHARACTER VARYING(50 char),
    "PWG_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "PWG_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "PWG_SEORT" CHARACTER VARYING(32 char),
    "PWG_TITLE" CHARACTER VARYING(32 char),
    "PWG_DAYNUM" CHARACTER VARYING(32 char),
    "PWG_MONNUM" CHARACTER VARYING(32 char),
    "PWG_ALLNUM" CHARACTER VARYING(32 char),
    "PWG_SPECIAL" CHARACTER VARYING(32 char),
    "PWG_SPEMAC" CHARACTER VARYING(32 char),
    "PWG_BUSINESS_NAME" CHARACTER VARYING(255 char),
    "PWG_BUSSINSS_ADDRESS" CHARACTER VARYING(255 char),
    "PWG_BUSSINSS_PRIORITY" INTEGER DEFAULT 1,
    "PWG_BUSSINSS_MACHINE" CHARACTER VARYING(255 char),
    "PWG_ALLOW_REPLIES" INTEGER DEFAULT 0,
    "PWG_STATUS" INTEGER DEFAULT 0
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_powergroup" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_powergroup"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_powergroup" IS '发送权限表';


--
-- Name: COLUMN "s_powergroup"."PWG_SEORT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_SEORT" IS '排序';


--
-- Name: COLUMN "s_powergroup"."PWG_TITLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_TITLE" IS '权限标题';


--
-- Name: COLUMN "s_powergroup"."PWG_DAYNUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_DAYNUM" IS '日发送量';


--
-- Name: COLUMN "s_powergroup"."PWG_MONNUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_MONNUM" IS '月发送量';


--
-- Name: COLUMN "s_powergroup"."PWG_ALLNUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_ALLNUM" IS '全部发送量0为不限制';


--
-- Name: COLUMN "s_powergroup"."PWG_SPECIAL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_SPECIAL" IS '是否走特殊通道';


--
-- Name: COLUMN "s_powergroup"."PWG_SPEMAC"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_SPEMAC" IS '特殊通道短信机ID';


--
-- Name: COLUMN "s_powergroup"."PWG_BUSINESS_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_BUSINESS_NAME" IS '第三方业务系统名称';


--
-- Name: COLUMN "s_powergroup"."PWG_BUSSINSS_ADDRESS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_BUSSINSS_ADDRESS" IS '第三方业务地址';


--
-- Name: COLUMN "s_powergroup"."PWG_BUSSINSS_PRIORITY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_BUSSINSS_PRIORITY" IS '第三方业务默认优先级';


--
-- Name: COLUMN "s_powergroup"."PWG_BUSSINSS_MACHINE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_BUSSINSS_MACHINE" IS '第三方默认短信机';


--
-- Name: COLUMN "s_powergroup"."PWG_ALLOW_REPLIES"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_ALLOW_REPLIES" IS '是否允许回复';


--
-- Name: COLUMN "s_powergroup"."PWG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_STATUS" IS '状态（0 正常 1禁用）';


--
-- Name: s_powergroup_PWG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_powergroup_PWG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_powergroup_PWG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_powergroup_PWG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_powergroup_PWG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_powergroup"."PWG_UNID";


--
-- Name: s_sction; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sction" (
    "SSC_UNID" INTEGER NOT NULL,
    "SSC_UUID" CHARACTER VARYING(50 char),
    "SSC_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SSC_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SSC_SECTION" CHARACTER VARYING(50 char),
    "SSC_OP" CHARACTER VARYING(11 char),
    "SSC_BELONG" CHARACTER VARYING(255 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sction" OWNER TO "SYSTEM";

--
-- Name: COLUMN "s_sction"."SSC_SECTION"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sction"."SSC_SECTION" IS '号段';


--
-- Name: COLUMN "s_sction"."SSC_OP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sction"."SSC_OP" IS '运营商：1移动 2联通 3电信';


--
-- Name: COLUMN "s_sction"."SSC_BELONG"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sction"."SSC_BELONG" IS '发送运营商：1移动 2联通 3电信';


--
-- Name: s_sction_SSC_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sction_SSC_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sction_SSC_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sction_SSC_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sction_SSC_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sction"."SSC_UNID";


--
-- Name: s_segment; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_segment" (
    "SEG_UNID" INTEGER NOT NULL,
    "SEG_UUID" CHARACTER VARYING(50 char),
    "SEG_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SEG_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SEG_SEGMENT" CHARACTER VARYING(32 char),
    "SEG_OPERATOR" CHARACTER VARYING(32 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_segment" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_segment"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_segment" IS '号段表';


--
-- Name: COLUMN "s_segment"."SEG_SEGMENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_segment"."SEG_SEGMENT" IS '号段';


--
-- Name: COLUMN "s_segment"."SEG_OPERATOR"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_segment"."SEG_OPERATOR" IS '运营商：1移动、2联通、3电信';


--
-- Name: s_send_auth; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_send_auth" (
    "SAU_UNID" INTEGER NOT NULL,
    "SAU_UUID" CHARACTER VARYING(50 char),
    "SAU_TWORD_CONT" INTEGER,
    "SAU_TPERSON_CONT" INTEGER,
    "SAU_DSEND_CONT" INTEGER,
    "SAU_WSEND_CONT" INTEGER,
    "SAU_MSEND_CONT" INTEGER,
    "SAU_YSEND_CONT" INTEGER,
    "SAU_CMCC_CONT" INTEGER,
    "SAU_CUCC_CONT" INTEGER,
    "SAU_CTCC_CONT" INTEGER,
    "SAU_OTHER_CONT" INTEGER,
    "SAU_CDATE" TIMESTAMP WITH TIME ZONE,
    "SAU_UDATE" TIMESTAMP WITH TIME ZONE,
    "SAU_RECEIPT_STATUS" INTEGER,
    "SAU_REPLY_STATUS" INTEGER,
    "SAU_IP_LIST" CHARACTER VARYING(1 char),
    "SAU_NAME" CHARACTER VARYING(1 char),
    "SAU_DESCRIBE" CHARACTER VARYING(1 char),
    "SAU_STATUS" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_send_auth" OWNER TO "SYSTEM";

--
-- Name: s_sendnum_day; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sendnum_day" (
    "USD_UNID" INTEGER NOT NULL,
    "USD_UUID" CHARACTER VARYING(50 char),
    "USD_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "USD_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "USD_SEORT" CHARACTER VARYING(32 char),
    "USD_USERID" CHARACTER VARYING(50 char),
    "USD_SENDNUM" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sendnum_day" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_sendnum_day"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_sendnum_day" IS '用户日发送量';


--
-- Name: COLUMN "s_sendnum_day"."USD_SEORT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_day"."USD_SEORT" IS '排序';


--
-- Name: COLUMN "s_sendnum_day"."USD_USERID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_day"."USD_USERID" IS '用户ID';


--
-- Name: COLUMN "s_sendnum_day"."USD_SENDNUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_day"."USD_SENDNUM" IS '发送量';


--
-- Name: s_sendnum_day_USD_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sendnum_day_USD_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sendnum_day_USD_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sendnum_day_USD_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sendnum_day_USD_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sendnum_day"."USD_UNID";


--
-- Name: s_sendnum_month; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sendnum_month" (
    "USM_UNID" INTEGER NOT NULL,
    "USM_UUID" CHARACTER VARYING(50 char),
    "USM_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "USM_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "USM_SEORT" CHARACTER VARYING(32 char),
    "USM_USERID" CHARACTER VARYING(32 char),
    "USM_SENDNUM" INTEGER
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sendnum_month" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_sendnum_month"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_sendnum_month" IS '月发送量';


--
-- Name: COLUMN "s_sendnum_month"."USM_SEORT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_month"."USM_SEORT" IS '排序';


--
-- Name: COLUMN "s_sendnum_month"."USM_USERID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_month"."USM_USERID" IS '用户ID';


--
-- Name: COLUMN "s_sendnum_month"."USM_SENDNUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sendnum_month"."USM_SENDNUM" IS '月发送量';


--
-- Name: s_sendnum_month_USM_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sendnum_month_USM_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sendnum_month_USM_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sendnum_month_USM_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sendnum_month_USM_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sendnum_month"."USM_UNID";


--
-- Name: s_sms_list; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sms_list" (
    "LIST_UNID" INTEGER NOT NULL,
    "LIST_UUID" CHARACTER VARYING(50 char),
    "LIST_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "LIST_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SEND_UUID" CHARACTER VARYING(50 char),
    "LIST_MOBILE" CHARACTER VARYING(11 char),
    "LIST_CONTENT" TEXT,
    "LIST_SENDTIME" TIMESTAMP WITHOUT TIME ZONE,
    "LIST_RECVTIME" TIMESTAMP WITHOUT TIME ZONE,
    "LIST_SNEDMACHINE" CHARACTER VARYING(50 char),
    "LIST_SENDRESULT" CHARACTER VARYING(32 char),
    "LIST_FALLREASON" CHARACTER VARYING(32 char),
    "LIST_PRIORITY" CHARACTER VARYING(32 char),
    "LIST_EXTEND1" CHARACTER VARYING(32 char),
    "LIST_EXTEND2" CHARACTER VARYING(32 char),
    "LIST_EXTEND3" CHARACTER VARYING(32 char),
    "LIST_EXTEND4" CHARACTER VARYING(32 char),
    "LIST_EXTEND5" CHARACTER VARYING(32 char),
    "LIST_BILLINGNUMBER" INTEGER,
    "LIST_COST" DOUBLE PRECISION
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_list" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_sms_list"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_sms_list" IS '短信明细表';


--
-- Name: COLUMN "s_sms_list"."LIST_CDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_CDATE" IS '创建时间';


--
-- Name: COLUMN "s_sms_list"."LIST_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_UDATE" IS '修改时间';


--
-- Name: COLUMN "s_sms_list"."SEND_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."SEND_UUID" IS '主表关联ID';


--
-- Name: COLUMN "s_sms_list"."LIST_MOBILE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_MOBILE" IS '发送号码';


--
-- Name: COLUMN "s_sms_list"."LIST_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_CONTENT" IS '短信内容';


--
-- Name: COLUMN "s_sms_list"."LIST_SENDTIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_SENDTIME" IS '发送时间';


--
-- Name: COLUMN "s_sms_list"."LIST_RECVTIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_RECVTIME" IS '用户接收短信时间';


--
-- Name: COLUMN "s_sms_list"."LIST_SNEDMACHINE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_SNEDMACHINE" IS '发送短信机';


--
-- Name: COLUMN "s_sms_list"."LIST_SENDRESULT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_SENDRESULT" IS '短信状态';


--
-- Name: COLUMN "s_sms_list"."LIST_FALLREASON"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_FALLREASON" IS '短信失败原因';


--
-- Name: COLUMN "s_sms_list"."LIST_PRIORITY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_PRIORITY" IS '发送优先级';


--
-- Name: COLUMN "s_sms_list"."LIST_EXTEND1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_EXTEND1" IS '扩展字段1';


--
-- Name: COLUMN "s_sms_list"."LIST_EXTEND2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_EXTEND2" IS '扩展字段2';


--
-- Name: COLUMN "s_sms_list"."LIST_EXTEND3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_EXTEND3" IS '扩展字段3';


--
-- Name: COLUMN "s_sms_list"."LIST_EXTEND4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_EXTEND4" IS '扩展字段4';


--
-- Name: COLUMN "s_sms_list"."LIST_EXTEND5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_EXTEND5" IS '扩展字段5';


--
-- Name: COLUMN "s_sms_list"."LIST_BILLINGNUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_BILLINGNUMBER" IS '计费条数';


--
-- Name: COLUMN "s_sms_list"."LIST_COST"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_COST" IS '费用';


--
-- Name: s_sms_list_LIST_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_list_LIST_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_list_LIST_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sms_list_LIST_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_list_LIST_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sms_list"."LIST_UNID";


--
-- Name: s_sms_log; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sms_log" (
    "LOG_UNID" BIGINT NOT NULL,
    "LOG_UUID" CHARACTER VARYING(48 char),
    "LOG_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "LOG_USER_ID" CHARACTER VARYING(16 char),
    "LOG_USER_NAME" CHARACTER VARYING(48 char),
    "LOG_TYPE" CHARACTER VARYING(2 char),
    "LOG_DESCRIBLE" TEXT,
    "LOG_STATUS" CHARACTER VARYING(2 char),
    "LOG_OPERATION_TYPE" CHARACTER VARYING(2 char),
    "LOG_FUNCTION_ID" CHARACTER VARYING(200 char),
    "LOG_C_PARAM" CHARACTER VARYING(500 char),
    "LOG_R_PARAM" CHARACTER VARYING(500 char),
    "LOG_METHOD" CHARACTER VARYING(100 char),
    "LOG_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "LIST_EXTEND1" CHARACTER VARYING(32 char),
    "LIST_EXTEND2" CHARACTER VARYING(32 char),
    "LIST_EXTEND3" CHARACTER VARYING(32 char),
    "LIST_EXTEND4" CHARACTER VARYING(32 char),
    "LIST_EXTEND5" CHARACTER VARYING(32 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_log" OWNER TO "SYSTEM";

--
-- Name: COLUMN "s_sms_log"."LOG_UNID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_UNID" IS 'unid';


--
-- Name: COLUMN "s_sms_log"."LOG_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_UUID" IS 'uuid';


--
-- Name: COLUMN "s_sms_log"."LOG_CDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_CDATE" IS '创建日期';


--
-- Name: COLUMN "s_sms_log"."LOG_USER_ID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_USER_ID" IS '用户编号';


--
-- Name: COLUMN "s_sms_log"."LOG_USER_NAME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_USER_NAME" IS '操作用户名称';


--
-- Name: COLUMN "s_sms_log"."LOG_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_TYPE" IS '日志类型(1.第三方操作日志2.短信发送日志)';


--
-- Name: COLUMN "s_sms_log"."LOG_DESCRIBLE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_DESCRIBLE" IS '描述';


--
-- Name: COLUMN "s_sms_log"."LOG_STATUS"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_STATUS" IS '日志状态(1.正常0.删除)';


--
-- Name: COLUMN "s_sms_log"."LOG_OPERATION_TYPE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_OPERATION_TYPE" IS '操作类型(1.新增2.修改3.删除)';


--
-- Name: COLUMN "s_sms_log"."LOG_FUNCTION_ID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_FUNCTION_ID" IS '操作功能的ID';


--
-- Name: COLUMN "s_sms_log"."LOG_C_PARAM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_C_PARAM" IS '出参';


--
-- Name: COLUMN "s_sms_log"."LOG_R_PARAM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_R_PARAM" IS '入参';


--
-- Name: COLUMN "s_sms_log"."LOG_METHOD"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_METHOD" IS '调用方法名称';


--
-- Name: COLUMN "s_sms_log"."LOG_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_UDATE" IS '最后操作时间';


--
-- Name: COLUMN "s_sms_log"."LIST_EXTEND1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LIST_EXTEND1" IS '扩展字段1';


--
-- Name: COLUMN "s_sms_log"."LIST_EXTEND2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LIST_EXTEND2" IS '扩展字段2';


--
-- Name: COLUMN "s_sms_log"."LIST_EXTEND3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LIST_EXTEND3" IS '扩展字段3';


--
-- Name: COLUMN "s_sms_log"."LIST_EXTEND4"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LIST_EXTEND4" IS '扩展字段4';


--
-- Name: COLUMN "s_sms_log"."LIST_EXTEND5"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_log"."LIST_EXTEND5" IS '扩展字段5';


--
-- Name: s_sms_log_LOG_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_log_LOG_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_log_LOG_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sms_log_LOG_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_log_LOG_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sms_log"."LOG_UNID";


--
-- Name: s_sms_reply; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sms_reply" (
    "REPLY_UNID" INTEGER NOT NULL,
    "REPLY_UUID" CHARACTER VARYING(50 char),
    "REPLY_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "REPLY_EXTENDNUMBER" CHARACTER VARYING(20 char),
    "REPLY_DEL" INTEGER,
    "REPLY_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "LIST_UUID" CHARACTER VARYING(50 char),
    "REPLY_REPLYTIME" TIMESTAMP WITHOUT TIME ZONE,
    "REPLY_MOBILE" CHARACTER VARYING(32 char),
    "REPLY_CONTENT" TEXT,
    "REPLY_EXTEND1" CHARACTER VARYING(32 char),
    "REPLY_EXTEND2" CHARACTER VARYING(32 char),
    "REPLY_EXTEND3" CHARACTER VARYING(32 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_reply" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_sms_reply"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_sms_reply" IS '短信回复表';


--
-- Name: COLUMN "s_sms_reply"."REPLY_CDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_CDATE" IS '创建时间';


--
-- Name: COLUMN "s_sms_reply"."REPLY_EXTENDNUMBER"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_EXTENDNUMBER" IS '扩展短号';


--
-- Name: COLUMN "s_sms_reply"."REPLY_DEL"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_DEL" IS '是否删除';


--
-- Name: COLUMN "s_sms_reply"."REPLY_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_UDATE" IS '修改时间';


--
-- Name: COLUMN "s_sms_reply"."LIST_UUID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."LIST_UUID" IS '关联主表uuid';


--
-- Name: COLUMN "s_sms_reply"."REPLY_REPLYTIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_REPLYTIME" IS '回复时间';


--
-- Name: COLUMN "s_sms_reply"."REPLY_MOBILE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_MOBILE" IS '回复的号码';


--
-- Name: COLUMN "s_sms_reply"."REPLY_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_CONTENT" IS '回复内容';


--
-- Name: COLUMN "s_sms_reply"."REPLY_EXTEND1"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_EXTEND1" IS '扩展字段1';


--
-- Name: COLUMN "s_sms_reply"."REPLY_EXTEND2"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_EXTEND2" IS '扩展字段2';


--
-- Name: COLUMN "s_sms_reply"."REPLY_EXTEND3"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_EXTEND3" IS '扩展字段3';


--
-- Name: s_sms_reply_REPLY_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_reply_REPLY_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_reply_REPLY_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sms_reply_REPLY_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_reply_REPLY_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sms_reply"."REPLY_UNID";


--
-- Name: s_sms_send; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."s_sms_send" (
    "SEND_UNID" INTEGER NOT NULL,
    "SEND_UUID" CHARACTER VARYING(50 char) NOT NULL,
    "SEND_CDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SEND_UDATE" TIMESTAMP WITHOUT TIME ZONE,
    "SEND_USER_ID" CHARACTER VARYING(50 char),
    "SEND_ORGAN_ID" CHARACTER VARYING(50 char),
    "SEND_CONTENT" TEXT,
    "SEND_PHONE" TEXT,
    "SEND_PRIORITY" CHARACTER VARYING(32 char),
    "SEND_ZDDXJ" CHARACTER VARYING(32 char) DEFAULT NULL::CHARACTER VARYING,
    "SEND_ZDDXJID" CHARACTER VARYING(50 char),
    "SEND_SENDIP" CHARACTER VARYING(50 char),
    "SEND_EFFECTIVE_TIME" CHARACTER VARYING(30 char),
    "SEND_SEQ_NUM" CHARACTER VARYING(25 char)
);


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_send" OWNER TO "SYSTEM";

--
-- Name: TABLE "s_sms_send"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON TABLE "risen_jhsdys_sms_rserver"."s_sms_send" IS '短信主表';


--
-- Name: COLUMN "s_sms_send"."SEND_CDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_CDATE" IS '创建时间';


--
-- Name: COLUMN "s_sms_send"."SEND_UDATE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_UDATE" IS '修改时间';


--
-- Name: COLUMN "s_sms_send"."SEND_USER_ID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_USER_ID" IS '发送用户ID';


--
-- Name: COLUMN "s_sms_send"."SEND_ORGAN_ID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_ORGAN_ID" IS '发送人组织ID';


--
-- Name: COLUMN "s_sms_send"."SEND_CONTENT"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_CONTENT" IS '发送内容';


--
-- Name: COLUMN "s_sms_send"."SEND_PHONE"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_PHONE" IS '发送号码';


--
-- Name: COLUMN "s_sms_send"."SEND_PRIORITY"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_PRIORITY" IS '发送优先级';


--
-- Name: COLUMN "s_sms_send"."SEND_ZDDXJ"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_ZDDXJ" IS '是否指定短信机0为不指定1为指定';


--
-- Name: COLUMN "s_sms_send"."SEND_ZDDXJID"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_ZDDXJID" IS '指定短信机ID';


--
-- Name: COLUMN "s_sms_send"."SEND_SENDIP"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_SENDIP" IS '发送接口IP';


--
-- Name: COLUMN "s_sms_send"."SEND_EFFECTIVE_TIME"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_EFFECTIVE_TIME" IS '短信有效时长';


--
-- Name: COLUMN "s_sms_send"."SEND_SEQ_NUM"; Type: COMMENT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

COMMENT ON COLUMN "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_SEQ_NUM" IS '短信扩展号';


--
-- Name: s_sms_send_SEND_UNID_SEQ; Type: SEQUENCE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_send_SEND_UNID_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "risen_jhsdys_sms_rserver"."s_sms_send_SEND_UNID_SEQ" OWNER TO "SYSTEM";

--
-- Name: s_sms_send_SEND_UNID_SEQ; Type: SEQUENCE OWNED BY; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER SEQUENCE "risen_jhsdys_sms_rserver"."s_sms_send_SEND_UNID_SEQ" OWNED BY "risen_jhsdys_sms_rserver"."s_sms_send"."SEND_UNID";


--
-- Name: sequence; Type: TABLE; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE TABLE "risen_jhsdys_sms_rserver"."sequence" (
    "seq_name" CHARACTER VARYING(50 char) NOT NULL,
    "current_val" INTEGER NOT NULL,
    "increment_val" INTEGER DEFAULT 1 NOT NULL
);


ALTER TABLE "risen_jhsdys_sms_rserver"."sequence" OWNER TO "SYSTEM";

--
-- Name: core_account CRACT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_account" ALTER COLUMN "CRACT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_account_CRACT_UNID_SEQ'::REGCLASS);


--
-- Name: core_config CRCFG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_config" ALTER COLUMN "CRCFG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_config_CRCFG_UNID_SEQ'::REGCLASS);


--
-- Name: core_dasvc_log DASLG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_log" ALTER COLUMN "DASLG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_dasvc_log_DASLG_UNID_SEQ'::REGCLASS);


--
-- Name: core_dasvc_service CMSVC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_service" ALTER COLUMN "CMSVC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_dasvc_service_CMSVC_UNID_SEQ'::REGCLASS);


--
-- Name: core_dict CRDCT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dict" ALTER COLUMN "CRDCT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_dict_CRDCT_UNID_SEQ'::REGCLASS);


--
-- Name: core_extsvc_orgcfgmeta CEOCM_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta" ALTER COLUMN "CEOCM_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_extsvc_orgcfgmeta_CEOCM_UNID_SEQ'::REGCLASS);


--
-- Name: core_extsvc_orgconfig CEOC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig" ALTER COLUMN "CEOC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_extsvc_orgconfig_CEOC_UNID_SEQ'::REGCLASS);


--
-- Name: core_extsvc_pub_file CEPF_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_pub_file" ALTER COLUMN "CEPF_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_extsvc_pub_file_CEPF_UNID_SEQ'::REGCLASS);


--
-- Name: core_extsvc_pub_template CEPT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_pub_template" ALTER COLUMN "CEPT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_extsvc_pub_template_CEPT_UNID_SEQ'::REGCLASS);


--
-- Name: core_extsvc_setday COSD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_setday" ALTER COLUMN "COSD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_extsvc_setday_COSD_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_business CBM_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_business" ALTER COLUMN "CBM_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_business_CBM_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_flowform CFF_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_flowform" ALTER COLUMN "CFF_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_flowform_CFF_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_fnt_btn CFFNB_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_fnt_btn" ALTER COLUMN "CFFNB_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_fnt_btn_CFFNB_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_form CFFRM_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form" ALTER COLUMN "CFFRM_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_form_CFFRM_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_form_field CFFMF_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form_field" ALTER COLUMN "CFFMF_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_form_field_CFFMF_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_form_grant CFFG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form_grant" ALTER COLUMN "CFFG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_form_grant_CFFG_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_model CFMOD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model" ALTER COLUMN "CFMOD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_model_CFMOD_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_model_field CFMDF_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model_field" ALTER COLUMN "CFMDF_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_model_field_CFMDF_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_nodeform CFN_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_nodeform" ALTER COLUMN "CFN_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_nodeform_CFN_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_table CFTAB_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table" ALTER COLUMN "CFTAB_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_table_CFTAB_UNID_SEQ'::REGCLASS);


--
-- Name: core_flex_table_col CFTBC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table_col" ALTER COLUMN "CFTBC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_flex_table_col_CFTBC_UNID_SEQ'::REGCLASS);


--
-- Name: core_function CRFNT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_function" ALTER COLUMN "CRFNT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_function_CRFNT_UNID_SEQ'::REGCLASS);


--
-- Name: core_group CRGRP_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_group" ALTER COLUMN "CRGRP_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_group_CRGRP_UNID_SEQ'::REGCLASS);


--
-- Name: core_log CRLOG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_log" ALTER COLUMN "CRLOG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_log_CRLOG_UNID_SEQ'::REGCLASS);


--
-- Name: core_menu CRMNU_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu" ALTER COLUMN "CRMNU_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_menu_CRMNU_UNID_SEQ'::REGCLASS);


--
-- Name: core_menu_grant CRGRT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu_grant" ALTER COLUMN "CRGRT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_menu_grant_CRGRT_UNID_SEQ'::REGCLASS);


--
-- Name: core_meta_column CMCMD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_column" ALTER COLUMN "CMCMD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_meta_column_CMCMD_UNID_SEQ'::REGCLASS);


--
-- Name: core_meta_data_source CMSRC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_data_source" ALTER COLUMN "CMSRC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_meta_data_source_CMSRC_UNID_SEQ'::REGCLASS);


--
-- Name: core_meta_model CMTMD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_model" ALTER COLUMN "CMTMD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_meta_model_CMTMD_UNID_SEQ'::REGCLASS);


--
-- Name: core_number_config CRNOC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_config" ALTER COLUMN "CRNOC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_number_config_CRNOC_UNID_SEQ'::REGCLASS);


--
-- Name: core_number_history CRNOH_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_history" ALTER COLUMN "CRNOH_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_number_history_CRNOH_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_client OATCT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_client" ALTER COLUMN "OATCT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_client_OATCT_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_credentials CREDT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_credentials" ALTER COLUMN "CREDT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_credentials_CREDT_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_endpoint OATEP_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_endpoint" ALTER COLUMN "OATEP_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_endpoint_OATEP_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_log OATLG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_log" ALTER COLUMN "OATLG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_log_OATLG_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_resource RESRC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_resource" ALTER COLUMN "RESRC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_resource_RESRC_UNID_SEQ'::REGCLASS);


--
-- Name: core_oauth_ticket TCKT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_ticket" ALTER COLUMN "TCKT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_oauth_ticket_TCKT_UNID_SEQ'::REGCLASS);


--
-- Name: core_operator_config CROFG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_operator_config" ALTER COLUMN "CROFG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_operator_config_CROFG_UNID_SEQ'::REGCLASS);


--
-- Name: core_org_grant ORGGRT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_grant" ALTER COLUMN "ORGGRT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_org_grant_ORGGRT_UNID_SEQ'::REGCLASS);


--
-- Name: core_org_tree CROAT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_tree" ALTER COLUMN "CROAT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_org_tree_CROAT_UNID_SEQ'::REGCLASS);


--
-- Name: core_organization CRORG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_organization" ALTER COLUMN "CRORG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_organization_CRORG_UNID_SEQ'::REGCLASS);


--
-- Name: core_resrc_file CRFILE_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_resrc_file" ALTER COLUMN "CRFILE_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_resrc_file_CRFILE_UNID_SEQ'::REGCLASS);


--
-- Name: core_session_log SESSLG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_session_log" ALTER COLUMN "SESSLG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_session_log_SESSLG_UNID_SEQ'::REGCLASS);


--
-- Name: core_setday COSD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_setday" ALTER COLUMN "COSD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_setday_COSD_UNID_SEQ'::REGCLASS);


--
-- Name: core_setday_strategy COSDS_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_setday_strategy" ALTER COLUMN "COSDS_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_setday_strategy_COSDS_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_account_mapping ACTMAP_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_account_mapping" ALTER COLUMN "ACTMAP_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_account_mapping_ACTMAP_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_action_history CUAHTR_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_action_history" ALTER COLUMN "CUAHTR_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_action_history_CUAHTR_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_app CUAPP_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app" ALTER COLUMN "CUAPP_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_app_CUAPP_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_app_grant CUAGT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app_grant" ALTER COLUMN "CUAGT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_app_grant_CUAGT_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_app_log APPLG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app_log" ALTER COLUMN "APPLG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_app_log_APPLG_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_home CRUHM_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_home" ALTER COLUMN "CRUHM_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_home_CRUHM_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_home_app HMAPP_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_home_app" ALTER COLUMN "HMAPP_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_home_app_HMAPP_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_output_grant CUOGRT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_output_grant" ALTER COLUMN "CUOGRT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_uams_output_grant_CUOGRT_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_cmd WFCMD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_cmd" ALTER COLUMN "WFCMD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_cmd_WFCMD_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_file WKFILE_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_file" ALTER COLUMN "WKFILE_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_file_WKFILE_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_flow WFFLW_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_flow" ALTER COLUMN "WFFLW_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_flow_WFFLW_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_inst_config WFCFG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config" ALTER COLUMN "WFCFG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_inst_config_WFCFG_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_inst_config_grant CWICG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant" ALTER COLUMN "CWICG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_inst_config_grant_CWICG_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_instance WFINST_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_instance" ALTER COLUMN "WFINST_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_instance_WFINST_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_node WFNDE_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_node" ALTER COLUMN "WFNDE_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_node_WFNDE_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_process WFPRO_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_process" ALTER COLUMN "WFPRO_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_process_WFPRO_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_result WFHDR_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_result" ALTER COLUMN "WFHDR_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_result_WFHDR_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_router WFRTE_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_router" ALTER COLUMN "WFRTE_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_router_WFRTE_UNID_SEQ'::REGCLASS);


--
-- Name: core_wkflw_status WFNDS_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_status" ALTER COLUMN "WFNDS_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.core_wkflw_status_WFNDS_UNID_SEQ'::REGCLASS);


--
-- Name: s_account_relation SAR_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_account_relation" ALTER COLUMN "SAR_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_account_relation_SAR_UNID_SEQ'::REGCLASS);


--
-- Name: s_machine MAC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machine" ALTER COLUMN "MAC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_machine_MAC_UNID_SEQ'::REGCLASS);


--
-- Name: s_machinetype SMT_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machinetype" ALTER COLUMN "SMT_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_machinetype_SMT_UNID_SEQ'::REGCLASS);


--
-- Name: s_machinevalue MV_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machinevalue" ALTER COLUMN "MV_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_machinevalue_MV_UNID_SEQ'::REGCLASS);


--
-- Name: s_powergroup PWG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_powergroup" ALTER COLUMN "PWG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_powergroup_PWG_UNID_SEQ'::REGCLASS);


--
-- Name: s_sction SSC_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sction" ALTER COLUMN "SSC_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sction_SSC_UNID_SEQ'::REGCLASS);


--
-- Name: s_sendnum_day USD_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sendnum_day" ALTER COLUMN "USD_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sendnum_day_USD_UNID_SEQ'::REGCLASS);


--
-- Name: s_sendnum_month USM_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sendnum_month" ALTER COLUMN "USM_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sendnum_month_USM_UNID_SEQ'::REGCLASS);


--
-- Name: s_sms_forward SSF_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_forward" ALTER COLUMN "SSF_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sms_forward_SSF_UNID_SEQ'::REGCLASS);


--
-- Name: s_sms_list LIST_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_list" ALTER COLUMN "LIST_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sms_list_LIST_UNID_SEQ'::REGCLASS);


--
-- Name: s_sms_log LOG_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_log" ALTER COLUMN "LOG_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sms_log_LOG_UNID_SEQ'::REGCLASS);


--
-- Name: s_sms_reply REPLY_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_reply" ALTER COLUMN "REPLY_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sms_reply_REPLY_UNID_SEQ'::REGCLASS);


--
-- Name: s_sms_send SEND_UNID; Type: DEFAULT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_send" ALTER COLUMN "SEND_UNID" SET DEFAULT NEXTVAL('risen_jhsdys_sms_rserver.s_sms_send_SEND_UNID_SEQ'::REGCLASS);


--
-- Name: core_uams_account_mapping ACTMAP_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_account_mapping"
    ADD CONSTRAINT "ACTMAP_UUID" UNIQUE ("ACTMAP_UUID");


--
-- Name: core_uams_app_log APPLG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app_log"
    ADD CONSTRAINT "APPLG_UUID" UNIQUE ("APPLG_UUID");


--
-- Name: core_extsvc_orgcfgmeta CEOCM_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"
    ADD CONSTRAINT "CEOCM_UUID" UNIQUE ("CEOCM_UUID");


--
-- Name: core_extsvc_orgconfig CEOC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"
    ADD CONSTRAINT "CEOC_UUID" UNIQUE ("CEOC_UUID");


--
-- Name: core_flex_form_field CFFMF_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form_field"
    ADD CONSTRAINT "CFFMF_UUID" UNIQUE ("CFFMF_UUID");


--
-- Name: core_flex_fnt_btn CFFNB_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"
    ADD CONSTRAINT "CFFNB_UUID" UNIQUE ("CFFNB_UUID");


--
-- Name: core_flex_form CFFRM_NAME; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form"
    ADD CONSTRAINT "CFFRM_NAME" UNIQUE ("CFFRM_NAME", "CFFRM_VERSION");


--
-- Name: core_flex_form CFFRM_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form"
    ADD CONSTRAINT "CFFRM_UUID" UNIQUE ("CFFRM_UUID");


--
-- Name: core_flex_model_field CFMDF_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model_field"
    ADD CONSTRAINT "CFMDF_UUID" UNIQUE ("CFMDF_UUID");


--
-- Name: core_flex_model CFMOD_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model"
    ADD CONSTRAINT "CFMOD_CODE" UNIQUE ("CFMOD_CODE", "CFMOD_VERSION");


--
-- Name: core_flex_model CFMOD_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model"
    ADD CONSTRAINT "CFMOD_UUID" UNIQUE ("CFMOD_UUID");


--
-- Name: core_flex_table CFTAB_NAME; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table"
    ADD CONSTRAINT "CFTAB_NAME" UNIQUE ("CFTAB_NAME");


--
-- Name: core_flex_table CFTAB_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table"
    ADD CONSTRAINT "CFTAB_UUID" UNIQUE ("CFTAB_UUID");


--
-- Name: core_flex_table_col CFTBC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table_col"
    ADD CONSTRAINT "CFTBC_UUID" UNIQUE ("CFTBC_UUID");


--
-- Name: core_meta_column CMCMD_CMTMD_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_column"
    ADD CONSTRAINT "CMCMD_CMTMD_UUID" UNIQUE ("CMCMD_CMTMD_UUID", "CMCMD_COLUMN_NAME");


--
-- Name: core_meta_column CMCMD_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_column"
    ADD CONSTRAINT "CMCMD_UUID" UNIQUE ("CMCMD_UUID");


--
-- Name: core_meta_data_source CMSRC_NAME; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_data_source"
    ADD CONSTRAINT "CMSRC_NAME" UNIQUE ("CMSRC_NAME");


--
-- Name: core_meta_data_source CMSRC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_data_source"
    ADD CONSTRAINT "CMSRC_UUID" UNIQUE ("CMSRC_UUID");


--
-- Name: core_dasvc_service CMSVC_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_service"
    ADD CONSTRAINT "CMSVC_CODE" UNIQUE ("CMSVC_CODE");


--
-- Name: core_dasvc_service CMSVC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_service"
    ADD CONSTRAINT "CMSVC_UUID" UNIQUE ("CMSVC_UUID");


--
-- Name: core_meta_model CMTMD_SOURCE_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_model"
    ADD CONSTRAINT "CMTMD_SOURCE_UUID" UNIQUE ("CMTMD_SOURCE_UUID", "CMTMD_TABLE_NAME");


--
-- Name: core_meta_model CMTMD_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_model"
    ADD CONSTRAINT "CMTMD_UUID" UNIQUE ("CMTMD_UUID");


--
-- Name: core_notice CN_UUID_UNIQUE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_notice"
    ADD CONSTRAINT "CN_UUID_UNIQUE" UNIQUE ("CN_UUID");


--
-- Name: core_account CRACT_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_account"
    ADD CONSTRAINT "CRACT_CODE" UNIQUE ("CRACT_CODE");


--
-- Name: s_account_relation CRACT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_account_relation"
    ADD CONSTRAINT "CRACT_UUID" UNIQUE ("CRACT_UUID");


--
-- Name: core_config CRCFG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_config"
    ADD CONSTRAINT "CRCFG_UUID" UNIQUE ("CRCFG_UUID");


--
-- Name: core_dict CRDCT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dict"
    ADD CONSTRAINT "CRDCT_UUID" UNIQUE ("CRDCT_UUID");


--
-- Name: core_oauth_credentials CREDT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_credentials"
    ADD CONSTRAINT "CREDT_UUID" UNIQUE ("CREDT_UUID");


--
-- Name: core_resrc_file CRFILE_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_resrc_file"
    ADD CONSTRAINT "CRFILE_UUID" UNIQUE ("CRFILE_UUID");


--
-- Name: core_function CRFNT_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_function"
    ADD CONSTRAINT "CRFNT_CODE" UNIQUE ("CRFNT_CODE");


--
-- Name: core_function CRFNT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_function"
    ADD CONSTRAINT "CRFNT_UUID" UNIQUE ("CRFNT_UUID");


--
-- Name: core_group CRGRP_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_group"
    ADD CONSTRAINT "CRGRP_UUID" UNIQUE ("CRGRP_UUID");


--
-- Name: core_log CRLOG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_log"
    ADD CONSTRAINT "CRLOG_UUID" UNIQUE ("CRLOG_UUID");


--
-- Name: core_menu CRMNU_INDEX_KEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu"
    ADD CONSTRAINT "CRMNU_INDEX_KEY" UNIQUE ("CRMNU_INDEX_KEY");


--
-- Name: core_menu CRMNU_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu"
    ADD CONSTRAINT "CRMNU_UUID" UNIQUE ("CRMNU_UUID");


--
-- Name: core_number_config CRNOC_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_config"
    ADD CONSTRAINT "CRNOC_CODE" UNIQUE ("CRNOC_CODE");


--
-- Name: core_number_config CRNOC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_config"
    ADD CONSTRAINT "CRNOC_UUID" UNIQUE ("CRNOC_UUID");


--
-- Name: core_number_history CRNOH_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_history"
    ADD CONSTRAINT "CRNOH_UUID" UNIQUE ("CRNOH_UUID");


--
-- Name: core_org_tree CROAT_REF_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_tree"
    ADD CONSTRAINT "CROAT_REF_UUID" UNIQUE ("CROAT_REF_UUID", "CROAT_REF_PARENT_UUID");


--
-- Name: core_org_tree CROAT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_tree"
    ADD CONSTRAINT "CROAT_UUID" UNIQUE ("CROAT_UUID");


--
-- Name: core_operator_config CROFG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_operator_config"
    ADD CONSTRAINT "CROFG_UUID" UNIQUE ("CROFG_UUID");


--
-- Name: core_organization CRORG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_organization"
    ADD CONSTRAINT "CRORG_UUID" UNIQUE ("CRORG_UUID");


--
-- Name: core_uams_app CUAPP_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app"
    ADD CONSTRAINT "CUAPP_UUID" UNIQUE ("CUAPP_UUID");


--
-- Name: core_uams_output_grant CUOGRT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_output_grant"
    ADD CONSTRAINT "CUOGRT_UUID" UNIQUE ("CUOGRT_UUID");


--
-- Name: core_dasvc_log DASLG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_log"
    ADD CONSTRAINT "DASLG_UUID" UNIQUE ("DASLG_UUID");


--
-- Name: s_sms_list LIST_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_list"
    ADD CONSTRAINT "LIST_UUID" UNIQUE ("LIST_UUID");


--
-- Name: s_machine MAC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machine"
    ADD CONSTRAINT "MAC_UUID" UNIQUE ("MAC_UUID");


--
-- Name: core_oauth_client OATCT_CLTID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_client"
    ADD CONSTRAINT "OATCT_CLTID" UNIQUE ("OATCT_CLTID");


--
-- Name: core_oauth_client OATCT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_client"
    ADD CONSTRAINT "OATCT_UUID" UNIQUE ("OATCT_UUID");


--
-- Name: core_oauth_log OATLG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_log"
    ADD CONSTRAINT "OATLG_UUID" UNIQUE ("OATLG_UUID");


--
-- Name: s_sms_reply REPLY_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_reply"
    ADD CONSTRAINT "REPLY_UUID" UNIQUE ("REPLY_UUID");


--
-- Name: s_account_relation SAR_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_account_relation"
    ADD CONSTRAINT "SAR_UUID" UNIQUE ("SAR_UUID");


--
-- Name: s_send_auth SAU_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_send_auth"
    ADD CONSTRAINT "SAU_UUID" UNIQUE ("SAU_UUID");


--
-- Name: s_segment SEG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_segment"
    ADD CONSTRAINT "SEG_UUID" UNIQUE ("SEG_UUID");


--
-- Name: s_sms_send SEND_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_send"
    ADD CONSTRAINT "SEND_UUID" UNIQUE ("SEND_UUID");


--
-- Name: core_session_log SESSLG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_session_log"
    ADD CONSTRAINT "SESSLG_UUID" UNIQUE ("SESSLG_UUID");


--
-- Name: s_op_forward SOF_UNID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_op_forward"
    ADD CONSTRAINT "SOF_UNID" UNIQUE ("SOF_UUID");


--
-- Name: s_sction SSC_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sction"
    ADD CONSTRAINT "SSC_UUID" UNIQUE ("SSC_UUID");


--
-- Name: core_oauth_ticket TCKT_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_ticket"
    ADD CONSTRAINT "TCKT_UUID" UNIQUE ("TCKT_UUID");


--
-- Name: core_wkflw_inst_config WFCFG_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"
    ADD CONSTRAINT "WFCFG_UUID" UNIQUE ("WFCFG_UUID");


--
-- Name: core_wkflw_cmd WFCMD_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_cmd"
    ADD CONSTRAINT "WFCMD_UUID" UNIQUE ("WFCMD_UUID");


--
-- Name: core_wkflw_flow WFFLW_CODE; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_flow"
    ADD CONSTRAINT "WFFLW_CODE" UNIQUE ("WFFLW_CODE", "WFFLW_VERSION");


--
-- Name: core_wkflw_flow WFFLW_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_flow"
    ADD CONSTRAINT "WFFLW_UUID" UNIQUE ("WFFLW_UUID");


--
-- Name: core_wkflw_result WFHDR_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_result"
    ADD CONSTRAINT "WFHDR_UUID" UNIQUE ("WFHDR_UUID");


--
-- Name: core_wkflw_result WFHDR_WFNDS_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_result"
    ADD CONSTRAINT "WFHDR_WFNDS_UUID" UNIQUE ("WFHDR_WFNDS_UUID", "WFHDR_OWNER_UUID");


--
-- Name: core_wkflw_instance WFINST_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_instance"
    ADD CONSTRAINT "WFINST_UUID" UNIQUE ("WFINST_UUID");


--
-- Name: core_wkflw_node WFNDE_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_node"
    ADD CONSTRAINT "WFNDE_UUID" UNIQUE ("WFNDE_UUID");


--
-- Name: core_wkflw_status WFNDS_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_status"
    ADD CONSTRAINT "WFNDS_UUID" UNIQUE ("WFNDS_UUID");


--
-- Name: core_wkflw_process WFPRO_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_process"
    ADD CONSTRAINT "WFPRO_UUID" UNIQUE ("WFPRO_UUID");


--
-- Name: core_wkflw_router WFRTE_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_router"
    ADD CONSTRAINT "WFRTE_UUID" UNIQUE ("WFRTE_UUID");


--
-- Name: core_wkflw_file WKFILE_UUID; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_file"
    ADD CONSTRAINT "WKFILE_UUID" UNIQUE ("WKFILE_UUID");


--
-- Name: core_account core_account_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_account"
    ADD CONSTRAINT "core_account_PKEY" PRIMARY KEY ("CRACT_UNID");


--
-- Name: core_actext core_actext_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_actext"
    ADD CONSTRAINT "core_actext_PKEY" PRIMARY KEY ("CRAXT_CRACT_UUID", "CRAXT_FIELD_NAME");


--
-- Name: core_config core_config_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_config"
    ADD CONSTRAINT "core_config_PKEY" PRIMARY KEY ("CRCFG_UNID");


--
-- Name: core_dasvc_log core_dasvc_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_log"
    ADD CONSTRAINT "core_dasvc_log_PKEY" PRIMARY KEY ("DASLG_UNID");


--
-- Name: core_dasvc_service core_dasvc_service_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dasvc_service"
    ADD CONSTRAINT "core_dasvc_service_PKEY" PRIMARY KEY ("CMSVC_UNID");


--
-- Name: core_dict core_dict_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_dict"
    ADD CONSTRAINT "core_dict_PKEY" PRIMARY KEY ("CRDCT_UNID");


--
-- Name: core_extsvc_orgcfgmeta core_extsvc_orgcfgmeta_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgcfgmeta"
    ADD CONSTRAINT "core_extsvc_orgcfgmeta_PKEY" PRIMARY KEY ("CEOCM_UNID");


--
-- Name: core_extsvc_orgconfig core_extsvc_orgconfig_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_orgconfig"
    ADD CONSTRAINT "core_extsvc_orgconfig_PKEY" PRIMARY KEY ("CEOC_UNID");


--
-- Name: core_extsvc_pub_file core_extsvc_pub_file_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_pub_file"
    ADD CONSTRAINT "core_extsvc_pub_file_PKEY" PRIMARY KEY ("CEPF_UNID");


--
-- Name: core_extsvc_pub_template core_extsvc_pub_template_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_pub_template"
    ADD CONSTRAINT "core_extsvc_pub_template_PKEY" PRIMARY KEY ("CEPT_UNID");


--
-- Name: core_extsvc_setday core_extsvc_setday_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_extsvc_setday"
    ADD CONSTRAINT "core_extsvc_setday_PKEY" PRIMARY KEY ("COSD_UNID");


--
-- Name: core_flex_business core_flex_business_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_business"
    ADD CONSTRAINT "core_flex_business_PKEY" PRIMARY KEY ("CBM_UNID");


--
-- Name: core_flex_flowform core_flex_flowform_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_flowform"
    ADD CONSTRAINT "core_flex_flowform_PKEY" PRIMARY KEY ("CFF_UNID");


--
-- Name: core_flex_fnt_btn core_flex_fnt_btn_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_fnt_btn"
    ADD CONSTRAINT "core_flex_fnt_btn_PKEY" PRIMARY KEY ("CFFNB_UNID");


--
-- Name: core_flex_form core_flex_form_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form"
    ADD CONSTRAINT "core_flex_form_PKEY" PRIMARY KEY ("CFFRM_UNID");


--
-- Name: core_flex_form_field core_flex_form_field_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form_field"
    ADD CONSTRAINT "core_flex_form_field_PKEY" PRIMARY KEY ("CFFMF_UNID");


--
-- Name: core_flex_form_grant core_flex_form_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_form_grant"
    ADD CONSTRAINT "core_flex_form_grant_PKEY" PRIMARY KEY ("CFFG_UNID");


--
-- Name: core_flex_model core_flex_model_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model"
    ADD CONSTRAINT "core_flex_model_PKEY" PRIMARY KEY ("CFMOD_UNID");


--
-- Name: core_flex_model_field core_flex_model_field_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_model_field"
    ADD CONSTRAINT "core_flex_model_field_PKEY" PRIMARY KEY ("CFMDF_UNID");


--
-- Name: core_flex_nodeform core_flex_nodeform_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_nodeform"
    ADD CONSTRAINT "core_flex_nodeform_PKEY" PRIMARY KEY ("CFN_UNID");


--
-- Name: core_flex_table core_flex_table_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table"
    ADD CONSTRAINT "core_flex_table_PKEY" PRIMARY KEY ("CFTAB_UNID");


--
-- Name: core_flex_table_col core_flex_table_col_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_flex_table_col"
    ADD CONSTRAINT "core_flex_table_col_PKEY" PRIMARY KEY ("CFTBC_UNID");


--
-- Name: core_function core_function_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_function"
    ADD CONSTRAINT "core_function_PKEY" PRIMARY KEY ("CRFNT_UNID");


--
-- Name: core_group core_group_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_group"
    ADD CONSTRAINT "core_group_PKEY" PRIMARY KEY ("CRGRP_UNID");


--
-- Name: core_log core_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_log"
    ADD CONSTRAINT "core_log_PKEY" PRIMARY KEY ("CRLOG_UNID");


--
-- Name: core_menu core_menu_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu"
    ADD CONSTRAINT "core_menu_PKEY" PRIMARY KEY ("CRMNU_UNID");


--
-- Name: core_menu_grant core_menu_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_menu_grant"
    ADD CONSTRAINT "core_menu_grant_PKEY" PRIMARY KEY ("CRGRT_UNID");


--
-- Name: core_meta_column core_meta_column_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_column"
    ADD CONSTRAINT "core_meta_column_PKEY" PRIMARY KEY ("CMCMD_UNID");


--
-- Name: core_meta_data_source core_meta_data_source_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_data_source"
    ADD CONSTRAINT "core_meta_data_source_PKEY" PRIMARY KEY ("CMSRC_UNID");


--
-- Name: core_meta_model core_meta_model_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_meta_model"
    ADD CONSTRAINT "core_meta_model_PKEY" PRIMARY KEY ("CMTMD_UNID");


--
-- Name: core_notice core_notice_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_notice"
    ADD CONSTRAINT "core_notice_PKEY" PRIMARY KEY ("CN_UNID");


--
-- Name: core_number_config core_number_config_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_config"
    ADD CONSTRAINT "core_number_config_PKEY" PRIMARY KEY ("CRNOC_UNID");


--
-- Name: core_number_history core_number_history_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_number_history"
    ADD CONSTRAINT "core_number_history_PKEY" PRIMARY KEY ("CRNOH_UNID");


--
-- Name: core_oauth_client core_oauth_client_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_client"
    ADD CONSTRAINT "core_oauth_client_PKEY" PRIMARY KEY ("OATCT_UNID");


--
-- Name: core_oauth_credentials core_oauth_credentials_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_credentials"
    ADD CONSTRAINT "core_oauth_credentials_PKEY" PRIMARY KEY ("CREDT_UNID");


--
-- Name: core_oauth_endpoint core_oauth_endpoint_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_endpoint"
    ADD CONSTRAINT "core_oauth_endpoint_PKEY" PRIMARY KEY ("OATEP_UNID");


--
-- Name: core_oauth_log core_oauth_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_log"
    ADD CONSTRAINT "core_oauth_log_PKEY" PRIMARY KEY ("OATLG_UNID");


--
-- Name: core_oauth_resource core_oauth_resource_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_resource"
    ADD CONSTRAINT "core_oauth_resource_PKEY" PRIMARY KEY ("RESRC_UNID");


--
-- Name: core_oauth_ticket core_oauth_ticket_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_oauth_ticket"
    ADD CONSTRAINT "core_oauth_ticket_PKEY" PRIMARY KEY ("TCKT_UNID");


--
-- Name: core_operator_config core_operator_config_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_operator_config"
    ADD CONSTRAINT "core_operator_config_PKEY" PRIMARY KEY ("CROFG_UNID");


--
-- Name: core_org_grant core_org_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_grant"
    ADD CONSTRAINT "core_org_grant_PKEY" PRIMARY KEY ("ORGGRT_UNID");


--
-- Name: core_org_tree core_org_tree_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_org_tree"
    ADD CONSTRAINT "core_org_tree_PKEY" PRIMARY KEY ("CROAT_UNID");


--
-- Name: core_organization core_organization_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_organization"
    ADD CONSTRAINT "core_organization_PKEY" PRIMARY KEY ("CRORG_UNID");


--
-- Name: core_owner_grant core_owner_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_owner_grant"
    ADD CONSTRAINT "core_owner_grant_PKEY" PRIMARY KEY ("CROGT_CRACT_UUID", "CROGT_OWNER_UUID", "CROGT_RLT_TYPE");


--
-- Name: core_pubext_fields core_pubext_fields_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_pubext_fields"
    ADD CONSTRAINT "core_pubext_fields_PKEY" PRIMARY KEY ("CREXT_ENTITY_UUID", "CREXT_NAME");


--
-- Name: core_resrc_file core_resrc_file_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_resrc_file"
    ADD CONSTRAINT "core_resrc_file_PKEY" PRIMARY KEY ("CRFILE_UNID");


--
-- Name: core_session_log core_session_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_session_log"
    ADD CONSTRAINT "core_session_log_PKEY" PRIMARY KEY ("SESSLG_UNID");


--
-- Name: core_setday core_setday_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_setday"
    ADD CONSTRAINT "core_setday_PKEY" PRIMARY KEY ("COSD_UNID");


--
-- Name: core_setday_strategy core_setday_strategy_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_setday_strategy"
    ADD CONSTRAINT "core_setday_strategy_PKEY" PRIMARY KEY ("COSDS_UNID");


--
-- Name: core_uams_account_mapping core_uams_account_mapping_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_account_mapping"
    ADD CONSTRAINT "core_uams_account_mapping_PKEY" PRIMARY KEY ("ACTMAP_UNID");


--
-- Name: core_uams_action_history core_uams_action_history_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_action_history"
    ADD CONSTRAINT "core_uams_action_history_PKEY" PRIMARY KEY ("CUAHTR_UNID");


--
-- Name: core_uams_app core_uams_app_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app"
    ADD CONSTRAINT "core_uams_app_PKEY" PRIMARY KEY ("CUAPP_UNID");


--
-- Name: core_uams_app_grant core_uams_app_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app_grant"
    ADD CONSTRAINT "core_uams_app_grant_PKEY" PRIMARY KEY ("CUAGT_UNID");


--
-- Name: core_uams_app_log core_uams_app_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_app_log"
    ADD CONSTRAINT "core_uams_app_log_PKEY" PRIMARY KEY ("APPLG_UNID");


--
-- Name: core_uams_home core_uams_home_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_home"
    ADD CONSTRAINT "core_uams_home_PKEY" PRIMARY KEY ("CRUHM_UNID");


--
-- Name: core_uams_home_app core_uams_home_app_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_home_app"
    ADD CONSTRAINT "core_uams_home_app_PKEY" PRIMARY KEY ("HMAPP_UNID");


--
-- Name: core_uams_output_grant core_uams_output_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_uams_output_grant"
    ADD CONSTRAINT "core_uams_output_grant_PKEY" PRIMARY KEY ("CUOGRT_UNID");


--
-- Name: core_wkflw_cmd core_wkflw_cmd_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_cmd"
    ADD CONSTRAINT "core_wkflw_cmd_PKEY" PRIMARY KEY ("WFCMD_UNID");


--
-- Name: core_wkflw_file core_wkflw_file_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_file"
    ADD CONSTRAINT "core_wkflw_file_PKEY" PRIMARY KEY ("WKFILE_UNID");


--
-- Name: core_wkflw_flow core_wkflw_flow_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_flow"
    ADD CONSTRAINT "core_wkflw_flow_PKEY" PRIMARY KEY ("WFFLW_UNID");


--
-- Name: core_wkflw_inst_config core_wkflw_inst_config_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config"
    ADD CONSTRAINT "core_wkflw_inst_config_PKEY" PRIMARY KEY ("WFCFG_UNID");


--
-- Name: core_wkflw_inst_config_grant core_wkflw_inst_config_grant_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_inst_config_grant"
    ADD CONSTRAINT "core_wkflw_inst_config_grant_PKEY" PRIMARY KEY ("CWICG_UNID");


--
-- Name: core_wkflw_instance core_wkflw_instance_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_instance"
    ADD CONSTRAINT "core_wkflw_instance_PKEY" PRIMARY KEY ("WFINST_UNID");


--
-- Name: core_wkflw_node core_wkflw_node_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_node"
    ADD CONSTRAINT "core_wkflw_node_PKEY" PRIMARY KEY ("WFNDE_UNID");


--
-- Name: core_wkflw_process core_wkflw_process_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_process"
    ADD CONSTRAINT "core_wkflw_process_PKEY" PRIMARY KEY ("WFPRO_UNID");


--
-- Name: core_wkflw_result core_wkflw_result_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_result"
    ADD CONSTRAINT "core_wkflw_result_PKEY" PRIMARY KEY ("WFHDR_UNID");


--
-- Name: core_wkflw_router core_wkflw_router_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_router"
    ADD CONSTRAINT "core_wkflw_router_PKEY" PRIMARY KEY ("WFRTE_UNID");


--
-- Name: core_wkflw_status core_wkflw_status_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."core_wkflw_status"
    ADD CONSTRAINT "core_wkflw_status_PKEY" PRIMARY KEY ("WFNDS_UNID");


--
-- Name: s_account_relation s_account_relation_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_account_relation"
    ADD CONSTRAINT "s_account_relation_PKEY" PRIMARY KEY ("SAR_UNID");


--
-- Name: s_machine s_machine_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machine"
    ADD CONSTRAINT "s_machine_PKEY" PRIMARY KEY ("MAC_UNID");


--
-- Name: s_machinetype s_machinetype_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machinetype"
    ADD CONSTRAINT "s_machinetype_PKEY" PRIMARY KEY ("SMT_UNID");


--
-- Name: s_machinevalue s_machinevalue_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_machinevalue"
    ADD CONSTRAINT "s_machinevalue_PKEY" PRIMARY KEY ("MV_UNID");


--
-- Name: s_op_forward s_op_forward_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_op_forward"
    ADD CONSTRAINT "s_op_forward_PKEY" PRIMARY KEY ("SOF_UNID");


--
-- Name: s_powergroup s_powergroup_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_powergroup"
    ADD CONSTRAINT "s_powergroup_PKEY" PRIMARY KEY ("PWG_UNID");


--
-- Name: s_sction s_sction_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sction"
    ADD CONSTRAINT "s_sction_PKEY" PRIMARY KEY ("SSC_UNID");


--
-- Name: s_segment s_segment_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_segment"
    ADD CONSTRAINT "s_segment_PKEY" PRIMARY KEY ("SEG_UNID");


--
-- Name: s_send_auth s_send_auth_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_send_auth"
    ADD CONSTRAINT "s_send_auth_PKEY" PRIMARY KEY ("SAU_UNID");


--
-- Name: s_sendnum_day s_sendnum_day_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sendnum_day"
    ADD CONSTRAINT "s_sendnum_day_PKEY" PRIMARY KEY ("USD_UNID");


--
-- Name: s_sendnum_month s_sendnum_month_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sendnum_month"
    ADD CONSTRAINT "s_sendnum_month_PKEY" PRIMARY KEY ("USM_UNID");


--
-- Name: s_sms_forward s_sms_forward_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_forward"
    ADD CONSTRAINT "s_sms_forward_PKEY" PRIMARY KEY ("SSF_UNID");


--
-- Name: s_sms_list s_sms_list_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_list"
    ADD CONSTRAINT "s_sms_list_PKEY" PRIMARY KEY ("LIST_UNID");


--
-- Name: s_sms_log s_sms_log_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_log"
    ADD CONSTRAINT "s_sms_log_PKEY" PRIMARY KEY ("LOG_UNID");


--
-- Name: s_sms_reply s_sms_reply_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_reply"
    ADD CONSTRAINT "s_sms_reply_PKEY" PRIMARY KEY ("REPLY_UNID");


--
-- Name: s_sms_send s_sms_send_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."s_sms_send"
    ADD CONSTRAINT "s_sms_send_PKEY" PRIMARY KEY ("SEND_UNID");


--
-- Name: sequence sequence_PKEY; Type: CONSTRAINT; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

ALTER TABLE ONLY "risen_jhsdys_sms_rserver"."sequence"
    ADD CONSTRAINT "sequence_PKEY" PRIMARY KEY ("seq_name");


--
-- Name: CRGRP_INDEX_KEY; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX CRGRP_INDEX_KEY ON risen_jhsdys_sms_rserver.core_group USING BTREE (CRGRP_INDEX_KEY);


--
-- Name: Index_CRCFG_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRCFG_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_config USING BTREE (CRCFG_LEVEL_CODE);


--
-- Name: Index_CRCFG_PATH_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRCFG_PATH_CODE ON risen_jhsdys_sms_rserver.core_config USING BTREE (CRCFG_PATH_CODE);


--
-- Name: Index_CRDCT_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRDCT_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_dict USING BTREE (CRDCT_LEVEL_CODE);


--
-- Name: Index_CRDCT_PATH_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRDCT_PATH_CODE ON risen_jhsdys_sms_rserver.core_dict USING BTREE (CRDCT_PATH_CODE);


--
-- Name: Index_CRFNT_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRFNT_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_function USING BTREE (CRFNT_LEVEL_CODE);


--
-- Name: Index_CRGRP_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRGRP_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_group USING BTREE (CRGRP_LEVEL_CODE);


--
-- Name: Index_CRMNU_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRMNU_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_menu USING BTREE (CRMNU_LEVEL_CODE);


--
-- Name: Index_CROAT_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CROAT_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_org_tree USING BTREE (CROAT_LEVEL_CODE);


--
-- Name: Index_CROFG_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CROFG_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_operator_config USING BTREE (CROFG_LEVEL_CODE);


--
-- Name: Index_CROFG_PATH_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CROFG_PATH_CODE ON risen_jhsdys_sms_rserver.core_operator_config USING BTREE (CROFG_PATH_CODE);


--
-- Name: Index_CRORG_LEVEL_CODE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX Index_CRORG_LEVEL_CODE ON risen_jhsdys_sms_rserver.core_organization USING BTREE (CRORG_LEVEL_CODE);


--
-- Name: LIST_SNEDMACHINE; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX LIST_SNEDMACHINE ON risen_jhsdys_sms_rserver.s_sms_list USING BTREE (LIST_SNEDMACHINE);


--
-- Name: PWG_UUID; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX PWG_UUID ON risen_jhsdys_sms_rserver.s_powergroup USING BTREE (PWG_UUID);


--
-- Name: WFNDE_FLOW_UUID; Type: INDEX; Schema: risen_jhsdys_sms_rserver; Owner: SYSTEM
--

CREATE INDEX WFNDE_FLOW_UUID ON risen_jhsdys_sms_rserver.core_wkflw_node USING BTREE (WFNDE_FLOW_UUID, WFNDE_CODE);


--
-- Kingbase database dump complete
--

