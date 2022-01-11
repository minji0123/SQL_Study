-- 그룹함수 : 다중행 함수
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY ROLLUP : 단계별 집계
-- 그룹함수에 지정된 데이터를 단계별로 집계합니다. (중간단계, 전체)
    -- 중간   단계 : 지정된 컬럼의 수만큼 집계
    -- 마지막 단계 : 맨 마지막 열에 전체 집계 출력

-- (부서별, 직책별) 사원총수, 최고급여, 급여총액, 평균급여액
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
    
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
    
-- ROLLLUP : 각 그룹별로 집계
-- 1단계 : DEPTNO 집계
-- 2단계 : 전체 집계
-- DEPTNO, JOB 둘다 그룹롤업
SELECT deptno, JOB, COUNT(empno) AS 사원수, SUM(sal) AS 총급여액, TRUNC(AVG(sal)) AS 평균급여액
    FROM emp
    GROUP BY ROLLUP(deptno, job)
    ORDER BY deptno, job;
        
-- JOB으로만 그룹롤업
-- 부서번호, 직업으로 그룹화하고, 직업으로만 그룹롤업(집계) 합니다.
SELECT deptno, JOB, COUNT(empno) AS 사원수, SUM(sal) AS 총급여액, TRUNC(AVG(sal)) AS 평균급여액
    FROM emp
    GROUP BY deptno, ROLLUP(job)
    ORDER BY deptno, job;

    