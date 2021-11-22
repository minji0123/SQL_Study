-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- CONCAT(문자열1, 문자열2) : 문자열1 + 문자열2, 두 개의 문자열을 하나로 결합

-- 이름과 사번을 결합
SELECT EMPNO, ENAME, CONCAT(ENAME, EMPNO) FROM EMP;
--사번과 이름을 결합
SELECT EMPNO, ENAME, CONCAT(EMPNO, ENAME) FROM EMP;

-- 사번, + '-' + 이름
SELECT EMPNO, ENAME, CONCAT(EMPNO, CONCAT('-',ENAME)) FROM EMP;

-- 이름 + '(' + 사번 + ')'
SELECT EMPNO, ENAME, CONCAT(ENAME, CONCAT('(',EMPNO) ||')' ) FROM EMP;
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('(',EMPNO)), ')') FROM EMP;

-- 각 단계별 CONCAT
SELECT CONCAT ('[', EMPNO) FROM EMP;
SELECT CONCAT(ENAME, CONCAT('[', EMPNO)) FROM EMP;
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('[',EMPNO)), ']') FROM EMP;


-- ||로 결합하기
SELECT EMPNO, ENAME, ENAME||EMPNO FROM EMP;
SELECT EMPNO, ENAME, ENAME || '(' || EMPNO || ')' AS ENAME_NO FROM EMP;

