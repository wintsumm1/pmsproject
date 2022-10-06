SELECT * FROM PROJECT;
SELECT * FROM member06;
SELECT * FROM admin;
SELECT * FROM risk;
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
CREATE TABLE risk(
	risk_no NUMBER PRIMARY KEY,
	id NUMBER REFERENCES project(id),
	reqmemno varchar2(200), --REFERENCES member06(no),
	reqdate varchar2(30) NOT NULL,
	totdate varchar2(100) NOT NULL,
	req_cause varchar2(200) NOT NULL,
	situation varchar2(200) NOT NULL,
	repmemno varchar2(50),
	companion varchar2(2000)
);

create table issue(
		issue_no number primary key,
		refno number,
		id NUMBER REFERENCES project(id),
		subject varchar2(200),
		content varchar2(2000),
		writer varchar2(100),
		readcnt number,
		regdte date,
		uptdte date
);
	create sequence issue_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
	--sample 데이터 등록
	insert into issue values(
	issue_seq.nextval,0,1,'첫번째글','내용','1003',0, sysdate, sysdate); 
SELECT * FROM issue;


		select *
		from (
		 select rownum cnt, p.text ,level, i.*  
		 from issue i, project p
		 WHERE 1=1
		 AND subject LIKE '%%'
		 AND writer LIKE '%%'
		 AND i.id = p.id
		 start with refno = 0
		 connect by prior issue_no = refno
		 order siblings by issue_no desc  )
	    where cnt between #{start} and #{end};	 
	 create table issuefile(
					no number,
					path varchar2(100),
					fname varchar2(100),
					regdte date,
					uptdte date,
					etc varchar2(200)
				);
create table issuefile(
					no number,
					path varchar2(100),
					fname varchar2(100),
					regdte date,
					uptdte date,
					etc varchar2(200)
				);
INSERT INTO issuefile values(1,'','',sysdate,sysdate,'');
SELECT * FROM issuefile;
		SELECT count(*)
		FROM issue i ,PROJECT p
		WHERE 1=1
		AND
		i.id=p.id
			AND subject LIKE '%%'
			AND text LIKE '%%'
		order by issue_no DESC;
		
		select rownum cnt, p.text ,level, i.*
		from issue i,
		project p
		WHERE 1=1
		AND i.id = p.id
		start with refno = 0
		connect by prior issue_no = refno
		order siblings by issue_no DESC;
		
		SELECT i.*, f.fname , p.text
		FROM issue i, issuefile f, project p
		WHERE i.issue_no =f.NO(+)
		AND i.id = p.id;
		and i.issue_no = #{issue_no};
		SELECT * FROM MEMBER06; 
		select rownum cnt, p.text ,level, i.*, f.fname, m.NAME
		from issue i,
		project p, issuefile f, member06 m
		WHERE 1=1
		AND i.id = p.id
		AND i.writer = m.NO 
		and i.issue_no =f.NO(+)
		start with refno = 0
		connect by prior issue_no = refno
		order siblings by issue_no desc ;
SELECT * FROM MEMBER06 m ;
SELECT * FROM PROJECT p ;
SELECT * FROM risk;
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
		
		SELECT count(*)
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		order by risk_no DESC;
		
		SELECT count(*)
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		and r.REQ_CAUSE = '휴가';
		SELECT count(*)
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		and r.REQ_CAUSE = '병가';
		SELECT count(*)
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		and r.REQ_CAUSE = '기타';
		SELECT count(*)
		FROM risk r, MEMBER06 m ,PROJECT p
		WHERE 1=1
		AND
		r.id=p.id
		AND r.reqmemno=m.NO
		and r.REQ_CAUSE = '개인사유';
ALTER TABLE issue
ADD CONSTRAINT issue_pk
FOREIGN KEY(id)
REFERENCES project(id);
ALTER TABLE issue
ADD CONSTRAINT issue_pk
FOREIGN KEY (id)
REFERENCES project(id)
ON DELETE CASCADE;