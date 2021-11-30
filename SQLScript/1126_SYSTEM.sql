-- 데이터 사전(DATA DICTIONARY)
-- 데이터베이스 운영관련 정보 제공
-- 데이터베이스 관리 업무

DESC DICT;
/*
이름         널? 유형             
---------- -- -------------- 
TABLE_NAME    VARCHAR2(128)  
COMMENTS      VARCHAR2(4000) 
*/

SELECT * FROM DICT;

-- 사용자의 인덱스 정보
SELECT * FROM DICT WHERE TABLE_NAME = 'USER_INDEXES'; -- USER_INDEXES	Description of the user's own indexes
SELECT * FROM DICT WHERE TABLE_NAME = 'USER_IND_COLUMNS'; -- USER_IND_COLUMNS	COLUMNs comprising user's INDEXes and INDEXes on user's TABLES

--데이터베이스의 관리 권한을 가진 소유자의 객체 정보
SELECT * FROM DICT WHERE TABLE_NAME = 'DBA_TABLES'; -- DBA_TABLES	Description of all relational tables in the database
SELECT * FROM DBA_TABLES;

-- 사용자 정보
SELECT * FROM DICT WHERE TABLE_NAME = 'DBA_USERS'; -- DBA_USERS	Information about all users of the database
DESC DBA_USERS;
SELECT * FROM DBA_USERS WHERE USERNAME = 'SCOTT';


---------------------------------------------------------------

SELECT * FROM DICT WHERE TABLE_NAME LIKE'USER_T%';

--접속한 사용자 정보
DESC USER_TABLES;
SELECT * FROM USER_TABLES;

-- 사용자가 소유한 객체 정보
DESC ALL_TABLES;
SELECT * FROM ALL_TABLES;
SELECT *  FROM ALL_TABLES WHERE OWNER = 'SCOTT';
SELECT *  FROM ALL_TABLES WHERE OWNER = 'MIMMI';
SELECT *  FROM ALL_TABLES WHERE OWNER IN ('SCOTT','MIMMI');
