CREATE TABLE P2P_EVENT_LOG(
	CASE_ID			varchar(40)		NOT NULL,
	EVENT_ID		varchar(40)		NOT NULL,
	EVENT_NAME  	varchar(40)		NOT NULL,
	EVENT_START		datetime		NOT NULL,
	EVENT_END		datetime 		NOT NULL
);