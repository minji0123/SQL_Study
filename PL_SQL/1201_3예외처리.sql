-- 예외처리 EXCEPTION
-- 예외가 발생하더라도 프로그램을 종료하지 않고 진행

DECLARE
    V_DNAME NUMBER; -- VARCHAR2(14)
    
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
        -- 예외가 발생하면 예외가 발생한 이후의 명령문은 실행되지 않음
        DBMS_OUTPUT.PUT_LINE('부서명 : ' || V_DNAME);
        
    EXCEPTION -- 예외처리
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('예외처리');
            
        -- 예외처리 후 실행
            DBMS_OUTPUT.PUT_LINE('THE END');

END;
/
-------------------------------------------------------------------------

DECLARE
    --V_DNAME NUMBER; -- VARCHAR2(14)
    V_DNAME VARCHAR2(2);
    
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
        -- 예외가 발생하면 예외가 발생한 이후의 명령문은 실행되지 않음
        DBMS_OUTPUT.PUT_LINE('예외 발생 시 이거 출력ㄴㄴ');
        
    EXCEPTION -- 여러 예외처리
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('예외처리 : 요구보다 많은 행 추출 오류');
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('예외처리 : 수치나 값 오류');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('예외처리 : 뭐 기타등등');
        
        -- 예외처리 후 실행
            DBMS_OUTPUT.PUT_LINE('THE END');

END;
/