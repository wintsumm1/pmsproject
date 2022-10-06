SELECT * FROM MINUTES;

CREATE TABLE MINUTES (
	minutesno NUMBER PRIMARY KEY,
	NO varchar2(200), --REFERENCES member06(no),
	title varchar2(200) NOT NULL,
	contents varchar2(4000) NOT NULL,
	writer varchar2(100) NOT NULL,
	MINUTESMEMBER VARCHAR2(100) NOT NULL,
	readcnt varchar2(100),
	regdte DATE,
	uptdte DATE
);

DROP TABLE minutes;
DROP SEQUENCE minutesno_seq;
CREATE SEQUENCE minutesno_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;

INSERT INTO minutes VALUES (minutesno_seq.nextval,1080,'Project process', '# 프로젝트 회의록입니다.','홍길동','유재석', 0, sysdate, sysdate);
INSERT INTO minutes VALUES (minutesno_seq.nextval,2,'Project start', '# 프로젝트 회의록입니다.','이지지', 0, sysdate, sysdate);
INSERT INTO minutes VALUES (minutesno_seq.nextval, #{no}, #{title}, #{contents}, #{writer}, 0, sysdate, sysdate )

SELECT * FROM MEMBER06;
SELECT * FROM minutes;

ALTER TABLE MINUTES ADD MINUTESMEMBER VARCHAR2(100);

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
SELECT * FROM minutes;
SELECT * FROM MEMBER06;
		SELECT * 
		FROM (
			 SELECT rownum cnt, m.*
			 FROM minutes m, member06 b
			 WHERE 1=1
			 AND m.NO = b.NO  
			 AND title LIKE '%'||''||'%'
			 AND writer LIKE '%'||''||'%'
			 ORDER BY minutesno DESC);
			
		WHERE cnt BETWEEN #{start} AND #{end};
		
	INSERT INTO MINUTES values(1080,4,'kkk13@naver.com','2222','박추자','user','010-2222-2222','사원');	
	COMMIT;
	
SELECT MINUTESNO, TITLE, CONTENTS, ID "WITER", READCNT, REGDTE, UPTDTE
FROM MINUTES M
JOIN MEMBER06 B ON(M.NO = B.NO);
