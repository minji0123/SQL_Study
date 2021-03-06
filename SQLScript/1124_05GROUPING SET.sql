-- 그룹함수
-- GROUPING SETS : 각 컬럼별 그룹
-- 같은 수준의 그룹화 칼럼이 여러 개일 때, 각각 같은 수준으로 출력


-- 단계별 (부서별, 직책별)
SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO,JOB;

    -- 부서별 사원 총 수
    SELECT DEPTNO, COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO;
    
    -- 직책별 사원 총 수
    SELECT DEPTNO, COUNT(JOB) FROM EMP GROUP BY JOB;

-- 각 부서별 사원수, 직책별 사원수
SELECT deptno, job, COUNT(empno) AS 사원수, SUM(sal) AS 총급여액, TRUNC(AVG(sal)) AS 평균급여액
    FROM emp 
    GROUP BY GROUPING SETS( deptno , job )
    ORDER BY deptno, job;
