-- 표준 SQL: ISO/ANSI(SQL-99)

-- 자연조인(natural join)
-- 대상이 되는 두 테이블에 이름과 자료형이 같은 칼럼을 기준으로 등가조인(equal join)을 한다.
-- 테이블 별칭을 붙여서 칼럼명을 명시할 수 없다.
-- 조인되는 칼럼에 테이블명을 붙일 수 없다.

-- 오류: emp.deptno
-- 조인되는 칼럼은 앞에 테이블명을 명시할 수 없다.
-- SELECT empno, ename, emp.job, emp.deptno, dname, loc
-- FROM emp natural join dept
-- ORDER BY 1,2;

-- 등가조인(equal join), 동등조인, 내부조인, 단순조인
SELECT * FROM emp e, dept d 
    WHERE e.deptno = d.deptno 
    ORDER BY e.empno;
    
-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT '[natural join]' as title, empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;    

-- 테이블 dept2에 empno 칼럼을 추가
-- 자연조인으로 일치되는 칼럼이 2개인 경우
CREATE TABLE dept2 AS
    SELECT deptno, dname, loc, empno
    FROM emp natural join dept;
    
DESC dept2;

-- 자연조인 : join emp, dept2
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept2
    ORDER BY 1,2;    
    
-- 등가조인 : join emp, dept2
SELECT * FROM emp e, dept2 d 
    WHERE e.deptno = d.deptno 
    AND e.empno = d.empno
    ORDER BY e.empno;
    
-- 표준 SQL: ISO/ANSI(SQL-99)

-- 자연조인(natural join)
-- 대상이 되는 두 테이블에 이름과 자료형이 같은 칼럼을 기준으로 등가조인(equal join)을 한다.
-- 테이블 별칭을 붙여서 칼럼명을 명시할 수 없다.
-- 조인되는 칼럼에 테이블명을 붙일 수 없다.

-- NATURAL JOIN
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e natural join dept d
    WHERE e.job = 'MANAGER'
    ORDER BY 1;

-- JOIN ~ USING
-- 조인되는 칼럼은 동일한 이름과 타입이어야 한다.
-- 조인되는 칼럼은 테이블 식별자를 지정할 수 없다.
--SELECT e.empno, e.ename, e.job, deptno, d.dname, d.loc
SELECT e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e join dept d 
    USING(deptno)
    WHERE e.job = 'MANAGER'
    ORDER BY 1;
    
    
    
    
-- 테이블 : emp, dept2    
-- 조인되는 칼럼: empno, deptno
SELECT empno, deptno, e.ename, e.job, d.dname, d.loc
    FROM emp e join dept2 d using(empno, deptno)
    ORDER BY 1,2;
    
    
-- JOIN ~ ON
-- 조인 조건을 명시
-- 사원의 소속 부서코드를 조인하여 부서정보 확인
SELECT e.ename, e.job, e.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno = d.deptno)
    ORDER BY 1;
    
SELECT e.ename, e.job, e.deptno, d.dname, d.loc
    FROM emp e join dept d 
    ON(e.deptno = d.deptno)
    WHERE e.job = 'MANAGER'
    ORDER BY 1;
    
    
-- 소속되지 않은 부서 정보 조인: e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno != d.deptno)
    ORDER BY 1,2;

-- 소속되지 않은 부서 정보 조인하여 부정 : 소속된 부서
-- not e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(not (e.deptno != d.deptno))
    ORDER BY 1,2;
    
-- 부서가 위치한 장소가 'CHICAGO', 'NEW YORK'인 부서만 조인
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(d.loc IN('CHICAGO', 'NEW YORK') AND e.deptno = d.deptno)
    ORDER BY 1,2;