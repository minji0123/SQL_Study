-- 다중행 서브쿼리 MULTI-ROW-SUBQUERY : 
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자 : IN,ANY, SONE, ALL, EXISTS

-----------------------------------------------------------------------------
-- [ANY, SOME]
-- 서브쿼리가 반환한 여러 결과 중에서 메인쿼리와 조건식을 사용한 결과가 하나라도 같으면 TRUE

-- 각 부서별 최고 급여액
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- 각 부서별 최저 급여액 950
SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO;

-----------------------------------------------------------------------------
-- [ANY]
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM EMP
    WHERE SAL = ANY (SELECT  MAX(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [SOME]
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM EMP
    WHERE SAL = SOME (SELECT  MAX(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [문제]
-- 부서코드(30) 의 최대 급여를 받는 사람보다 적은 급여를 받는 모든 사원 정보 2850
SELECT * FROM EMP
    WHERE SAL < ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
SELECT * FROM EMP
    WHERE SAL < SOME (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
-- 그룹함수로 하기
-- 부서코드(30) 의 최대 급여를 받는 사람보다 적은 급여를 받는 모든 사원 정보 2850
SELECT * FROM EMP
    WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30);

-----------------------------------------------------------------------------
-- [문제]
-- 부서코드(30) 의 최저 급여를 받는 사람보다 많은 급여를 받는 모든 사원 정보 950
SELECT * FROM EMP
    WHERE SAL > ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);

SELECT * FROM EMP
    WHERE SAL < SOME (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
-- 그룹함수로 하기
-- 부서코드(30) 의 최대 급여를 받는 사람보다 적은 급여를 받는 모든 사원 정보 2850
SELECT * FROM EMP
    WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30);
    