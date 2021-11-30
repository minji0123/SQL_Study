-- ���̺�� (VIEW)
-- ���� ���̺�(VIRTUAL TABLE)
-- �����Ǥ� ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS �� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ���� : 
-- 1. ���� (�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
-- 2. ���ȼ�(������ ���̺��̳� ������ ���� �� ����)

SELECT E.EMPNO,	E.ENAME,	E.JOB, D.DEPTNO,	D.DNAME,	D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;




-- �並 ������ �Ϸ��� : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30) WITH READ ONLY;
    
SELECT * FROM USER_VIEWS;
    
CREATE OR REPLACE VIEW EMP_DEPT AS
    (SELECT E.EMPNO,	E.ENAME,	E.JOB, D.DEPTNO,	D.DNAME,	D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO);

SELECT * FROM EMP_DEPT;
    
-- �Է�(INSERT)
-- SQL ����: ORA-42399: �б� ���� �信���� DML �۾��� ������ �� �����ϴ�.
INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(1234, 'ABCDE','STUDENT',30);

INSERT INTO EMP_DEPT30
    VALUES(9999, 'NineNine','STUDENT',null,null,1000,500,10);

-- �������� ������� ��� ������ �Է� �Ұ�
INSERT INTO EMP_DEPT
    VALUES(9999, 'NineNine','STUDENT',30,"SALES",'CHICAGO');

DROP VIEW EMP_DETP;