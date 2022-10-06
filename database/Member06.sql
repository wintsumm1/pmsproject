SELECT * FROM member06;
DROP TABLE member06;
CREATE TABLE member06(
	NO varchar2(200) PRIMARY KEY,
	deptno number,
	id varchar2(100) UNIQUE,
	pass varchar2(100),
	name varchar2(50),
	auth varchar2(50)CONSTRAINT member06_auth_ck CHECK(auth IN('admin','PM','user')),
	tel varchar2(100),
	mrg varchar2(50) CONSTRAINT member06_mrg_ck CHECK(mrg IN('부장','차장','과장','대리','사원'))
);

ALTER TABLE member06
ADD memberimg varchar2(50);




DROP SEQUENCE no_seq;
create sequence NO_seq
		start with 1000
		minvalue 1000
		maxvalue 999999
		increment by 1;
-- 회원가입		
INSERT INTO member06 values(NO_seq.nextval,1,'abc123@naver.com','1111','홍길동','admin','010-0000-0000','부장','');	
INSERT INTO member06 values(NO_seq.nextval,2,'def123@naver.com','2222','박추자','user','010-1111-1111','차장');	
INSERT INTO member06 values(NO_seq.nextval,3,'def1234@naver.com','2222','아저씨','user','010-2222-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,3,'kkk1@naver.com','3333','아줌마','admin','010-2222-2222','사원');	
INSERT INTO member06 values(NO_seq.nextval,2,'kkk2@naver.com','4444','이모','admin','010-0101-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,1,'kkk3@naver.com','5555','사이다','user','010-2222-9999','차장');	
INSERT INTO member06 values(NO_seq.nextval,5,'kkk4@naver.com','6666','커피','PM','010-9999-2222','사원');	
INSERT INTO member06 values(NO_seq.nextval,7,'kkk5@naver.com','7777','키보드','user','010-2222-7777','차장');	
INSERT INTO member06 values(NO_seq.nextval,8,'kkk6@naver.com','8888','마우스','PM','010-2222-0101','대리');	
INSERT INTO member06 values(NO_seq.nextval,5,'kkk7@naver.com','9999','사장님','admin','010-2222-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,2,'kkk8@naver.com','1234','나이스샷','admin','010-0101-7777','대리');	
INSERT INTO member06 values(NO_seq.nextval,1,'kkk9@naver.com','5678','언니','user','010-7777-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,9,'kkk10@naver.com','0101','누나','PM','010-9999-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,10,'kkk11@naver.com','123','핸드폰','admin','010-9999-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,'','kkk12@naver.com','123','핸드폰','PM','010-9999-2222','대리');	
INSERT INTO member06 values(NO_seq.nextval,'','cba123@naver.com','123','핸드폰','PM','010-9999-2222','대리','/asset/images/profile-1.png');	
-- 사원번호, 부서번호, 이메일, 비밀번호, 이름, 권한, 핸드폰번호, 직책
INSERT INTO member06 values(NO_seq.nextval,
(SELECT deptno FROM dept06 WHERE dept = '재무' AND comno = (SELECT comno FROM company06 WHERE companyName = '삼성'))
,'kkk3@naver.com','1233','핸드폰','관리자','010-9999-2222','대리');	


--부서명 추출
SELECT d.*, c.companyName, c.companyTel
FROM dept06 d, company06 c
WHERE d.comno(+) = c.comno
AND companyName = '삼성';

/*
SELECT d.*, c.companyName, c.companyTel
FROM dept06 d, company06 c
WHERE d.comno(+) = c.comno
AND companyName = #{companyName}
 */

SELECT*FROM member06;

SELECT* 
FROM member06 
WHERE 1=1 
AND name LIKE '%'||#{name}||'%';

-- 부서 테이블
DROP TABLE dept06;

SELECT* FROM dept06;


CREATE TABLE dept06( 
	deptno NUMBER PRIMARY KEY,
	dept varchar2(100),
	comno varchar2(100)
);
CREATE SEQUENCE dept06_seq;
DROP SEQUENCE dept06_seq;
INSERT INTO dept06 values(dept06_seq.nextval,'front-end', 1);
INSERT INTO dept06 values(dept06_seq.nextval,'front-end', 2);
INSERT INTO dept06 values(dept06_seq.nextval,'front-end', 3);
INSERT INTO dept06 values(dept06_seq.nextval,'back-end',1);
INSERT INTO dept06 values(dept06_seq.nextval,'back-end',2);
INSERT INTO dept06 values(dept06_seq.nextval,'back-end',3);
INSERT INTO dept06 values(dept06_seq.nextval,'재무',1);
INSERT INTO dept06 values(dept06_seq.nextval,'재무',2);
INSERT INTO dept06 values(dept06_seq.nextval,'재무',3);
SELECT * FROM dept06;

INSERT INTO dept06 values(dept06_seq.nextval,'인사',(SELECT comno FROM company06 WHERE companyName = '삼성'));
INSERT INTO dept06 (deptno,dept,comno)
SELECT dept06_seq.nextval,
		'인사팀1',
		(SELECT comno FROM company06 WHERE companyName = '삼성')
		FROM dual 
		WHERE NOT EXISTS (SELECT 1
							FROM dept06 
							WHERE dept = '인사팀1'
							AND comno = (SELECT comno FROM company06 WHERE companyName = '삼성'));
/*
INSERT INTO dept06 (deptno,dept,comno)
SELECT dept06_seq.nextval,
		#{dept},
		(SELECT comno FROM company06 WHERE companyName = #{companyName)
		FROM dual 
		WHERE NOT EXISTS (SELECT 1
							FROM dept06 
							WHERE dept = #{dept}
							AND comno = (SELECT comno FROM company06 WHERE companyName = #{companyName}))
 */
INSERT INTO dept06 (deptno,dept,comno)
SELECT dept06_seq.nextval,
		'재무',
		1
		FROM dual 
		WHERE NOT EXISTS (SELECT 2
							FROM dept06 
							WHERE dept = '인사'
							AND comno = 1);
/*
INSERT INTO dept06 values(dept06_seq.nextval,#{dept},(SELECT comno FROM company06 WHERE companyName = #{companyName}));
 */
UPDATE dept06
	SET dept = '인사(수정)',
		comno = (SELECT comno FROM company06 WHERE companyName = '삼성')
	WHERE deptno = 22;
/*
UPDATE dept06
	SET dept = #{dept},
		comno = (SELECT comno FROM company06 WHERE companyName = #{companyName})
	WHERE deptno = #{deptno}
 */
SELECT*FROM COMPANY06 ;
-- 부서 상세
SELECT d.*,c.companyName, c.companyTel
FROM dept06 d, company06 c
WHERE d.comno = c.comno(+)
AND d.deptno = 1;
/*
SELECT d.*,c.companyName, c.companyTel
FROM dept06 d, company06 c
WHERE d.comno = c.comno(+)
AND d.deptno = #{deptno}
 */
-- 부서 이름 변경

-- 부서 삭제
DELETE 
FROM dept06 
WHERE deptno = 32;

		SELECT count(no) deptCount,d.deptno,d.dept
		FROM member06 m, dept06 d, company06 c
		WHERE m.deptno = d.deptno(+)
		AND d.comno = c.comno(+)
		AND companyName = '쌍용강남'
		GROUP BY d.deptno, d.dept
		ORDER BY d.deptno;
-- 회사 테이블
SELECT*FROM company06;
DROP TABLE company06;
CREATE TABLE company06(
	comNo NUMBER PRIMARY KEY,
	companyName varchar2(100),
	companyTel varchar2(100)
);
CREATE SEQUENCE company06_seq;
DROP SEQUENCE company06_seq;

INSERT INTO company06 values(company06_seq.nextval,'쌍용강남','02-1234-1234');
INSERT INTO company06 values(company06_seq.nextval,'쌍용강북','031-189-345');
INSERT INTO company06 values(company06_seq.nextval,'삼성','031-189-234');
SELECT*FROM company06;



-- 멤버, 부서, 회사 테이블 합
SELECT m.*,d.*,c.*
FROM MEMBER06 m, dept06 d, company06 c
WHERE 1=1
AND m.dept=d.dept 
AND c.companyName = d.companyName
AND name LIKE '%'||''||'%';
/*
SELECT m.*,c.*
FROM MEMBER06 m, dept06 d, company06 c
WHERE 1=1
AND m.dept=d.dept 
AND c.companyName = d.companyName
AND name LIKE '%'||#{name}||'%'
 */
SELECT * FROM COMPANY06 ;

SELECT * FROM DEPT06 ;
DROP TABLE dept06;


-- 수정
UPDATE (
	SELECT m.NO,m.dept,m.id,m.pass,m.name,m.auth,m.tel,m.mrg,d.dept,d.companyName,c.companyName,c.companyTel
	FROM MEMBER06 m, dept06 d, company06 c
	WHERE m.dept=d.dept 
	AND c.companyName = d.companyName
)
	SET name = '이지지',
		m.tel = '010-8888-8888',
		m.auth = '관리자',
		m.dept = d.dept,
		d.dept = 'back-end',
		m.mrg = '사원',
		d.companyName = c.companyName ,
		c.companyName = '쌍용강북(수정)',
		c.companyTel = '03-2222-2323(수정)'
	WHERE no = 1;


SELECT * FROM MEMBER06;
SELECT * FROM DEPT06;


UPDATE MEMBER06 
	SET name = '이지지',
		tel = '010-8888-8888',
		auth = '관리자',
		dept = 'front-end',
		mrg = '대리'
	WHERE no = 2;
SELECT*FROM member06;


/*
SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
FROM member06 m, dept06 d, company06 c
WHERE 1=1
and m.deptno = d.deptno
AND d.comno = c.comno
<if test="name!=null">
AND name LIKE '%'||#{name}||'%'
</if>

SELECT m.*,c.*
FROM MEMBER06 m, dept06 d, company06 c
WHERE 1=1
AND m.dept=d.dept 
AND c.companyName = d.companyName
<if test="name!=null">
AND name LIKE '%'||#{name}||'%'
 */

UPDATE MEMBER06 
	SET name = '박박박',
		deptno = (SELECT deptno FROM dept06 WHERE dept = '재무' AND comno = (SELECT comno FROM company06 WHERE companyName='삼성')),
		tel = '010-8888-8888',
		auth = '관리자',
		mrg = '대리'
	WHERE no = 1014;

SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+);

UPDATE MEMBER06 
	SET name = '김김김',
		deptno = (SELECT deptno FROM dept06 WHERE dept = 'front-end' and comno = 1),
		tel = '010-1234-8888',
		auth = '일반사용자',
		mrg = '부장'
	WHERE no = 3;
/*
UPDATE MEMBER06 
	SET name = #{name},
		deptno = (SELECT deptno FROM dept06 WHERE dept = #{dept} AND comno = #{comno}),
		tel = #{tel},
		auth = #{auth},
		mrg = #{mrg}
	WHERE no = #{no}
 */
-- 상세 테이블
SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+) ;
/*
SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+) 
AND m.NO = ${no}
 */
UPDATE MEMBER06 
	SET name = '홍길동',
	deptno = (SELECT deptno FROM dept06	WHERE dept = '재무' AND comno = (select comno from company06 where companyName ='삼성'),
	tel = '010-1999-9991',
	auth = '관리자',
	mrg = '사원'
	WHERE no = 2;

UPDATE MEMBER06 
	SET name = '김김김',
		deptno = (SELECT deptno FROM dept06 WHERE dept = 'front-end' and comno = 1),
		tel = '010-1234-8888',
		auth = '일반사용자',
		mrg = '부장'
	WHERE no = 4;
	
-- 삭제
/*
DELETE 
FROM member06 
WHERE NO = #{NO}
*/

SELECT*FROM member06;
SELECT* FROM dept06;
SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+);
-- 부서별 멤버 수 

SELECT count(no) deptCount, d.dept
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND companyName='쌍용강남'
GROUP BY d.dept;
/*
SELECT count(no) deptCount, d.dept
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND companyName=#{companyName}
GROUP BY d.dept
 */

SELECT * FROM MEMBER06;

-- 조직도
SELECT count(NO)
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND c.COMPANYNAME ='삼성'
GROUP BY companyName;

SELECT m.name, m.auth,(SELECT count(NO)
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND c.COMPANYNAME ='쌍용강남'
) countGroup
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND c.COMPANYNAME ='쌍용강남'
AND m.auth = 'admin';

/*
SELECT m.name, m.auth,(SELECT count(NO)
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND c.COMPANYNAME =#{companyName}
GROUP BY companyName) countGroup
FROM member06 m, dept06 d, company06 c
WHERE m.deptno = d.deptno(+)
AND d.comno = c.comno(+)
AND c.COMPANYNAME =#{companyName1}
AND m.auth = 'admin'
 */
SELECT * FROM MEMBER06 ;
		SELECT m.*,d.dept,d.comno, c.companyName, c.companyTel
		FROM member06 m, dept06 d, company06 c
		WHERE 1=1
		and m.deptno = d.deptno(+)
		AND d.comno = c.comno(+)
		order by NO;
SELECT*FROM dept06;
-- 부서 인원수 
SELECT count(NO) deptCount, d.dept, d.deptno, c.companyName
FROM member06 m, dept06 d, company06 c
WHERE m.deptno(+) = d.deptno
AND d.comno(+) = c.comno
AND companyName= '쌍용강남'
GROUP BY d.dept, d.deptno,c.companyName
ORDER BY d.deptno;
