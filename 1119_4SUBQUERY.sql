-- 서브쿼리 SUB-QUERY
-- SELELCT 문 안에 SELECT 문이 있음
-- 메인쿼리 : 서브쿼리의 결과를 가지고 쿼리함
-- 서브쿼리 : 
-- 메인쿼리의 대상
-- 서브쿼리는 메인쿼리와 컬럼명과 컬럼 개수가 같아야 한다.
-- 결과의 행 수는 메인쿼리의 연산자 종류와 호환 가능해야 한다. (결과가 단일행, 다중행)

-- 1. CLERK의 급여보다 돈을 많이 버는 사원을 출력하고 싶음
    -- 1-1 일단 다 출력
SELECT * FROM EMP;
    -- 1-2 CLARK의 급여
SELECT EMPNO, ENAME, SAL AS 급여  
    FROM EMP WHERE EMPNO=7782;
    -- 1-3 2450보다 더 많은 급여를 받는 사원
SELECT * FROM EMP WHERE SAL > 2450;

-- 2. 서브쿼리로 해보셈 : 단일행과 단일 컬럼
SELECT * FROM EMP WHERE SAL > (SELECT SAL FROM EMP WHERE EMPNO = 7782);
    -- 2-1 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다. 오류
SELECT * FROM EMP WHERE SAL > (SELECT SAL FROM EMP WHERE EMPNO > 7782);

-- [문제1]
-- 입사일자 순으로 정렬
SELECT * FROM EMP ORDER BY HIREDATE;
-- TURNER 보다 빨리 입사한 사원
SELECT * FROM EMP WHERE HIREDATE < (SELECT HIREDATE FROM EMP WHERE  EMPNO = 7782);
SELECT * FROM EMP WHERE TO_DATE(HIREDATE, 'YY/MM/DD') < TO_DATE('81/09/08','YY/MM/DD');


-- [문제2]
-- TURNER 보다 늦게 입사한 사원
SELECT * FROM EMP WHERE HIREDATE > (SELECT HIREDATE FROM EMP WHERE  EMPNO = 7782);

-- [문제3]
-- 부서코드가 20에 속한 사원중에 TURNER 보다 높은 급여를 받는 사원정보와 소속 부서 정보를 출력
SELECT EMP.*, DEPT.* FROM EMP, DEPT 
    WHERE EMP.DEPTNO = DEPT.DEPTNO
    AND EMP.DEPTNO =20
    AND EMP.SAL > (SELECT EMP.SAL FROM EMP WHERE ename = 'TURNER' );


-- [문제4]
-- 부서코드가 20에 속한 사원중에 전체 사원의 평균 급여보다 높은 급여를 받는 사원정보와 소속 부서 정보를 출력
SELECT EMP.*, DEPT.* FROM EMP, DEPT 
    WHERE EMP.DEPTNO = DEPT.DEPTNO
    AND EMP.DEPTNO =20
    AND EMP.SAL >ALL (SELECT AVG(SAL) FROM EMP);




