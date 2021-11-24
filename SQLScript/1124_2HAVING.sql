-- 그룹함수 : 다중행 함수
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

--------------------------------------------
-- HAVING: 출력 그룹을 제한하는 조건식
-- GROUP BY 를 통해서 나온 결과 중에서 출력 그룹을 선별하는 조건식

-- 부서별, 직책별 평균 급여액
SELECT DEPTNO, JOB, AVG(SAL) FROM EMP GROUP BY DEPTNO, JOB ORDER BY DEPTNO;

-- 부서별, 직책별 평균 급여액
-- 조건: 평균 급여액이 2000 보단 크거나 같은 급여액만 출력
SELECT DEPTNO, JOB, AVG(SAL) 
    FROM EMP 
    GROUP BY DEPTNO, JOB 
    HAVING AVG(SAL) >= 2000)
    ORDER BY DEPTNO;

-- 소속부서가 10, 30 인 사원중에서 부서별, 직책별 평균 급여액
-- 조건 :  평균 급여액이 2000 보다는 크거나 같은 급여액만 출력
-- 오류 : 그룹핑 함수를 WHERE 조건절에 넣을 수 없다.
SELECT DEPTNO, JOB, AVG(SAL) 
    FROM EMP 
    WHERE DEPTNO IN(10,30)
    -- AND AGV(SAL) > 2000
    GROUP BY DEPTNO, JOB 
    HAVING AVG(SAL) >= 2000
    ORDER BY DEPTNO;
    
-- [문제]
-- 부서별로 사원들의 수, 급여총액, 평균급여액
-- 조건1: 부서(10,20) 사원
-- 조건2: 사원의 수가 3 이하인 경우
SELECT DEPTNO, COUNT(DEPTNO), SUM(SAL),TRUNC(AVG(SAL))
    FROM EMP 
    GROUP BY DEPTNO
    HAVING DEPTNO IN (10, 20)
        AND COUNT(DEPTNO) <= 3
    ORDER BY DEPTNO;
    
    
    
    