-- 다중행 서브쿼리 MULTI-ROW-SUBQUERY : 
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자 : IN,ANY, SONE, ALL, EXISTS

-----------------------------------------------------------------------------
-- [IN]
-- 서브쿼리가 반환한 여러 결과 중에서 메인쿼리와 조건식을 사용한 결과가 하나라도 같으면 TRUE
SELECT * FROM EMP WHERE DEPTNO IN(10, 20) ORDER BY DEPTNO;

-- 각 부서별 최고 급여액
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- 각 부서별 최저 급여액 950
SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO;

-----------------------------------------------------------------------------
-- [IN]
-- 부서별 최고 급여액을 받는 사원정보
SELECT ename, job, sal 
    FROM emp
    WHERE sal IN (SELECT MAX(sal) 
                    FROM emp 
                    GROUP BY deptno);
                
SELECT ename, job, sal
    FROM emp
    WHERE empno NOT IN (SELECT mgr 
                    FROM emp 
                    WHERE mgr is not null);          
-----------------------------------------------------------------------------
-- [문제]
-- 부서별 최저 급여액을 받는 사원정보
SELECT * FROM EMP
    WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [문제]
-- 사원을 가지고 있지 않은 부서 : 40
SELECT COUNT(EMP.EMPNO), DEPT.DEPTNO
    FROM EMP, DEPT
    WHERE EMP.DEPTNO = DEPT.DEPTNO
    GROUP BY DEPT.DEPTNO;

SELECT D.*
    FROM EMP E, DEPT D
    WHERE E.DEPTNO(+) = D.DEPTNO AND E.ENAME IS NULL;
    
SELECT * FROM DEPT
    WHERE DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM EMP); -- 10, 20, 30
    
SELECT * FROM DEPT
    WHERE DEPTNO IN (SELECT DISTINCT DEPTNO FROM EMP); -- 40
    
    
SELECT * FROM dept WHERE deptno not in(SELECT deptno FROM emp GROUP by deptno); -- 오영국님
    -- GROUP BY 는 집계함수이기 때문에 이렇게 잘 쓰지는 않는다.

----------------------------------------------------------------------------
SELECT *
    FROM dept d
    WHERE NOT EXISTS (SELECT *
                    FROM emp e
                    WHERE e.deptno = d.deptno);