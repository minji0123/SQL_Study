/*
반복 제어문:
    1. 기본 LOOP : 기본 반복문
    2. WHILE LOOP : 특정 조건식의 결과를 통해 반복 수행
    3. FOR LOOP : 반복 회수를 정하여 반복 수행
    4. CURSOR FOR LOOP : 커서를 활용한 반복 수행
--------------------------------------------------------------------------------
반복 수행 중단:
    1. EXIT :  수행 중인 반복 종료
    2. EXIT-WHEN : 반복 종료를 위한 조건식을 지정하고 만족하면 반복 종료
    3. CONTINUE :  수행 중인 반복의 현재 주기를 건너뜀
    4. CONTINUE-WHEN : 특정 조건식을 지정하고 조건식을 만족하면 현재 반복 주기를 건너뜀
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
FOR 변수 IN 시작점..종료점 LOOP
    실행문;
END LOOP;
변수 : FOR LOOP에서만 사용하는 지역변수
     -> 시작점부터 종료점까지 증가하는 값을 받는 변수
     -> 자동선언, 조건식에 해당하는 변수를 자동을 선언
탈출 : 종료점을 처리하고 루프를 탈출
--------------------------------------------------------------------------------
*/
-- loop while문
SET SERVEROUTPUT ON;
DECLARE
    V_CNT NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('CNT가 1부터 10까지 증가합니다');

    WHILE V_CNT <= 10 LOOP -- 조건을 만족하는 동안 블럭을 실행    
        DBMS_OUTPUT.PUT_LINE('CNT : ' || V_CNT);
        V_CNT := V_CNT + 1;
    END LOOP;
END;
/

-- loop for문
SET SERVEROUTPUT ON;
DECLARE
    V_SUM NUMBER := 0;
    V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1부터 10까지 합을 구합니다.');

    FOR CNT IN 1..10 LOOP
        V_SUM := V_SUM + CNT;
        V_CNT := CNT;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    
    -- FOR LOOP를 탈출하면 변수 CNT는 사라짐(소멸)으로 블럭 밖에서는 사용할 수 없다.
    -- DBMS_OUTPUT.PUT_LINE('1부터 ' || CNT || '까지의 합은? ' || V_SUM);
    
    DBMS_OUTPUT.PUT_LINE('1부터 ' || V_CNT || '까지의 합은? ' || V_SUM);
END;
/