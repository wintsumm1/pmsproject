CREATE TABLE project(
	id NUMBER PRIMARY KEY,
	owner_id NUMBER,
	status_no NUMBER,
	text VARCHAR2(60) NOT NULL,
	start_date varchar2(30) NOT NULL,
	duration NUMBER NOT NULL,
	parent NUMBER DEFAULT 0,
	progress NUMBER DEFAULT 0,
	open1 number,
	contents varchar2(300),
	createdAt DATE,
	display_order NUMBER,
	priority NUMBER DEFAULT 0
)
;
SELECT * FROM project;

DELETE FROM project;

CREATE TABLE status (
	NO NUMBER PRIMARY KEY,
	statusName varchar2(30),
	background varchar2(7)
);
INSERT INTO status VALUES (1, '요청', '#4162FF');
INSERT INTO status VALUES (2, '진행', '#00cfd5');
INSERT INTO status VALUES (3, '완료', '#00ac69');
INSERT INTO status VALUES (4, '피드백', '#f4a100');
INSERT INTO status VALUES (5, '취소', '#e81500');
SELECT * FROM status;

SELECT * FROM PROJECT;
SELECT * FROM MEMBER06;
select * from status;

DROP TABLE project;
DROP TABLE owner;
DROP TABLE status;
DROP SEQUENCE project_seq;

CREATE SEQUENCE project_seq;

INSERT INTO project (id, owner_id, status_no,text, start_date, duration, parent, progress, open1, contents, createdAt) 
values(project_seq.nextval, 3, 1,'사이트맵', '2022-07-23',5, 0, 0.23434, 1, '', sysdate)
;

SELECT p.id, text, start_date, duration, parent, progress, open1, contents, createdAt, DISPLAY_ORDER ,m.ID , m.NAME , STATUS_NO, s.STATUSNAME , s.BACKGROUND color
FROM PROJECT p, MEMBER06 m , STATUS s 
WHERE 1=1
AND m.NO(+) = p.OWNER_ID 
AND s.NO = p.STATUS_NO
ORDER BY DISPLAY_ORDER ASC
;

-- project center to gannt
SELECT * FROM project
WHERE PARENT = 1
OR id = 1
;


SELECT p.id, text, start_date, duration, parent, progress, open1, contents, createdAt, DISPLAY_ORDER ,m.ID , m.NAME , STATUS_NO, s.STATUSNAME , s.BACKGROUND color
FROM PROJECT p, MEMBER06 m , STATUS s 
WHERE 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
AND text like '%%'
AND parent = 0
;

SELECT p.id, text title, start_date start1, duration, parent, progress,
		 open1, contents, createdAt, DISPLAY_ORDER ,m.ID , m.NAME , STATUS_NO,
		 s.STATUSNAME , s.BACKGROUND backgroundColor, end_date end1
		FROM PROJECT p, MEMBER06 m , STATUS s ;
	
CREATE TABLE ownSchedule (
	id NUMBER PRIMARY KEY,
	member_no varchar2(200),
	title varchar2(100),
	start1 varchar2(100),
	end1 varchar2(100),
	content varchar2(1000),
	backgroundColor varchar2(7),
	textColor varchar2(7),
	allDay NUMBER
);
DROP TABLE ownSchedule;

CREATE SEQUENCE ownSchedule_seq;
DROP SEQUENCE ownSchedule_seq;
INSERT INTO ownSchedule VALUES (ownSchedule_seq.nextval, 1000, '개인일정', '2022-08-05', '2022-08-05', '언제하냐', '#e5e5e5', '#4162FF', 1);
SELECT * FROM OWNSCHEDULE;
SELECT * FROM PROJECT;
SELECT * FROM member06;



SELECT * 
FROM OWNSCHEDULE o, MEMBER06 m
WHERE m.NO = o.MEMBER_NO 
;
SELECT p.id, m.NO member_no ,text title, start_date start1, END_DATE end1 ,contents content, OPEN1 allday ,s.BACKGROUND BACKGROUNDCOLOR, m.NAME, m.deptno 
FROM PROJECT p, MEMBER06 m , STATUS s 
WHERE 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
;
SELECT o.NO, member_no, title, start1, end1, content, BACKGROUNDCOLOR, TEXTCOLOR, ALLDAY, m.deptno, m.name, m.DEPTNO 
FROM OWNSCHEDULE o, MEMBER06 m
WHERE m.NO = o.MEMBER_NO 
;


SELECT o.NO, member_no , title, start1, end1, content, BACKGROUNDCOLOR, m.name, m.DEPTNO 
FROM OWNSCHEDULE o, MEMBER06 m
WHERE 1=1
AND m.NO = o.MEMBER_NO 
union all
SELECT p.id no, m.no member_no, text title, start_date start1, end_date end1, contents content, background BACKGROUNDCOLOR, m.name, m.DEPTNO 
FROM PROJECT p, MEMBER06 m , STATUS s
where 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
;

SELECT o.NO, member_no , title, start1, end1, content, BACKGROUNDCOLOR, m.name, m.DEPTNO 
FROM OWNSCHEDULE o, MEMBER06 m
WHERE 1=1
AND m.NO = o.MEMBER_NO
union all
SELECT p.id no, m.no member_no, text title, start_date start1, end_date end1, contents content, background BACKGROUNDCOLOR, m.name, m.DEPTNO 
FROM PROJECT p, MEMBER06 m , STATUS s
where 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
AND m.no = 1000;

SELECT p.id, text, start_date, duration, parent, progress, open1,
		contents, createdAt, DISPLAY_ORDER ,m.no owner_id, m.NAME ownerName,
		STATUS_NO, s.STATUSNAME , s.BACKGROUND color
		FROM PROJECT p, MEMBER06 m , STATUS s
		WHERE 1=1
		AND m.NO(+) = p.OWNER_ID
		AND s.NO = p.STATUS_NO
		AND parent = 0
		ORDER BY createdAt DESC;
		
SELECT p.id, text, start_date, duration, end_date, parent, progress, open1,
contents, createdAt, DISPLAY_ORDER ,m.no owner_id, m.NAME ownerName,
STATUS_NO, s.STATUSNAME , s.BACKGROUND color
FROM PROJECT p, MEMBER06 m , STATUS s 
WHERE 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
AND
(
p.id = 1
OR p.parent = 1
)
ORDER BY DISPLAY_ORDER ASC
;

SELECT o.id, member_no , title, start1, end1, content, BACKGROUNDCOLOR, m.name, m.DEPTNO, ALLDAY 
FROM OWNSCHEDULE o, MEMBER06 m
WHERE 1 = 1
AND m.NO = o.MEMBER_NO
AND m.no = 1002
union all
SELECT p.id id, m.no member_no, text title, start_date start1, end_date end1, contents content,  
background BACKGROUNDCOLOR, m.name, m.DEPTNO , 1 AS ALLDAY 
FROM PROJECT p, MEMBER06 m , STATUS s
where 1 = 1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
AND m.no = 1002
;
SELECT * FROM priority;
SELECT * FROM PROJECT p ;

delete from project
WHERE id in (
	SELECT id FROM PROJECT p
	START WITH id = 1
	CONNECT BY PRIOR id = PARENT 
)
;
SELECT id FROM PROJECT p
START WITH id = 23
CONNECT BY PRIOR id = PARENT 
;

SELECT p.id, text, start_date, duration, end_date, parent, progress, open1,
contents, createdAt, DISPLAY_ORDER ,m.no owner_id, m.NAME ownerName,
STATUS_NO, s.STATUSNAME , s.BACKGROUND color
FROM PROJECT p, MEMBER06 m , STATUS s 
WHERE 1=1
AND m.NO(+) = p.OWNER_ID
AND s.NO = p.STATUS_NO
START WITH p.id = 1
CONNECT BY PRIOR p.id = p.PARENT 
ORDER BY DISPLAY_ORDER
;
