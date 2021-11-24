-- 서브쿼리 : FROM 절에 사용하는 서브쿼리
-- 인라인 뷰(INLINE VIEW)
-- 테이블 전체가 아니라 SELECT 문을 통해 일부 데이터를 추출해서 사용

------------------------------------------------------------------    
-- 조인되는 모든 테이블의 검색결과를 미리 추출해서 조인
-- 메인쿼리의 WHERE 조건이 필요없다. (교차되는 조건이 단일이기 때문에, 메인쿼리에 WHERE 조건이 필요없다.)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E,
        (SELECT * FROM DEPT WHERE DEPTNO =10) D;

        
-- WITH
-- 서브쿼리를 미리 지정하여 SELECT 문에 사용
WITH
E AS (SELECT * FROM EMP WHERE DEPTNO = 10),
D AS (SELECT * FROM DEPT WHERE DEPTNO = 10)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM E,D -- WHIT 에서 지정한 별칭을 사용함
    WHERE E.DEPTNO = D.DEPTNO;
        