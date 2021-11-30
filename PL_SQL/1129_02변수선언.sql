/*
--------------------------------------------------------------------------------
������:
    1. %TYPE    : ������, ������ ���̺��� ���� ������ ������ �ڷ���
    2. %ROWTYPE : ������, ������ ���̺��� �� ���� ��ü�� ����
    3. �� : �����̸� ���̺��̸�.���̸�%TYPE
--------------------------------------------------------------------------------
[TABLE DEPT]
DEPTNO NUMBER(2)    
DNAME  VARCHAR2(14) 
LOC    VARCHAR2(13) 
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC DEPT;


DECLARE
    -- ���� ����
    DEPTNO DEPT.DEPTNO%TYPE := 30;    -- ���̺��.Į����%TYPE, ���̺��� Į�� Ÿ���� �״�� ����
    DEPTNO2 NUMBER(2) := 30;

BEGIN
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DEPTNO2 : ' || DEPTNO2);
END;    

/
--------------------------------------------------------------------------------
SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DEPTNO = 30;
--------------------------------------------------------------------------------

        
SET SERVEROUTPUT ON;
DECLARE
    DEPT_RECORD DEPT%ROWTYPE; -- ������ : %ROWTYPE (���ڵ�, �ϳ��� ��)
BEGIN
    SELECT DEPTNO, DNAME, LOC INTO DEPT_RECORD
        FROM DEPT
        WHERE DEPTNO = 30;
        
    DBMS_OUTPUT.PUT_LINE('[ �μ��ڵ�(30) ���� ]');
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPT_RECORD.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || DEPT_RECORD.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || DEPT_RECORD.LOC);
END;    

/


