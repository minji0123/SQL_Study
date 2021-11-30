/*
비교연산자 : 같다(=), >, <, >=, <=, !=, <>
조건 제어문:
IF 조건식 THEN
    명령문;
END IF;
--------------------------------------------------------------------------------
나머지 값 반환 : MOD(나누어질 숫자, 나눌 숫자)
--------------------------------------------------------------------------------
*/
-- 홀수
SET SERVEROUTPUT ON;
DECLARE
    -- V_NUM NUMBER := 10;
    V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- 같다(=), MOD() 나머지 값 구하는 함수
        DBMS_OUTPUT.PUT_LINE('NUM 값 ' || V_NUM || '는(은) 홀수입니다.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/

-- 짝수
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 10;
    -- V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- 같다(=), MOD() 나머지 값 구하는 함수
        DBMS_OUTPUT.PUT_LINE('NUM 값 ' || V_NUM || '는(은) 홀수입니다.');
        -- 자바언어
        -- System.out.println("NUM 값 " + V_NUM + "는(은) 홀수입니다.");
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUM 값 ' || V_NUM || '는(은) 짝수입니다.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/

-- 해당하는 점수 출력
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 90;
BEGIN
    IF V_SCORE >= 95 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) A학점입니다.');
    ELSIF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) B학점입니다.');
    ELSIF V_SCORE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) C학점입니다.');
    ELSIF V_SCORE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) D학점입니다.');
    ELSIF V_SCORE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) E학점입니다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은) F학점입니다.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('학점');
END;    

/
-- 출력 문자열 이쁘게 정렬
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    IF V_SCORE >= 95 THEN
        V_GRADE := 'A';
    ELSIF V_SCORE >= 90 THEN
        V_GRADE := 'B';
    ELSIF V_SCORE >= 80 THEN
        V_GRADE := 'C';
    ELSIF V_SCORE >= 70 THEN
        V_GRADE := 'D';
    ELSIF V_SCORE >= 60 THEN
        V_GRADE := 'E';
    ELSE
        V_GRADE := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은)' || V_GRADE || '학점입니다.');
END;    

/