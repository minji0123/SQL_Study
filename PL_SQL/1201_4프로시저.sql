-- 저장 프로시저(STORED PROCEUDRE)
-- 이름을 가진 PL/SQL


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
-- 호출해보기
-- PROC_EMP_NAME 호출
SET SERVEROUTPUT ON;
EXECUTE PROC_EMP_NAME;

-- 호출 : PL/SQL에서 호출
SET SERVEROUTPUT ON;

BEGIN
    PROC_EMP_NAME;
END;
/

-------------------------------------------------------------
-- 프로시저에게 파라미터 전달 ㄱㄴPARAMETER_IN
-- IN : 파라미터를 입력용으로 전달
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN(V_EMPNO IN NUMBER)
IS
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;
/
-- 호출해보기
-- PROC_EMP_NAME 호출
SET SERVEROUTPUT ON;
EXECUTE PROC_EMP_PARAMETER_IN(7900);

-- 호출 : PL/SQL에서 호출
SET SERVEROUTPUT ON;

BEGIN
    PROC_EMP_PARAMETER_IN(8000);
END;
/
SELECT * FROM EMP;
-------------------------------------------------------------
-- 프로시저에게 파라미터 전달 ㄱㄴPARAMETER_IN_OUT
-- IN : 파라미터를 입력용으로 전달
-- OUT : 파라미터 결과값 전달
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN_OUT
    (
    IN_EMPNO IN EMP.EMPNO%TYPE, -- 사원번호를 입력받음
    OUT_SAL OUT EMP.SAL%TYPE -- 사원의 급여를 출력함
    )
IS
BEGIN
    SELECT SAL INTO OUT_SAL
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;
/
-- 호출해보기
DECLARE
    V_SAL EMP.SAL%TYPE; -- 결과값
BEGIN
    proc_emp_parameter_in_out(7900,V_SAL);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('SAL : ' || V_SAL);
    
END;
/

-------------------------------------------------------------
-- 프로시저에게 파라미터 전달 ㄱㄴPARAMETER_IN_OUT
-- IN : 파라미터를 입력용으로 전달
-- OUT : 파라미터 결과값 전달
CREATE OR REPLACE PROCEDURE PROC_EMP_PARAMETER_IN_OUT
    (
    IN_EMPNO IN EMP.EMPNO%TYPE, -- 사원번호를 입력받음
    OUT_SAL OUT EMP.SAL%TYPE, -- 사원의 급여를 출력함
    OUT_COMM OUT EMP.COMM%TYPE, -- 사원의 수당을 출력함
    OUT_TOTAL OUT NUMBER -- 사원의 총 급여를 출력함
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

-- 호출해보기
DECLARE
    V_SAL EMP.SAL%TYPE; -- 결과값
    V_COMM EMP.COMM%TYPE; -- 결과값
    V_TOTAL NUMBER; -- 결과값
    
BEGIN
    proc_emp_parameter_in_out(7521,V_SAL,V_COMM,V_TOTAL);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7521);
    DBMS_OUTPUT.PUT_LINE('SAL : ' || V_SAL);
    DBMS_OUTPUT.PUT_LINE('COMM : ' || V_COMM);
    DBMS_OUTPUT.PUT_LINE('TOTAL : ' || V_TOTAL);
END;
/

-------------------------------------------------------------