-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- LENGHT(COLUMN) : 컬럼의 문자열 길이를 리턴 (문자열 길이는 논리적인 단위이다.)
    -- "ABC" : 3
    -- "안녕하세요" : 5
-- LENGTHB : 문자열 길이를 바이트 단위로 구하는 함수

SELECT ENAME, LENGTH(ENAME) FROM EMP;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)=4;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)>=4;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)=4;

-- 이름이 한글인 경우
SELECT ENAME, LENGTH(ENAME), LENGTHB(ENAME), JOB, LENGTH(JOB), LENGTHB(JOB) FROM EMP3;

-- 현재 인코딩 방식 알아보기
SELECT * FROM SYS.nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';