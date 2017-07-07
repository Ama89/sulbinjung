CREATE TABLE MEMBERS
(
	NUM 		NUMBER			PRIMARY KEY,
	ID			VARCHAR2(100)	NOT NULL,
	PWD 		VARCHAR2(100)	NOT NULL,
	NAME 		VARCHAR2(100)	NOT NULL,
	BIRTH		DATE,
	ISMAN		VARCHAR2(1),
	PHONE 		VARCHAR2(50)	NOT NULL,
	EMAIL 		VARCHAR2(50)	NOT NULL,
	REGDATE 	DATE			DEFAULT SYSDATE,
	ISMEMBER	VARCHAR2(1)		DEFAULT '1'
);

ALTER TABLE  MEMBERS
RENAME COLUMN ISMAN TO GENDER;

CREATE SEQUENCE members_seq;

INSERT INTO MEMBERS values (1,'kim','kim','kim','2017-10-10','y','0107501919','hyunhee@naver.com','2016-12-12','1');

select * from members;

/* 관리자 */
CREATE TABLE ADMINS
(
	NUM 		NUMBER			PRIMARY KEY,
	ID			VARCHAR2(100)	NOT NULL,
	PWD 		VARCHAR2(100)	NOT NULL,
	NAME 		VARCHAR2(100)	NOT NULL,
	JOB 		VARCHAR2(100)	NOT NULL
);

CREATE SEQUENCE admin_seq;

INSERT INTO ADMINS values (1,'admin','admin','김수빈', 'CEO');

SELECT * FROM ADMINS;

/* 공지사항 */
CREATE TABLE NOTICES
(
	num			NUMBER			PRIMARY KEY,
	title		VARCHAR2(100)	NOT NULL,
	ADMINNUM	NUMBER			REFERENCES ADMINS(NUM),
	writedate	DATE			DEFAULT SYSDATE,
	hit			NUMBER,
	contents	VARCHAR2(500)	NOT NULL,
	filepath	VARCHAR2(100)
);

CREATE SEQUENCE notices_seq;

INSERT INTO NOTICES values (1, '공지입니다', 1, sysdate, 3,'여기는 공지사항란','Penguins.jpg');

/* FAQ 테이블*/
CREATE TABLE FAQ
(
	NUM 			NUMBER			PRIMARY KEY,
	TITLE			VARCHAR2(100)	NOT NULL,
	CONTENTS 		VARCHAR2(500)	NOT NULL
);

CREATE SEQUENCE faq_seq;

/* Q&A 테이블*/
CREATE TABLE QNA
(
	num			NUMBER			PRIMARY KEY,
	membernum	NUMBER			REFERENCES MEMBERS(NUM),
	title		VARCHAR2(100)	NOT NULL,	
	contents	VARCHAR2(500)	NOT NULL,
	hit			NUMBER			DEFAULT 0,
	filepath	VARCHAR2(100),
	writedate	DATE			DEFAULT SYSDATE	
);

CREATE SEQUENCE qna_seq;

/* 공지사항 FILEPATH 컬럼 NULL 허용*/
ALTER TABLE NOTICES MODIFY FILEPATH VARCHAR2(100);

SELECT n.num,a.job,title,hit,TO_CHAR(writedate,'YYYY.MM.DD AM HH:MI') writedate, contents, filepath
FROM notices n, admins a
WHERE n.adminnum=a.num
ORDER BY num DESC;

SELECT b.job
FROM NOTICES a
JOIN admins b ON(a.adminnum=b.num)
ORDER BY num DESC;


INSERT INTO NOTICES (num,title,adminnum,contents,writedate,filepath) SELECT notices_seq.NEXTVAL,'test',1,'test',SYSDATE,'1' FROM notices, admins WHERE notices.adminnum=admins.num;

SELECT * FROM notices;