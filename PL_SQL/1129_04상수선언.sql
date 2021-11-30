/*
상수 선언 : 지정한 값이 종료 될 때까지 변하지 않음 
변수이름 CONSTANT 자료형 := 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    V_EMPNO CONSTANT NUMBER(4) := 7900;  -- 상수선언, 값이 지정된 후 변경시킬 수 없다.
    V_ENAME VARCHAR2(10);  -- 'JAMES'
BEGIN
    -- 상수는 값을 변경시킬 수 없다.
    -- V_EMPNO := 7788; -- 오류
    V_ENAME := 'JAMES';

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
END;    

/