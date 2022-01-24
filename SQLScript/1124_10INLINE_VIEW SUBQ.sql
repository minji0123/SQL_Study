-- 서브쿼리 : FROM절에 사용하는 서브쿼리
-- 인라인 뷰(INLINE VIEW)
-- 테이블 전체가 아니라 SELECT 문을 통해 일부 데이터를 추출해서 사용

-- 부서가 10인 사원의 정보
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno = 10;

-- FROM절의 쿼리의 결과를 테이블처럼 사용
SELECT e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, dept d
    WHERE e.deptno = d.deptno;

-- 조인되는 모든 테이블의 검색 결과를 미리 추출해서 조인
-- 메인쿼리의 WHERE 조건이 필요 없다.
-- 주의: 교차되는 조건이 단일이므로 메인 쿼리에 WHERE 조건이 필요없다.
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, 
         (SELECT * FROM dept WHERE deptno = 10) d;
         
--------------------------------------------------------------------------------         
-- 부서가 10, 20인 사원의 정보
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno IN (10, 20);

-- FROM절의 쿼리의 결과를 테이블처럼 사용
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno IN(10,20)) e, dept d
    WHERE e.deptno = d.deptno;

-- 조인되는 모든 테이블의 검색 결과를 미리 추출해서 조인
SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno IN (10,20)) e, 
         (SELECT * FROM dept WHERE deptno IN (10,20)) d
    -- 주의: 카티시안 프로덕션, 크로스 조인, 교차 조인으로 
    -- 데이터가 중복해서 추출되므로 메인쿼리에 WHERE을 줘야 한다.
    WHERE e.deptno = d.deptno
    ORDER BY 1;
         