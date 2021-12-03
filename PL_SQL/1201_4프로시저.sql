-- ���� ���ν���(STORED PROCEUDRE)
-- �̸��� ���� PL/SQL


CREATE OR REPLACE PROCEDURE PROC_EMP_NAME
IS
    V_EMPNO NUMBER := 7900;
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;
/
-- ȣ���غ���
-- PROC_EMP_NAME ȣ��
SET SERVEROUTPUT ON;
EXECUTE PROC_EMP_NAME;

-- ȣ�� : PL/SQL���� ȣ��
SET SERVEROUTPUT ON;

BEGIN
    PROC_EMP_NAME;
END;
/

-------------------------------------------------------------
-- ���ν������� �Ķ���� ���� ����PARAMETER_IN
-- IN : �Ķ���͸� �Է¿����� ����
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN(V_EMPNO IN NUMBER)
IS
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;
/
-- ȣ���غ���
-- PROC_EMP_NAME ȣ��
SET SERVEROUTPUT ON;
EXECUTE PROC_EMP_PARAMETER_IN(7900);

-- ȣ�� : PL/SQL���� ȣ��
SET SERVEROUTPUT ON;

BEGIN
    PROC_EMP_PARAMETER_IN(8000);
END;
/
SELECT * FROM EMP;
-------------------------------------------------------------
-- ���ν������� �Ķ���� ���� ����PARAMETER_IN_OUT
-- IN : �Ķ���͸� �Է¿����� ����
-- OUT : �Ķ���� ����� ����
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN_OUT
    (
    IN_EMPNO IN EMP.EMPNO%TYPE, -- �����ȣ�� �Է¹���
    OUT_SAL OUT EMP.SAL%TYPE -- ����� �޿��� �����
    )
IS
BEGIN
    SELECT SAL INTO OUT_SAL
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;
/
-- ȣ���غ���
DECLARE
    V_SAL EMP.SAL%TYPE; -- �����
BEGIN
    proc_emp_parameter_in_out(7900,V_SAL);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('SAL : ' || V_SAL);
    
END;
/

-------------------------------------------------------------
-- ���ν������� �Ķ���� ���� ����PARAMETER_IN_OUT
-- IN : �Ķ���͸� �Է¿����� ����
-- OUT : �Ķ���� ����� ����
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN_OUT
    (
    IN_EMPNO IN EMP.EMPNO%TYPE, -- �����ȣ�� �Է¹���
    OUT_SAL OUT EMP.SAL%TYPE, -- ����� �޿��� �����
    OUT_COMM OUT EMP.COMM%TYPE, -- ����� ������ �����
    OUT_TOTAL OUT NUMBER -- ����� �� �޿��� �����
    )
IS
BEGIN
    SELECT SAL INTO OUT_SAL
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
    
    SELECT NVL(COMM,0) INTO OUT_COMM
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
        
    SELECT SAL + NVL(COMM,0) INTO OUT_TOTAL
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;
/

-- ȣ���غ���
DECLARE
    V_SAL EMP.SAL%TYPE; -- �����
    V_COMM EMP.COMM%TYPE; -- �����
    V_TOTAL NUMBER; -- �����
    
BEGIN
    proc_emp_parameter_in_out(7521,V_SAL,V_COMM,V_TOTAL);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7521);
    DBMS_OUTPUT.PUT_LINE('SAL : ' || V_SAL);
    DBMS_OUTPUT.PUT_LINE('COMM : ' || V_COMM);
    DBMS_OUTPUT.PUT_LINE('TOTAL : ' || V_TOTAL);
END;
/

-------------------------------------------------------------