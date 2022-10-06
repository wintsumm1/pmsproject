DROP TABLE notice;
CREATE TABLE notice(
	NO NUMBER,
	title varchar2(100),
	preview varchar2(300),
	contents varchar2(1000),
	writer varchar2(200));

DROP SEQUENCE notice_seq;	
CREATE SEQUENCE notice_seq
	START WITH 0001
	INCREMENT BY 1
	MAXVALUE 999999
	nocycle;

SELECT * FROM notice;

SELECT * FROM MEMBER06;

SELECT n.NO, n.title, n.preview, m.name
		FROM notice n, MEMBER06 m
		where n.writer = m.NO
		ORDER BY NO DESC;
	

INSERT INTO notice values(notice_seq.nextval,'공지사항 1','테스트','공지사항1의 내용입니다.공지사항1의 내용입니다.공지사항1의 내용입니다.',1000);