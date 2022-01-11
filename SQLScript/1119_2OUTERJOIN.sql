-- 아우터조인
-- OUTER JOIN

-- 셀프조인 SELF JOIN
SELECT e.ename AS 사원이름, e.mgr , m.empno, m.ename AS 매니저이름
    FROM emp e, emp m
    WHERE e.mgr = m.empno
    ORDER BY e.mgr;

-- LEFT OUTER JOIN
-- SQL 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E LEFT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
-- 오라클 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E,  EMP M
    WHERE E.MGR = M.EMPNO (+);

SELECT e.ename AS 사원이름, e.mgr , m.empno, m.ename AS 매니저이름
    FROM emp e, emp m
    WHERE e.mgr = m.empno (+);

-- RIGHT OUTER JOIN
-- SQL 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E RIGHT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
-- 오라클 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E,  EMP M
    WHERE E.MGR(+) = M.EMPNO;

SELECT e.ename AS 사원이름, e.mgr , m.empno, m.ename AS 매니저이름
    FROM emp e, emp m
    WHERE e.mgr (+)= m.empno
    ORDER BY e.mgr;
    
    
-- FULL OUTER JOIN
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E FULL OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
    
    
--[문제]
-- FULL OUTER JOIN (전체 외부조인)_기존방식
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E,  EMP M
    WHERE E.MGR = M.EMPNO (+)
UNION
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E,  EMP M
    WHERE E.MGR(+) = M.EMPNO;
    
    
SELECT *
    FROM EMP E LEFT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
    
SELECT *
    FROM EMP E RIGHT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
    
-- EMP, DEPT
-- LEFT OUTER
SELECT *
    FROM EMP E LEFT OUTER JOIN DEPT D 
    ON(E.DEPTNO = D.DEPTNO)
    ORDER BY E.EMPNO;
-- 공통 데이터 + 왼쪽의 EMPNO 테이블 데이터가 모두 출력됨

-- RIGHT OUTER
SELECT *
    FROM EMP E RIGHT OUTER JOIN DEPT D 
    ON(E.DEPTNO = D.DEPTNO)
    ORDER BY E.EMPNO;
-- 공통 데이터 + 오른쪽의 DEPT 테이블 데이터가 모두 출력됨

-- FULL OUTER
SELECT *
    FROM EMP E FULL OUTER JOIN DEPT D 
    ON(E.DEPTNO = D.DEPTNO)
    ORDER BY E.EMPNO;
-- 공통 데이터 + EMP + DEPT 테이블 데이터가 모두 출력됨

