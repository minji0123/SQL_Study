-- ������ ����(DATA DICTIONARY)
-- �����ͺ��̽� ����� ���� ����
-- �����ͺ��̽� ���� ����

DESC DICT;
/*
�̸�         ��? ����             
---------- -- -------------- 
TABLE_NAME    VARCHAR2(128)  
COMMENTS      VARCHAR2(4000) 
*/

SELECT * FROM DICT;

-- ������� �ε��� ����
SELECT * FROM DICT WHERE TABLE_NAME = 'USER_INDEXES'; -- USER_INDEXES	Description of the user's own indexes
SELECT * FROM DICT WHERE TABLE_NAME = 'USER_IND_COLUMNS'; -- USER_IND_COLUMNS	COLUMNs comprising user's INDEXes and INDEXes on user's TABLES

--�����ͺ��̽��� ���� ������ ���� �������� ��ü ����
SELECT * FROM DICT WHERE TABLE_NAME = 'DBA_TABLES'; -- DBA_TABLES	Description of all relational tables in the database
SELECT * FROM DBA_TABLES;

-- ����� ����
SELECT * FROM DICT WHERE TABLE_NAME = 'DBA_USERS'; -- DBA_USERS	Information about all users of the database
DESC DBA_USERS;
SELECT * FROM DBA_USERS WHERE USERNAME = 'SCOTT';


---------------------------------------------------------------

SELECT * FROM DICT WHERE TABLE_NAME LIKE'USER_T%';

--������ ����� ����
DESC USER_TABLES;
SELECT * FROM USER_TABLES;

-- ����ڰ� ������ ��ü ����
DESC ALL_TABLES;
SELECT * FROM ALL_TABLES;
SELECT *  FROM ALL_TABLES WHERE OWNER = 'SCOTT';
SELECT *  FROM ALL_TABLES WHERE OWNER = 'MIMMI';
SELECT *  FROM ALL_TABLES WHERE OWNER IN ('SCOTT','MIMMI');
