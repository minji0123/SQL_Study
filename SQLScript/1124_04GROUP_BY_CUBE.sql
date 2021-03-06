-- 그룹함수 : 다중행 함수
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY CUBE
    
    
-- GROUP BY CUBE : 각 그룹별로 집계
-- 1단계 : DEPTNO 집계
-- 2단계 : JOB별 집계(ROLLUP이랑 다름)
-- 3단계 : 전체 집계
SELECT deptno, job, COUNT(empno) AS 사원수, SUM(sal) AS 총급여액, TRUNC(AVG(sal)) AS 평균급여액
    FROM emp    
    GROUP BY CUBE(deptno, job)
    ORDER BY deptno, job;
    
-- JOB으로만 그룹롤업
-- 부서코드로 그룹화하고, 직책(JOB) 단위로 병합 (전체 그룹핑은 안되어있음)
SELECT deptno, JOB, COUNT(empno) AS 사원수, SUM(sal) AS 총급여액, TRUNC(AVG(sal)) AS 평균급여액
    FROM emp
    GROUP BY DEPTNO, CUBE(JOB)
    ORDER BY DEPTNO, JOB;
        -- 결과는 ROLLUP이랑 같움