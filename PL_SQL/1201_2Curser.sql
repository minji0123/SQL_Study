/*
Ŀ��(CURSER) : ���ڵ��� ��ġ, ���� ��ġ
----------------------------------------------------------------------
�˻������ 1�� �̻��� ����Ǿ��� �� ó��
1, Ŀ������(DECLARATION)
2. Ŀ������(OPEN)
3. Ŀ���б�(FETCH)
4. Ŀ���ݱ�(CLOSE)
*/
----------------------------------------------------------------------

SET SERVEROUTPUT ON;

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ���� DECLARATION
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT
            WHERE DEPTNO = 40;
BEGIN
    OPEN C1; -- Ŀ�� ���� OPEN
    FETCH C1 INTO V_DEPT_ROW;-- Ŀ���κ��� �о�� ������ ��� FETCH
        
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' ||V_DEPT_ROW.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('DNAME : ' ||V_DEPT_ROW.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('LOC : ' ||V_DEPT_ROW.DEPTNO);
        
    CLOSE C1; --Ŀ�� �ݱ� CLOSE
END;
/
----------------------------------------------------------------------
--- SELECT MULTI ROW
-- ������ ����
SET SERVEROUTPUT ON;

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ���� DECLARATION
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT;
BEGIN
    OPEN C1; -- Ŀ�� ���� OPEN
    LOOP
        FETCH C1 INTO V_DEPT_ROW;-- Ŀ���κ��� �о�� ������ ��� FETCH
        
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' ||V_DEPT_ROW.DEPTNO 
                            || ', DNAME : ' ||V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
        
    CLOSE C1; --Ŀ�� �ݱ� CLOSE
END;
/
----------------------------------------------------------------------
-- ����� Ŀ�� ����
-- FOR LOOP
-- FOR ���� IN Ŀ���̸� LOOP
-- �ڵ����� Ŀ�� (OPEN, FETCH, CLOSE)
SET SERVEROUTPUT ON;

DECLARE
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN
    -- Ŀ�� FOR LOOP ����(�ڵ�OPEN, FETCH, CLOSE)
    FOR C1_REC IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || C1_REC.DEPTNO
                            || ', DNAME : ' || C1_REC.DNAME
                            || ', LOC : '|| C1_REC.LOC);
        END LOOP;
    
END;
/

----------------------------------------------------------------------
-- Ŀ���� �Ķ���� ���
SET SERVEROUTPUT ON;

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ����
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE) IS
        SELECT DEPTNO, DNAME, LOC 
        FROM DEPT
        WHRER DEPTNO = P_DEPTNO;
BEGIN
    -- 30�� �μ� ó���� ���� Ŀ�� ���
    OPEN C1 (30);
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('30�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
    CLOSE C1;
    
        -- 10�� �μ� ó���� ���� Ŀ�� ���
    OPEN C1 (10);
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('10�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
    CLOSE C1;
END;
/
----------------------------------------------------------------------

SET SERVEROUTPUT ON;

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- ����� Ŀ�� ����
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE) IS
        SELECT DEPTNO, DNAME, LOC
        FROM DEPT
        WHRER DEPTNO = P_DEPTNO;
BEGIN
    FOR V_DEPT_ROW IN C1(30) LOOP
        DBMS_OUTPUT.PUT_LINE('30�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
        
    FOR V_DEPT_ROW IN C1(20) LOOP
        DBMS_OUTPUT.PUT_LINE('20�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
END;
/