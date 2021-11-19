-- 서브쿼리 :  다중행 서브쿼리 (MULTI-ROW-SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자 : IN,ANY, SONE, ALL, EXISTS

-- 부서코드가 30 인 사원의 급여 정보
SELECT * FROM EMP WHERE DEPTNO = 30 ORDER BY SAL;

-- 부서코드가 30인 사원들의 최소 급여보다 더 적은 급여를 받는 사원
-- JAMES : 950
SELECT * FROM EMP
    WHERE SAL <ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;

-- ALL
-- 서브쿼리가 반환한 여러 결과가, 메인쿼리-조건식 결과와 모두 (ALL) 같으면 메인쿼리 조건식을 TRUE 로 반환

-- 부서코드가 30인 사원들의 최고 급여보다 더 많은 급여를 받는 사원
SELECT * FROM EMP
    WHERE SAL > ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;
    
-- 직업이 SALESMAN 인 사원들과 같은 월급을 받는 사원
SELECT * FROM EMP WHERE SAL IN(SELECT SAL FROM EMP WHERE JOB='SALESMAN');

CREATE TABLE EMP4
    AS SELECT * FROM EMP;

-- JONES 보다 더 많은 월급을 받는 사원
SELECT * FROM EMP4 WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');

SELECT JOB, SAL FROM EMP4;
