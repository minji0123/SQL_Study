-- 조인JOIN : 서로 다른 테이블에 있는 컬럼들을 하나의 결과로 출력하기 위함
-- CROSS JOIN : EQUI 조인에서, 조건을 주지 않고 조이을 하면 모든 데이터들이 전부 조인됨

SELECT * FROM EMP; -- 컬럼 12개
SELECT * FROM DEPT; -- 컬럼 4개


-- 카티시안 프로덕션, 크로스 조인
-- 컬럼 48개
SELECT * 
    FROM emp e, dept d;

-- 등가조인(EQUAL JOIN) 동등조인, 내부조인, 단순조인
-- DEPTNO가 같은 
SELECT * 
    FROM emp e, dept d 
    WHERE e.deptno = d.deptno;

-- [문제]
-- 급여가 3000 미만이면서 수당이 없는 사원
-- 사원정보, 부서정보(부서코드, 부서이름, 부서위치)
SELECT E.EMPNO,	E.ENAME, E.JOB,	E.MGR,	E.HIREDATE,	E.SAL,	E.COMM,	E.DEPTNO AS DEPTNO_E, D.DEPTNO AS DEPTNO_D, D.DNAME, D.LOC
  FROM EMP E, DEPT D 
  WHERE  E.SAL < 3000 AND E.DEPTNO = D.DEPTNO  AND E.COMM =0 OR E.COMM IS NULL ;
  
SELECT e.empno,	e.ename, e.job,	e.mgr,	e.hiredate,	e.sal,	e.comm,	e.deptno AS deptno_E, d.deptno AS deptno_D, d.dname, d.loc
    FROM emp e, dept d 
    WHERE  (e.sal < 3000) AND (e.deptno = d.deptno)  AND (e.comm =0 OR e.comm IS NULL);
  