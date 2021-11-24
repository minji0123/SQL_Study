-- 서브쿼리
-- 스칼라 서브쿼리 (SCLAR SUB-QUERY) : SELECT 절에 서브쿼리를 사용함
-- SELECT 절에 하나의 열 영역과 결과를 출력
-- 조건 : SELECT 절 명시하는 서브쿼리의 결과는 하나의 열에 해당하는 값만 나와야 한다.

-- 급여등급
SELECT * FROM SALGRADE;
SELECT GRADE FROM SALGRADE;

-- 사원의 급여 등급
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
------------------------------------------------------------------------------------------------- 
-- 스칼라 서브쿼리(SCALAR SUB-QUERY)
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E;
------------------------------------------------------------------------------------------------- 
-- 이렇게 하면 오류남
-- 다중행 결과가 나오면 안됨 (단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.)
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE) AS SALGRADE
    FROM EMP E;
    
-- 다중 컬럼이 나오면 안됨
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE, LOSAL, HISAL FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E ORDER BY 1;
-------------------------------------------------------------------------------------------------
-- 부서코드, 부서이름
SELECT E.EMPNO, E.ENAME, E.SAL, 
    (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE,
    (SELECT DNAME FROM DEPT WHERE E.DEPTNO = DEPT.DEPTNO) AS DNAME
    FROM EMP E ORDER BY 1;
    
    
    
    
    