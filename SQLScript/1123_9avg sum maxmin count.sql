
-- 그룹함수 : 다중행 함수
-- 평균값을 구하는 함수
-- AVG (COLUMN)

-- 전체 사원의 평균 급여?
SELECT AVG(sal) 
    FROM emp;
SELECT ename, sal
    FROM emp;


-- 부서가 30 인 사원들의 평균 급여
SELECT AVG(sal) 
    FROM emp
    WHERE deptno=30;
SELECT TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO=30; -- 버림(소숫점이하 버림)
SELECT TRUNC(AVG(SAL),2 ) FROM EMP WHERE DEPTNO=30;-- 버림(소숫점이하 2자리까지 표시)
SELECT ROUND(AVG(SAL),2 ) FROM EMP WHERE DEPTNO=30;-- 버림(소숫점이하 3자리에서 반올림)

-- 옵션 :DISTINCT, ALL
SELECT ENAME, SAL FROM EMP WHERE DEPTNO= 30;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVT(ALL SAL) FROM EMP WHERE DEPTNO = 30;
SELECT TRUNC(AVG(SAL)), TRUNC(AVG(ALL SAL)), AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;

----------------------------------------------------------------------
-- 그룹함수 : 다중행 함수
-- COUNT (COLUMN)

-- 전체 행의 갯수
SELECT COUNT(*) 
    FROM emp
    WHERE deptno = 30;
SELECT COUNT(EMPNO) FROM EMP;

-- 컬럼에 NULL 이 있는 경우는 갯수에 포함되지 않음
SELECT comm 
    FROM emp;
SELECT COUNT(comm) 
    FROM emp;
SELECT COUNT(comm) 
    FROM emp WHERE comm IS NOT NULL; -- 결과 : 4개
SELECT COUNT(COMM) FROM EMP WHERE COMM IS NULL; -- 결과 : 0개
SELECT COUNT(EMPNO)FROM EMP WHERE COMM IS NULL; -- 결과 : 8개 

----------------------------------------------------------------------
-- 그룹함수 : 다중행 함수
-- 최댓값, 최솟값
-- MAX (COLUMN)
-- MIN (COLUMN)

-- 가장 급여를 많이 받는 사원
SELECT MAX(SAL) FROM EMP;

-- 가장 급여를 적게 받는 사원
SELECT MIN(SAL) FROM EMP;

-- 사원들의 급여 중 제일 적은 급여, 제일 많은 급여
SELECT MAX(sal), MIN(sal)
    FROM emp;
SELECT MAX(sal), MIN(sal)
    FROM emp
    WHERE deptno = 30;
-- 입사일이 가장 최근인 사원의 입사일자
SELECT MAX(HIREDATE) FROM EMP;

SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP WHERE DEPTNO = 20;


----------------------------------------------------------------------
-- 그룹함수 : 다중행 함수
-- 최댓값, 최솟값
-- SUM (COLUMN)

-- 전체 사원의 급여 총액
SELECT SUM(sal) 
    FROM emp;

SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT SUM(sal) 
    FROM emp 
    WHERE deptno = 30;


SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 30;



SELECT '10' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT '20' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT '30' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 30;

-------------------------------------------------------------------------