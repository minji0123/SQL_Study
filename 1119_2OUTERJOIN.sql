-- 아우터조인


-- 셀프조인 SELF JOIN
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E, EMP M
    WHERE E.MGR = M.EMPNO;


-- LEFT OUTER JOIN
-- SQL 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E LEFT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
-- 오라클 버전
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E,  EMP M
    WHERE E.MGR = M.EMPNO (+);
    
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

    
