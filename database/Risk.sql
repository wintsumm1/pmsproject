SELECT * FROM PROJECT;
SELECT * FROM member06;
SELECT * FROM admin;
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,'back-end','def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	INSERT INTO member06 values(NO_seq.nextval,'front-end','abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
CREATE TABLE project(
	id NUMBER PRIMARY KEY,
	owner_id NUMBER,
	text VARCHAR2(60) NOT NULL,
	start_date varchar2(30) NOT NULL,
	duration NUMBER NOT NULL,
	parent NUMBER DEFAULT 0,
	progress NUMBER DEFAULT 0,
	open1 number,
	contents varchar2(300),
	createdAt Date
)
;
CREATE TABLE member06(
	NO varchar2(200) PRIMARY KEY,
	deptno NUMBER,
	id varchar2(100),
	pass varchar2(100),
	name varchar2(50),
	auth varchar2(50)CONSTRAINT member06_auth_ck CHECK(auth IN('관리자','일반사용자')),
	tel varchar2(100),
	mrg varchar2(50) CONSTRAINT member06_mrg_ck CHECK(mrg IN('부장','차장','과장','대리','사원'))
);

DROP TABLE risk;
SELECT*FROM risk;
SELECT * FROM MEMBER06 m ;
SELECT*FROM issue;
SELECT * FROM PROJECT p ;
DELETE FROM PROJECT WHERE ID =40;
CREATE TABLE risk(
	risk_no NUMBER PRIMARY KEY,
	id NUMBER,
	reqmemno varchar2(200), --REFERENCES member06(no),
	reqdate varchar2(30) NOT NULL,
	totdate varchar2(100) NOT NULL,
	req_cause varchar2(200) NOT NULL,
	situation varchar2(200) NOT NULL,
	repmemno varchar2(50),
	companion varchar2(2000),
	CONSTRAINT risk_pk
		FOREIGN KEY (id)
		REFERENCES project(id)
		ON DELETE CASCADE	
);
SELECT id 
FROM project 
WHERE text='간트차트';
SELECT * FROM risk;
INSERT INTO risk 
values(risk_seq.nextval,
	(SELECT id 
	FROM project 
	WHERE text='간트차트'),(SELECT no 
	FROM member06 
	WHERE name='홍길동'),sysdate,'2022/08/01~2022/08/05','휴가','신청','박추자','dd');
INSERT INTO risk values(risk_seq.nextval,1,1000,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','1001','dd');
INSERT INTO risk values(4,1,,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','박추자','dd');
INSERT INTO risk values(5,1,3,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','박추자','dd');
INSERT INTO risk values(6,1,3,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','박추자','dd');
INSERT INTO risk values(2,2,6,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','홍길동','dd');
INSERT INTO risk values(7,2,6,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','홍길동','dd');
INSERT INTO risk values(8,2,6,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','홍길동','dd');
INSERT INTO risk values(9,2,6,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','홍길동','dd');
INSERT INTO risk values(10,2,6,'2022/08/01','2022/08/01~2022/08/05','휴가','신청','홍길동','dd');
INSERT INTO risk values(risk_seq.nextval,2,4,sysdate,'2022/08/01~2022/08/05','휴가','신청','한이삭','dd');
UPDATE RISK  
	SET situation = '반려',
		companion = '회사내규에의한반려'
WHERE risk_no = 1;
SELECT p.TEXT,m.NAME ,r.*
FROM risk r,MEMBER06 m ,PROJECT p 
WHERE 1=1
AND r.id=p.id
AND r.NO=m.NO
AND m.name ='박추자'
AND p.text = '123123';

SELECT count(*)
FROM risk,MEMBER06 m ,PROJECT p 
WHERE 1=1		 
AND m.name ='홍길동'
AND p.text = '간트차트';

		SELECT p.TEXT project,m.NAME requser, r.*
		FROM risk r,MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.NO=m.NO
		<if test="requser!=null">
		AND name like '%'||#{requser}||'%'
		</if>
		<if test="project!=null">
		AND text like '%'||#{project}||'%'
		</if>;
	
		select rownum cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%%'
		AND text like '%%';	
		
		
		
		select a.*, m.name repname
		from (
		select rownum cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%%'
		AND text like '%%') a, member06 m
		WHERE a.repmemno = m.NO 
		and rownum between 1 AND 20
		order by risk_no desc;
	    where cnt between 1 and 5;
CREATE SEQUENCE risk_seq
       INCREMENT BY 1
       START WITH 14
       MINVALUE 1
       MAXVALUE 999999
       NOCYCLE
       NOCACHE
       NOORDER;
DROP SEQUENCE risk_seq;

      SELECT m.*,c.*,d.DEPT 
      FROM MEMBER06 m, dept06 d, company06 c
      WHERE 1=1
      AND m.deptno=d.deptno 
      AND c.comno = d.comno
      AND m.name LIKE '%'||#{name}||'%';
      
  		select risksch.*
		from (select a.*, m.name repname
		from (
		select rownum cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%'||''||'%'
		AND text like '%'||''||'%') 
		a, member06 m
		WHERE a.repmemno = m.NO
		and cnt between 1 and 10) risksch;   
      
ROW_NUMBER() OVER(ORDER BY risk_no desc) AS      
     
SELECT *
FROM (
		select risksch.*
		from (select a.*, m.name repname
		from (
		select rownum cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%'||''||'%'
		AND text like '%'||''||'%') 
		a, member06 m
		WHERE a.repmemno = m.NO 
		and cnt between 1 and 100
		order by risk_no desc) risksch
		
		UNION all
		SELECT NULL as risksch
		FROM dual)
WHERE risksch IS NOT NULL OR rownum=1;

SELECT * FROM PROJECT;




  		select risksch.*
		from (select a.*, m.name repname
		from (
		select ROW_NUMBER() OVER(ORDER BY risk_no) AS cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%%'
		AND text like '%%')
		a, member06 m
		WHERE a.repmemno = m.NO
		and cnt between 1 and 10
		ORDER BY risk_no desc) risksch;
	
		select *
		from (select a.*, m.name repname
		from (
		select rownum cnt, p.TEXT project, m.NAME requser, r.*  
		FROM risk r, MEMBER06 m ,PROJECT p 
		WHERE 1=1
		AND r.id=p.id
		AND r.reqmemno=m.NO
		AND name like '%%'
		AND text like '%%'
		ORDER BY rownum desc) 
		a, member06 m
		WHERE a.repmemno = m.NO 
		and cnt between 1 and 10
		order by rownum desc);
	
	
		select risksch.*
		from (select a.*, m.name repname
		from (
		select rownum cnt, p.TEXT project, m.NAME requser, r.*
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		)
		a, member06 m
		WHERE a.repmemno = m.NO
		ORDER BY risk_no desc) risksch;
SELECT * FROM MEMBER06 m ;
SELECT * FROM project WHERE OWNER_ID = 1002;

		SELECT * 
		FROM project 
		WHERE OWNER_ID like '%%';

/*부모인자 지웠을때 자식인자가 지워지게 처리하기*/
ALTER TABLE RISK 
ADD CONSTRAINT risk_pk
	FOREIGN (id)
	REFERENCES project(id)
	ON DELETE CASCADE;