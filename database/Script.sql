SELECT*FROM member06;
DROP TABLE member06;
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

create sequence NO_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
-- 회원가입		
INSERT INTO member06 values(NO_seq.nextval,1234,'abc123@naver.com','1111','홍길동','관리자','010-0000-0000','부장');	
INSERT INTO member06 values(NO_seq.nextval,5678,'def123@naver.com','2222','박추자','일반사용자','010-1111-1111','차장');	

SELECT*FROM member06;

SELECT count(*) 
FROM (
	SELECT DISTINCT m.NO, m.name 
	FROM member06 m, project p 
	WHERE m.NO = p.OWNER_ID
);

SELECT count(*) FROM MEMBER06 m;

SELECT DISTINCT m.NO, m.name FROM MEMBER06 m, PROJECT p WHERE m.NO = p.OWNER_ID;






SELECT * from member06;

