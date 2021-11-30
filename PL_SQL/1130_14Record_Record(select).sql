/*
���ڵ�(RECORD)�� �ȿ� �� �ٸ� ���ڵ��� 
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
    �����̸� ���ڵ���
)
--------------------------------------------------------------------------------
������̺�(EMP)�ȿ� �μ������� ������ ����
--------------------------------------------------------------------------------
*/

-- record �ȿ� record(�� �̷����� ���ذ� �Ȱ�)
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD( -- �μ� ���̺�
        deptno DEPT.DEPTNO%TYPE,  -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,    -- �μ��̸�
        loc DEPT.LOC%TYPE         -- �μ���ġ
    );
   
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- ����ڵ�
        ename EMP.ENAME%TYPE,   -- ����̸�
        dept REC_DEPT           -- �μ�����
    );
   
    emp_rec REC_EMP;
BEGIN
    emp_rec.empno := 7900;
    emp_rec.ename := 'KIM';
        
    emp_rec.dept.deptno := 55;
    emp_rec.dept.dname := 'RND';
    emp_rec.dept.loc := 'SEOUL';

    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.loc);
END;
/

--------------------------------------------------------------------------------
--��� ���̺�(EMP)�ȿ� �μ������� ������ ����(�μ����̺�, ������̺�)
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD( -- �μ� ���̺�
        deptno DEPT.DEPTNO%TYPE,  -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,    -- �μ��̸�
        loc DEPT.LOC%TYPE         -- �μ���ġ
    );
   
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- ����ڵ�
        ename EMP.ENAME%TYPE,   -- ����̸�
        dept REC_DEPT           -- �μ�����
    );
   
    emp_rec REC_EMP;
BEGIN
    SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
        INTO emp_rec.empno, emp_rec.ename, emp_rec.dept.deptno, emp_rec.dept.dname, emp_rec.dept.loc
        FROM emp e, dept d
        WHERE e.deptno = d.deptno
        AND e.empno = 7900;

    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.loc);
END;
/
--------------------------------------------------------------------------------
--��� ���̺�(EMP)�ȿ� �μ������� ������ ����(�μ����̺�)
--------------------------------------------------------------------------------

SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD(        -- �μ� ���̺�
        deptno DEPT.DEPTNO%TYPE,    -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,      -- �μ��̸�
        loc DEPT.LOC%TYPE           -- �μ���ġ
    );
   
    dept_rec REC_DEPT;
BEGIN
    SELECT *
        INTO dept_rec
        FROM dept
        WHERE deptno = 30;

    DBMS_OUTPUT.PUT_LINE(dept_rec.deptno);
    DBMS_OUTPUT.PUT_LINE(dept_rec.dname);
    DBMS_OUTPUT.PUT_LINE(dept_rec.loc);
END;
/

--------------------------------------------------------------------------------
--��� ���̺�(EMP)�ȿ� �μ������� ������ ����(������̺�)
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- ����ڵ�
        ename EMP.ENAME%TYPE,   -- ����̸�
        deptno DEPT.DEPTNO%TYPE,  -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,    -- �μ��̸�
        loc DEPT.LOC%TYPE         -- �μ���ġ        
    );
   
    emp_rec REC_EMP;
BEGIN
    SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
        INTO emp_rec
        FROM emp e, dept d
        WHERE e.deptno = d.deptno
        AND e.empno = 7900;

    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.loc);
END;
/