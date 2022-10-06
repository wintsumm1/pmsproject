CREATE TABLE MenuAnalytics (
	NO number PRIMARY KEY,
	menuName varchar2(120),
	cnt NUMBER,
	duration NUMBER,
	backgroundColor varchar2(20)
);

SELECT * FROM MenuAnalytics;

DROP TABLE MenuAnalytics;

INSERT INTO MenuAnalytics VALUES (1, 'dashboard', 0, 0, '#FF6384');
INSERT INTO MenuAnalytics VALUES (2, 'project_dashboard', 0,0, '#36A2EB');
INSERT INTO MenuAnalytics VALUES (3, 'create_project', 0,0, '#FFCE56');
INSERT INTO MenuAnalytics VALUES (4, 'project_List', 0,0, '#4BC0C0');
INSERT INTO MenuAnalytics VALUES (5, 'project_List(ADMIN)', 0,0, '#9966FF');
INSERT INTO MenuAnalytics VALUES (6, 'issues', 0,0, '#FF9F40');
INSERT INTO MenuAnalytics VALUES (7, 'risks', 0,0, '#69707a');
INSERT INTO MenuAnalytics VALUES (8, 'member_list', 0,0 , '#7D15CC');
INSERT INTO MenuAnalytics VALUES (9, 'groups_list', 0,0 , '#7DC864');
INSERT INTO MenuAnalytics VALUES (10, 'organization_detail', 0,0 ,'#96636E');
INSERT INTO MenuAnalytics VALUES (11, 'notice', 0,0 , '#D263D2');
INSERT INTO MenuAnalytics VALUES (12, 'notice(ADMIN)', 0,0 , '#0A6363');
INSERT INTO MenuAnalytics VALUES (13, 'calendar', 0,0 , '#0061f2');
INSERT INTO MenuAnalytics VALUES (14, 'minutes', 0,0 , '#49DB96');

DROP TABLE MenuMonthAnalytics;

CREATE TABLE MenuMonthAnalytics AS 
SELECT *
FROM MenuAnalytics m , 
(SELECT TO_CHAR (FIRST_DAY + LEVEL - 1, 'YYYY-MM-DD') TODAY 
FROM (SELECT TRUNC(SYSDATE, 'MM') FIRST_DAY FROM DUAL)
CONNECT BY FIRST_DAY + LEVEL - 1 <= TRUNC(LAST_DAY(SYSDATE)) 
) 
;

SELECT * from MenuMonthAnalytics;

SELECT SUM(cnt) from MenuMonthAnalytics;

SELECT backgroundColor
FROM MenuMonthAnalytics
GROUP BY backgroundColor;

SELECT backgroundColor
FROM MenuAnalytics;



SELECT m.menuName ,SUM(cnt) cnt, SUM(duration) duration , backgroundColor
from MenuMonthAnalytics m
GROUP BY menuName, backgroundColor
;
SELECT TODAY, SUM(cnt) cnt, SUM(duration) duration 
from MenuMonthAnalytics 
GROUP BY TODAY
ORDER BY today
;

update MenuMonthAnalytics
set cnt = cnt + 1
where 1=1
AND no = 2
AND today LIKE to_char(sysdate, 'YYYY-MM-DD')
;


SELECT TO_CHAR (FIRST_DAY + LEVEL - 1, 'YYYY-MM-DD') TODAY 
FROM (SELECT TRUNC(SYSDATE, 'MM') FIRST_DAY FROM DUAL)
CONNECT BY FIRST_DAY + LEVEL - 1 <= TRUNC(LAST_DAY(SYSDATE));




CREATE TABLE CountUser (
	cnt NUMBER DEFAULT 0
);

DROP table CountUser;

CREATE TABLE MonthCountUser AS 
SELECT c.cnt, t.today
FROM CountUser c , 
(SELECT TO_CHAR (FIRST_DAY + LEVEL - 1, 'YYYY-MM-DD') TODAY 
FROM (SELECT TRUNC(SYSDATE, 'MM') FIRST_DAY FROM DUAL)
CONNECT BY FIRST_DAY + LEVEL - 1 <= TRUNC(LAST_DAY(SYSDATE))
) t
;

DROP TABLE MonthCountUser;

SELECT * FROM CountUser;
INSERT INTO CountUser VALUES (0);
SELECT * FROM MonthCountUser;

select sum(cnt)
		from MonthCountUser;

update MonthCountUser
	set cnt = cnt + 1
	where today like to_char(sysdate, 'YYYY-MM-DD');

