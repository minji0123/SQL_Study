-- 서브쿼리 : FROM 절에 사용하는 서브쿼리
-- 인라인 뷰(INLINE VIEW)
-- 테이블 전체가 아니라 SELECT 문을 통해 일부 데이터를 추출해서 사용

------------------------------------------------------------------
-- 부서가 10 인 사원의 정보
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 10;

-- FROM 절에 쿼리의 결과를 테이블처럼 사용
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- 조인되는 모든 테이블의 검색결과를 미리 추출해서 조인
-- 메인쿼리의 WHERE 조건이 필요없다. (교차되는 조건이 단일이기 때문에, 메인쿼리에 WHERE 조건이 필요없다.)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E,
        (SELECT * FROM DEPT WHERE DEPTNO =10) D;

------------------------------------------------------------------
-- 부서가 10, 20 인 사원의 정보
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO IN(10, 20);

-- FROM 절에 쿼리의 결과를 테이블처럼 사용
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO IN(10, 20)) E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- 조인되는 모든 테이블의 검색결과를 미리 추출해서 조인
-- 메인쿼리의 WHERE 조건이 필요없다.
-- 크로스조인! 데이터가 중복되어 추출됨
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO IN(10, 20)) E,
        (SELECT * FROM DEPT WHERE DEPTNO IN(10, 20)) D;
--         WHERE E.DEPTNO = D.DEPTNO;
        
        
        