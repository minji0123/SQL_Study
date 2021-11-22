-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- LPAD, RPAD : 빈 공간을 다른 문자로 채우는 함수
-- LPAD(일반문자열, 자릿수, 채울문자)
-- RPAD(일반문자열, 자릿수, 채울문자)

-- LPAD
SELECT JOB, LPAD(JOB, 20, '#') FROM EMP;
SELECT JOB, LPAD(JOB, 20, ' ') FROM EMP;
-- 채울 문자를 지정하지 않으면 공백으로 채움
SELECT JOB, LPAD(JOB, 20) FROM EMP;

-- RPAD
SELECT JOB, RPAD(JOB, 20, '#') FROM EMP;
SELECT JOB, RPAD(JOB, 20, ' ') FROM EMP;
-- 채울 문자를 지정하지 않으면 공백으로 채움
SELECT JOB, RPAD(JOB, 20) FROM EMP;

-- 최대 자리수가 원본문자열보다 작으면 최대자릿수만큼 출력되고 데이터는 잘림
SELECT JOB, RPAD(JOB, 5), LENGTH(RPAD(JOB,5)) FROM EMP;

-- 주민번호 (123456-1234567) : 총 14자리
-- 123456-*******
SELECT RPAD('123456-', 14, '*') FROM DUAL;

SELECT SUBSTR('123456-1234567',1,INSTR('123456-1234567','-')) FROM DUAL;

SELECT RPAD(SUBSTR('123456-1234567',1,INSTR('123456-1234567','-')),LENGTH('123456-1234567'),'*') FROM DUAL;


-- 전화번호 (010-1234-5678) : 총 13자리
-- 010-1234-****
SELECT RPAD('010-1234-', 13, '*') FROM DUAL;

SELECT RPAD(SUBSTR('010-1234-5678',1 ,INSTR('010-1234-5678','-',1,2)),LENGTH('010-1234-5678'),'*') FROM DUAL;
SELECT RPAD(SUBSTR('010-1234-5678',1 ,9),LENGTH('010-1234-5678'),'*') FROM DUAL;

SELECT INSTR('010-1234-5678','-',1,2) FROM DUAL;

-- 숫자 10자리, 13자리까지 *로 채우기??
SELECT RPAD('1234567890', 13, '*') FROM DUAL;




