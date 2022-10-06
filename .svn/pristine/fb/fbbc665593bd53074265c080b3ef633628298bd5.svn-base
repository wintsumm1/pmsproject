CREATE TABLE comany(
	id number PRIMARY KEY,
	name varchar2(50) 
)
;

CREATE TABLE dept10(
	id number PRIMARY KEY,
	company_id NUMBER,
	name varchar2(50) 
)
;
CREATE TABLE member10(
	no NUMBER PRIMARY KEY,
	dept_id NUMBER,
	id varchar2(50),
	name varchar2(50)
);


DROP TABLE dept10;
INSERT INTO comany values(1, '삼성 전자');
INSERT INTO dept10 values(1, 1,'부서');
INSERT INTO dept10 values(2, 1,'부서2');
INSERT INTO dept10 values(3, 1,'부서3');
INSERT INTO member10 values(1, 2, 'isaac', '이삭');
INSERT INTO member10 values(2, 1, 'lsj', '승종');


SELECT c.id comany_id, c.name companyName, d.id dept_id, d.name deptname, m.id user_id, m.name memberName
FROM COMANY c, dept10 d, member10 m
WHERE c.id = d.company_id
AND m.dept_id = d.id
;
	- 리스크 게시판 상세: 
		프로젝트명: 메인화면 개발
		이름: 송재석
		기간: 2022-07-22 ~ 2022-07-27
		사유: 연차 사용으로 부재.
		리스크: 인력부족으로 인한 프로젝트 delay
		해결방안: 김정민 사원 투입


