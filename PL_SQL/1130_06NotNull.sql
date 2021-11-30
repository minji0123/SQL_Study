/*
NOT NULL : 변수에 NULL이 저장되지 않게 막음, 선언할 때 값을 지정해야 한다.
변수이름 자료형 NOT NULL := 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    -- NOT NULL로 정의된 변수는 초기치를 할당하여야 합니다
    -- V_DEPTNO NUMBER(2) NOT NULL;    
    
    V_DEPTNO NUMBER(2) NOT NULL := 10;      -- NOT NULL
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- 상수('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);

END;    

/

/*
NOT NULL DEFAULT : 
변수에 NULL이 저장되지 않게 막으면서 기본값을 지정
변수이름 자료형 NOT NULL DEFAULT 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) NOT NULL DEFAULT 10; -- NOT NULL DEFAULT
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- 상수('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';
    
    -- NOT NULL
    -- V_DEPTNO := NULL;

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);

END;    

/