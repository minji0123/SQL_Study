-- 서브쿼리
-- WITH: 서브쿼리를 미리 지정하여 SELECT문에 사용

SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, 
         (SELECT * FROM dept WHERE deptno = 10) d
    WHERE e.deptno = d.deptno;
         
         
-- WITH
-- 서브쿼리를 미리 지정하여 SELECT문에 사용
WITH
e AS (SELECT * FROM emp WHERE deptno = 10),
d AS (SELECT * FROM dept WHERE deptno = 10)
SELECT e.empno, e.ename, d.deptno, d.dname 
    FROM e,d    -- WITH에서 지정한 별칭을 사용
    WHERE e.deptno = d.deptno;