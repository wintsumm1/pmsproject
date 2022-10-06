CREATE table develope (
	NO number PRIMARY KEY,
	TYPE varchar2(50)
);

INSERT INTO develope values(1,'web');
INSERT INTO develope values(2,'app');
INSERT INTO develope values(3,'commerce');
INSERT INTO develope values(4,'software');

CREATE TABLE wantedProject (
	projectNo NUMBER PRIMARY KEY,
	NO NUMBER,
	projectName varchar2(300),
	cost NUMBER,
	duration varchar2(100),
	regDte DATE
);
DROP TABLE WANTEDPROJECT ;
SELECT * FROM wantedProject;

SELECT w.*, d."TYPE"
FROM WANTEDPROJECT w, DEVELOPE d 
WHERE 1=1
AND w.NO = d.NO
;
SELECT * FROM PRO WHERE TYPE = '%'||'웹'||'%'

