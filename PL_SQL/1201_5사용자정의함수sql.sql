-- �Լ�(FUNCTION) ����
-- �Լ��� �Ķ���͸� ����
-- IN  : �Ķ���͸� �Է¿����� ����
-- OUT : �������� ����

CREATE OR REPLACE FUNCTION func_emp_name_in_return
(
    IN_EMPNO IN EMP.EMPNO%TYPE  -- �Լ��� ȣ���� �� ���޵Ǵ� �Է°��� �ڷ���
)
RETURN EMP.ENAME%TYPE           -- ���� Ÿ��(�ڷ���)
IS
    OUT_ENAME EMP.ENAME%TYPE;   -- �Լ� ���ο��� ����� ���� ����
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
        
    RETURN OUT_ENAME;   -- ó�� ��� ����
END;
/

DECLARE
    V_ENAME EMP.ENAME%TYPE;
BEGIN
    V_ENAME := func_emp_name_in_return(7900);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);    
END;
/

SELECT '7900' AS EMPNO, func_emp_name_in_return(7900) FROM DUAL;
SELECT '7566' AS EMPNO, func_emp_name_in_return(7566) FROM DUAL;

SELECT empno, ename, func_emp_name_in_return(empno) FROM EMP;