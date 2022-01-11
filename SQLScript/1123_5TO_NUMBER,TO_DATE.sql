--자료형 변환
-- TO_CHAR : 숫자, 날짜데이터를 문자로 변환
-- TO_NUMBER : 문자 데이터를 숫자 데이터로 변환
-- TO_DATE : 문자 데이터를 날짜 데이터로 변환

--------------------------------------------------------------
-- 문자 데이터를 숫자 데이터로 변환
-- TO_NUMBER(문자열, 숫자포멧)

SELECT TO_NUMBER('12345', '999999') FROM DUAL;

SELECT '12345' + 10 FROM DUAL;
SELECT '12345' - 10 FROM DUAL;
SELECT '12345' - '10' FROM DUAL;

SELECT '12,345' - '10' FROM DUAL; -- 얘는 오류남
SELECT TO_NUMNER('12,345', '99,999') +'10' FROM DUAL;
SELECT TO_NUMNER('12,345.12', '99,999.99') +'0.23' FROM DUAL;

SELECT TO_NUMBER('12345', '99999') +10 
    FROM dual;

--------------------------------------------------------------
-- 문자 데이터를 날짜 데이터로 변환하는 함수
-- TO_DATE(문자열, 날짜포멧)

SELECT TO_DATE ('2021-11-15', 'YYYY-MM-DD') FROM DUAL;

SELECT LAST_DAY('2021-11-15') FROM DUAL;
SELECT LAST_DAY(TO_DATE('11-15-2021', MM-DD-YYYY')) FROM DUAL;
SELECT LAST_DAY(TO_DATE('2021-11-15', 'YYYY-MM-DD')) FROM dual;

SELECT LAST_DAY('2021-11-15') FROM DUAL;











