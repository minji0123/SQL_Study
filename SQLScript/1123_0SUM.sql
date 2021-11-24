-- 그룹함수 : 다중행 함수
-- 최댓값, 최솟값
-- SUM (COLUMN)

-- 전체 사원의 급여 총액
SELECT SUM(SAL) FROM EMP;

SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 30;


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
