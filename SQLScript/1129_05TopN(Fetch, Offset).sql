-- TOP-N
-- 순위를 지정
-- 서브쿼리, INLINE VIEW, ROWNUM 활용해서 처리 가능
-- 오라클 12C 이상

-- 사원중에서 급여를 가장 많이 받는 순서
SELECT EMPNO, SAL FROM EMP ORDER BY SAL DESC;

--------------------------------------------------------------------------------------

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
-- 오라클 12C 이상
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL DESC 
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택
    
-- 중간부터 5명 (상위 5개를 건너뛰고) 선택
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL DESC 
    OFFSET 5 ROWS           --상위5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택

--------------------------------------------------------------------------------------

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
-- 오라클 12C 이상
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL ASC 
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택
    -- 중간부터 5명 (상위 5개를 건너뛰고) 선택
    
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL ASC 
    OFFSET 5 ROWS           --상위5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

-- 11G이하일 때 : ROWNUM

SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP;
-- ROWNUM 컬럼에 번호가 부여됨


-- ROWNUM : 고유한 레코드 번호
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC ;

-- 서브쿼리로 하게되면은 새로운 ROWNUM 이 부여
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC);
    -- FROM 먼저 실행한다음에 ROWNUM이 붙기 때문에, 이번에는 제대로 붙는다.

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM<=5;

-- 중간부터 5명 (상위 5개를 건너뛰고) 선택
SELECT * 
FROM (SELECT ROWNUM numrow, aa.* FROM (SELECT * FROM EMP  ORDER BY SAL desc) aa ) 
WHERE numrow > 5 AND numrow <= 10;


-- 이거는 안됨
SELECT * 
    FROM (SELECT ROWNUM numrow, EMP.* FROM EMP ORDER BY SAL DESC)
    WHERE numrow BETWEEN 6 AND 10;

-- 5번째 SAL(2450)
SELECT ROWNUM, E.EMPNO, E.ENAME, E.SAL
    FROM (SELECT * FROM EMP WHERE SAL<2450 ORDER BY SAL DESC) E
    WHERE ROWNUM <=5;


-------------------------------------------------------------------------
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC 
    FETCH FIRST 5 ROWS ONLY; -- 5개의 레코드를 선택
    
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM<=5;
-------------------------------------------------------------------------

SELECT EMPNO, ENAME, SAL
    FROM EMP ORDER BY SAL DESC
    OFFSET 5 ROWS
    FETCH FIRST 5 ROWS ONLY;

SELECT * 
FROM (SELECT ROWNUM numrow, aa.* FROM (SELECT EMPNO, ENAME, SAL FROM EMP  ORDER BY SAL desc) aa ) 
WHERE numrow > 5 AND numrow <= 10;
