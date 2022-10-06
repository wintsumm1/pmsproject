SELECT * FROM PROJECT;

INSERT INTO project values(project_seq.nextval, 0, 1, '프로젝트2',sysdate,0,0,1,1,'테스트',sysdate,0,0,'2022-08-23');
INSERT INTO project values(project_seq.nextval, 0, 1, '프로젝트3',sysdate,0,0,1,1,'테스트',sysdate,0,0,'2022-08-23');
INSERT INTO project values(project_seq.nextval, 0, 1, '프로젝트4',sysdate,0,0,1,1,'테스트',sysdate,0,0,'2022-08-23');
INSERT INTO project values(project_seq.nextval, 0, 1, '프로젝트5',sysdate,0,0,1,1,'테스트',sysdate,0,0,'2022-08-23');
INSERT INTO project values(project_seq.nextval, 0, 1, '프로젝트6',sysdate,0,0,1,1,'테스트',sysdate,0,0,'2022-08-23');

SELECT * FROM STATUS;

SELECT p.id, p.OWNER_ID, p.text, p.START_DATE, p.END_DATE, p.PROGRESS, p.PRIORITY, s.statusname
FROM project p, status s
WHERE p.STATUS_NO = s."NO";`

SELECT * FROM project WHERE parent = 0;

SELECT p.id, text, start_date, duration, end_date,parent, progress, open1,
		contents, createdAt, DISPLAY_ORDER ,m.no owner_id, m.NAME ownerName,
		STATUS_NO, s.STATUSNAME , s.BACKGROUND color
		FROM PROJECT p, MEMBER06 m , STATUS s
		WHERE 1=1
		AND m.NO(+) = p.OWNER_ID
		AND s.NO = p.STATUS_NO
		AND parent = 0
		ORDER BY createdAt DESC;
	

SELECT * FROM project WHERE PARENT = 0;

SELECT CEIL(avg(progress)*100) FROM project WHERE PARENT=1 OR id=1;

SELECT * FROM project WHERE parent=1 OR id=1;

SELECT p.text, CEIL(p.PROGRESS*100) PROGRESS, s.BACKGROUND
FROM project p, STATUS s 
WHERE PARENT = 0
AND p.STATUS_NO = s."NO" 
AND progress > 0 AND (PROGRESS*100) != 100;

	