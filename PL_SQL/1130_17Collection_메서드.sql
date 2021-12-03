/*
�÷���(Collection) : ���� �ڷ���
1. Ư�� �ڷ����� ������ ����
2. ���� ������ �����͸� �ϳ��� ���� ���
--------------------------------------------------------------------------------
�����迭:
TYPE �迭�̸� IS TABLE OF �ڷ��� INDEX BY �ε�����
--------------------------------------------------------------------------------
�ε�����: Ű�� ����� �ε����� �ڷ���
1. BINARY_INTEGER
2. PLS_INTEGER(������)
3. VARCHAR2(������)
*/
--------------------------------------------------------------------------------
-- �÷��� �޼���
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- �μ� ���̺� %ROWTYPE ��� �ִ� �迭
    
    dept_lists DEPTLISTS;
    idx PLS_INTEGER := 0;
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        idx := idx + 1;
        dept_lists(idx).deptno := dept.deptno;
        dept_lists(idx).dname  := dept.dname;
        dept_lists(idx).loc    := dept.loc;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- �ٷ� ����
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- �ٷ� ����  
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;

END;
/
--------------------------------------------------------------------------------
--�÷��� �޼���
--[����] dept_lists�� ��� �����͸� ��� ����϶�.(�ε����� ������� ����??)
--------------------------------------------------------------------------------
DESC DEPT;

-- [����] dept_lists�� ��� �����͸� ��� ����϶�.
SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- �μ� ���̺� %ROWTYPE ��� �ִ� �迭
    dept_lists DEPTLISTS;
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        dept_lists(dept.deptno).deptno := dept.deptno;
        dept_lists(dept.deptno).dname  := dept.dname;
        dept_lists(dept.deptno).loc    := dept.loc;
        DBMS_OUTPUT.PUT_LINE(dept.deptno || ', ' || dept.dname || ', ' || dept.loc);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- �ٷ� ����
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- �ٷ� ����  
    

    deptno := dept_lists.first;
    loop
        exit when deptno is null;
        DBMS_OUTPUT.PUT_LINE(dept_lists(deptno).deptno || ', ' || dept_lists(deptno).dname  || ', ' || dept_lists(deptno).loc );
        deptno:= dept_lists.next(deptno);
    end loop;
END;
/

    -- [����] dept_lists�� ��� �����͸� ��� ����϶�.
--    FOR one_dept IN (SELECT * FROM DEPT) LOOP
--        DBMS_OUTPUT.PUT_LINE(dept_lists(one_dept.deptno).deptno || ', ' || dept_lists(one_dept.deptno).dname  || ', ' || dept_lists(one_dept.deptno).loc );
--    END LOOP;