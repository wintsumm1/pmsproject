SELECT*FROM member06;

 	UPDATE MEMBER06 
		SET memberimg = '#{memberimg}'
		WHERE id = 'abc123@naver.com';


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

DROP TABLE admin;

CREATE TABLE admin(
	NO varchar2(100) PRIMARY KEY,
	id varchar2(100),
	pass varchar2(100),
	cpass varchar2(100),
	name varchar2(50),
	mail varchar2(100),
	auth varchar2(50),
	tel varchar2(100)
	);
	
SELECT * FROM USER06;


SELECT * FROM admin;

alter table admin read write;

CREATE TABLE user06(
	NO varchar2(100) PRIMARY KEY,
	id varchar2(100),
	pass varchar2(100),
	cpass varchar2(100),
	name varchar2(50),
	mail varchar2(100),
	auth varchar2(50),
	tel varchar2(100)
	);

	create sequence NO_seq2
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;

INSERT INTO admin values(NO_seq2.nextval,'admin','admin','13123','한이삭','isaactoast@gmail.com','관리자','010-1234-5678');

SELECT * FROM member06;


SELECT* FROM dept06;