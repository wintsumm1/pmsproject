SELECT * FROM MINUTES;

CREATE TABLE MINUTES (
	minutesno NUMBER PRIMARY KEY,
	NO varchar2(200) REFERENCES member06(no),
	title varchar2(200) NOT NULL,
	contents varchar2(4000) NOT NULL,
	writer varchar2(100) NOT NULL,
	readcnt varchar2(100),
	regdte DATE,
	uptdte DATE
);

DROP TABLE minutes;

CREATE SEQUENCE minutesno_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;

INSERT INTO minutes VALUES (minutesno_seq.nextval,1,'Project process', '# 프로젝트 회의록입니다.','홍길동', 0, sysdate, sysdate);

SELECT * FROM MEMBER06;



CREATE TABLE risk(
	risk_no NUMBER PRIMARY KEY,
	id NUMBER REFERENCES project(id),
	NO varchar2(200) REFERENCES member06(no),
	reqdate varchar2(30) NOT NULL,
	totdate varchar2(100) NOT NULL,
	req_cause varchar2(200) NOT NULL,
	situation varchar2(200) NOT NULL,
	repname varchar2(50),
	companion varchar2(2000)
);