DROP SEQUENCE notices_seq;
DROP TABLE NOTICES;

DROP SEQUENCE qna_seq;
DROP TABLE QNA;

DROP SEQUENCE members_seq;
DROP TABLE MEMBERS;

DROP SEQUENCE admin_seq;
DROP TABLE ADMINS;

/* 회원 */
CREATE TABLE MEMBERS
(
	ID			VARCHAR2(100)	PRIMARY KEY,
	PWD 		VARCHAR2(100)	NOT NULL,
	NAME 		VARCHAR2(100)	NOT NULL,
	BIRTH		DATE,
	GENDER		VARCHAR2(1),
	PHONE 		VARCHAR2(50)	NOT NULL,
	EMAIL 		VARCHAR2(50)	NOT NULL,
	REGDATE 	DATE			DEFAULT SYSDATE,
	ISMEMBER	VARCHAR2(1)		DEFAULT 'Y'
);

INSERT INTO MEMBERS values ('kim','kim','kim','2017-10-10','F','0107501919','hyunhee@naver.com','2016-12-12','1');

select * from members;

/* 관리자 */
CREATE TABLE ADMINS
(
	ID			VARCHAR2(100)	PRIMARY KEY,
	PWD 		VARCHAR2(100)	NOT NULL,
	NAME 		VARCHAR2(100)	NOT NULL,
	JOB 		VARCHAR2(100)	NOT NULL
);

INSERT INTO ADMINS values ('admin','admin','김수빈', 'CEO');

SELECT * FROM ADMINS;

/* 공지사항 */
CREATE TABLE NOTICES
(
	num				NUMBER			PRIMARY KEY,
	title			VARCHAR2(100)	NOT NULL,
	contents		VARCHAR2(500)	NOT NULL,
	regdate			DATE,
	hit				NUMBER,
	orgFileName		VARCHAR2(100),
	saveFileName	VARCHAR2(100),
	fileSize		NUMBER,
	adminId			VARCHAR2(100)			REFERENCES ADMINS(ID)
);

CREATE SEQUENCE notices_seq;

INSERT INTO NOTICES(num, title, contents, regdate, hit, adminId) values (1, '공지입니다','여기는 공지사항란', sysdate, 3, 'admin');

/* Q&A 테이블*/
CREATE TABLE QNA
(
	num			NUMBER			PRIMARY KEY,
	MEMBERSID	VARCHAR2(100)	REFERENCES MEMBERS(ID),
	title		VARCHAR2(100)	NOT NULL,	
	contents	VARCHAR2(500)	NOT NULL,
	hit			NUMBER			DEFAULT 0,
	filepath	VARCHAR2(100),
	writedate	DATE			DEFAULT SYSDATE	
);

CREATE SEQUENCE qna_seq;