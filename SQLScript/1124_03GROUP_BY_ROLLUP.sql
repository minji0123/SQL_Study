-- 그룹함수 : 다중행 함수
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY ROLLUP : 단계별 집계
-- 그룹함수에 지정된 컬럼을 단계별로 집계함 (중간단계, 전체)
    -- 중간   단계 : 지정된 컬럼의 수만큼 집계
    -- 마지막 단계 : 맨 마지막 열에 전체 집계 출력

-- (부서별, 직책별) 사원총수, 최고급여, 급여총액, 평균급여액
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
-- ROLLLUP : 각 그룹별로 집계
-- 1단계 : DEPTNO 집계
-- 2단계 : 전체 집계
-- DEPTNO, JOB 둘다 그룹롤업
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY ROLLUP(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- JOB으로만 그룹롤업
-- 부서코드로 그룹화하고, 직책(JOB) 단위로 병합 (전체 그룹핑은 안되어있음)
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, ROLLUP( JOB)
    ORDER BY DEPTNO, JOB;
    
    