/*
Braxton Phillips
DBMS 130 - M03 Hands-On Assignment - Constructing the Database
Due 2/8/2021
*/

CREATE TABLE "D_TRACK_LISTINGS"
("SONG_ID" NUMBER(5,0) CONSTRAINT "SONG_ID_NN" NOT NULL ENABLE,
"CD_NUMBER" NUMBER(5,0) CONSTRAINT "CD_NUMBER_NN" NOT NULL ENABLE,
"TRACK" NUMBER(2,0) CONSTRAINT "TRACK_NN" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_PLAY_LIST_ITEMS"
("EVENT_ID" NUMBER(5,0) CONSTRAINT "EVENT_ID_NN" NOT NULL ENABLE,
"SONG_ID" NUMBER(5,0) CONSTRAINT "ITEMS_SONG_ID_NN" NOT NULL ENABLE,
"COMMENTS" VARCHAR2(80)
USING INDEX ENABLE
);

CREATE TABLE "D_SONGS"
("ID" NUMBER(5,0) CONSTRAINT "SONGS_ID_NN" NOT NULL ENABLE,
"TITLE" VARCHAR2(50) CONSTRAINT "SONGS_TITLE_NN" NOT NULL ENABLE,
"DURATION" VARCHAR2(20),
"ARTIST" VARCHAR2(20),
"TYPE_CODE" NUMBER(10,0) CONSTRAINT "SONGS_CODE_NN" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_TYPES"
("CODE" NUMBER(10,0) CONSTRAINT "TYPES_CODE" NOT NULL ENABLE,
"DESCRIPTION" VARCHAR2(50) CONSTRAINT "TYPES_DESCRPT_NN" NOT NULL ENABLE
USING INDEX ENABLE
);
CREATE TABLE "D_JOB_ASSIGNMENTS"
("PARTNER_ID" NUMBER(5,0) CONSTRAINT "ASSIGN_PARTNER_ID_NN" NOT NULL ENABLE,
"EVENT_ID" NUMBER(5,0) CONSTRAINT "ASSIGN_EVENT_ID_NN" NOT NULL ENABLE,
"JOB_DATE" DATE CONSTRAINT "ASSIGN_JOB_DATE" NOT NULL ENABLE,
"STATUS" VARCHAR2(50)
USING INDEX ENABLE
);

CREATE TABLE "D_PARTNERS"
("ID" NUMBER(5,0) CONSTRAINT "PARTNERS_ID_NN" NOT NULL ENABLE,
"FIRST_NAME" VARCHAR2(25) CONSTRAINT "PARTNERS_FIRST_NAME_NN" NOT NULL ENABLE,
"LAST_NAME" VARCHAR2(30) CONSTRAINT "PARTNERS_LAST_NAME_NN" NOT NULL ENABLE,
"EXPERTISE" VARCHAR2(25),
"SPECIALTY" VARCHAR2(25),
"AUTH_EXPENSE_AMT" NUMBER(8,2),
"MANAGER_ID" NUMBER(5,0),
"PARTNER_TYPE" VARCHAR2(25) CONSTRAINT "PARTNERS_TYPE_NN" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_EVENTS"
("ID" NUMBER(5,0)CONSTRAINT "EVENTS_ID_NN" NOT NULL ENABLE,
"NAME" VARCHAR2(50) CONSTRAINT "EVENTS_NAME_NN" NOT NULL ENABLE,
"EVENT_DATE" DATE CONSTRAINT "EVENTS_DATE_NN" NOT NULL ENABLE,
"DESCRIPTION" VARCHAR2(50),
"COST" NUMBER(8,2) CONSTRAINT "EVENTS_COST_NN" NOT NULL ENABLE,
"VENUE_ID" NUMBER(5,0) CONSTRAINT "EVENT_VENUE_NN" NOT NULL ENABLE,
"PACKAGE_CODE" NUMBER(10,0) CONSTRAINT "EVENT_PACK_NN" NOT NULL ENABLE,
"THEME_CODE" NUMBER(10,0) CONSTRAINT "EVENT_THEME_NN" NOT NULL ENABLE,
"CLIENT_NUMBER" NUMBER(5,0) CONSTRAINT "EVENT_CLIENT_NN" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_VENUES"
("ID" NUMBER(5) CONSTRAINT "VENUE_ID_NN" NOT NULL ENABLE,
"LOC_TYPE" VARCHAR2(30) CONSTRAINT "VENUE_LOC" NOT NULL ENABLE,
"ADDRESS" VARCHAR2(100) CONSTRAINT "VENUE_ADDRESS_NN" NOT NULL ENABLE,
"RENTAL_FEE" VARCHAR2(50) CONSTRAINT "VENUE_RENTAL_FEE_NN" NOT NULL ENABLE,
"COMMENTS" VARCHAR2(100)
USING INDEX ENABLE
);

CREATE TABLE "D_THEMES"
("CODE" NUMBER(10,0) CONSTRAINT "THEME_CODE_NN" NOT NULL ENABLE,
"DESCRIPTION" VARCHAR2(10) CONSTRAINT "THEME_DESCRI_NN" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_PACKAGES"
("CODE" NUMBER(10,0) CONSTRAINT "PACK_CODE_NN" NOT NULL ENABLE,
"LOW_RANGE" NUMBER(6,0) CONSTRAINT "PACK_LOW_RANGE" NOT NULL ENABLE,
"HIGH_RANGE" NUMBER(6,0) CONSTRAINT "PACK_HIGH_RANGE" NOT NULL ENABLE
USING INDEX ENABLE
);

CREATE TABLE "D_CLIENTS"
("CLIENT_NUMBER" NUMBER(5,0) CONSTRAINT "CLIENT_NUM_NN" NOT NULL ENABLE,
"FIRST_NAME" VARCHAR2(25) CONSTRAINT "CLIENT_FIRST_NAME" NOT NULL ENABLE,
"LAST_NAME" VARCHAR2(30) CONSTRAINT "CLIENT_LAST_NAME" NOT NULL ENABLE,
"PHONE" NUMBER(15,0) CONSTRAINT "CLIENT_PHONE" NOT NULL ENABLE,
"EMAIL" VARCHAR2(50)
USING INDEX ENABLE
);

CREATE TABLE "D_CDS"
("CD_NUMBER" NUMBER(5,0) CONSTRAINT "CD_NUM" NOT NULL ENABLE,
"TITLE" VARCHAR2(50) CONSTRAINT "CD_TITLE" NOT NULL ENABLE,
"PRODUCER" VARCHAR2(50) CONSTRAINT "CD_PRODUCER" NOT NULL ENABLE,
"YEAR" VARCHAR2(4)
USING INDEX ENABLE
);
