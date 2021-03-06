-- 집합연산자
-- UNION(합집합) : 여러 개의 쿼리 결과 데이터를 위아래 하나의 결과로 출력 + 중복된 데이터를 제거
-- 특징
-- 1. 컬럼의 갯수가 일치해야 함
-- 2. 중복되는 데이터는 하나만 선택됨

SELECT job, sum(sal)
    FROM emp
    GROUP BY job
UNION ALL
SELECT null AS job, sum(sal)
    FROM emp;



SELECT * FROM EMP WHERE DEPTNO = 10;
SELECT * FROM EMP WHERE DEPTNO = 20;

SELECT * FROM EMP WHERE DEPTNO IN (10, 20);

-- UNION
SELECT ename, job, deptno
    FROM EMP 
    WHERE DEPTNO = 10
UNION
SELECT ename, job, deptno
    FROM EMP 
    WHERE DEPTNO = 20;


-- 1. 컬럼의 갯수가 일치해야 한다.
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 20;


-- 2. 중복되는 부서20 은 하나의 행 가로 레코드 만 선택됨.
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 20;

-- 열의 갯수는 같은데, 컬럼이 다를 경우
-- 중복되어도 다른 데이터로 인식함
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT EMPNO, ENAME, SAL, COMM FROM EMP WHERE DEPTNO = 20;

-- ---------------------------------------------------------------------------------
-- 새로운 테이블 생성 : 기존의 테이블을 이용해서
CREATE TABLE EMP2 AS SELECT EMPNO, ENAME, SAL, SAL * 12 AS ANNUAL FROM EMP;

DESC EMP2;
SELECT * FROM EMP2;
-- ---------------------------------------------------------------------------------
-- 새로 만든 테이블 EMP2 랑 EMP를 UNION
-- UNION은 중복레코드 하나만 선택해서 출력
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT * FROM EMP2 ORDER BY EMPNO, ENAME;
-- ---------------------------------------------------------------------------------
-- 테이블 EMP -> EMP3 복제
CREATE TABLE EMP3 AS SELECT * FROM EMP;
DESC EMP3;
SELECT * FROM EMP3;
-- ---------------------------------------------------------------------------------
-- UNION과 UNION ALL
-- UNION은 중복레코드 하나만 선택해서 출력
SELECT * FROM EMP UNION SELECT * FROM EMP3;

-- UNION ALL은 중복포함 모두 출력
SELECT * FROM EMP UNION ALL SELECT * FROM EMP3;

SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10)
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (20)
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP3;

-- UNION ALL
SELECT ename, job, deptno
    FROM EMP 
    WHERE deptno in (10,20)
UNION ALL
SELECT ename, job, deptno
    FROM EMP 
    WHERE deptno in (20,30);





