SELECT * FROM project;

DROP TABLE priority;
CREATE TABLE priority(
	pno NUMBER,
	pname varchar2(100),
	pcolor varchar2(100));
	
INSERT INTO priority values(0,'없음','#B8B8B8');
INSERT INTO priority values(1,'긴급','#E81500');
INSERT INTO priority values(2,'높음','#6900C7');
INSERT INTO priority values(3,'보통','#F76400');
INSERT INTO priority values(4,'낮음','#98D0FF');

SELECT * FROM PRIORITY;

SELECT pr.pname, p.priority FROM PRIORITY pr, PROJECT p WHERE pr.pno = p.PRIORITY;

SELECT * FROM PRIORITY;

SELECT * FROM STATUS;