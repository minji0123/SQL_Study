-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수
    
    
-- [1. 단일행 함수]
-- 문자함수(String)
-- Upper : 데이터를 대문자로 변환
-- Lower : 데이터를 소문자로 변환
-- Initcap : 데이터의 첫 글자만 대문자, 나머지는 소문자로 변환

SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP;

SELECT ENAME, UPPER(ENAME) AS ENAME2, LOWER(ENAME) AS ENAME3, INITCAP(ENAME) AS ENAME4 FROM EMP;

-- 대문자인 데이터 검색
SELECT EMPNO, ENAME FROM EMP WHERE ENAME='KING';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME=upper('king');

-- 이름의 일부 문자를 검색
SELECT EMPNO, ENAME FROM EMP WHERE ENAME LIKE 'J%';


-- 테이블 데이터와 검색하고자 하는 데이터 양쪽을 모두 소문자로 변환해서 검색
SELECT EMPNO, ENAME FROM EMP WHERE LOWER(ENAME) = LOWER('CLARK');

SELECT EMPNO, ENAME FROM EMP WHERE ENAME = INITCAP('cLARK');
SELECT EMPNO, ENAME FROM EMP WHERE INITCAP(ENAME) = INITCAP('cLARK');
