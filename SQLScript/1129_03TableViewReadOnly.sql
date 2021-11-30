-- 테이블뷰 (VIEW)
-- 가상 테이블(VIRTUAL TABLE)
-- 기존의ㅡ 테이블을 다른 관점으로 바라본다.
-- DBMS 에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점 : 
-- 1. 편리성 (이미 작성된 퀴리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
-- 2. 보안성(기존의 테이블이나 쿼리를 감출 수 있음)

SELECT E.EMPNO,	E.ENAME,	E.JOB, D.DEPTNO,	D.DNAME,	D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;




-- 뷰를 열람만 하려면 : WITH READ ONLY
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30) WITH READ ONLY;
    
SELECT * FROM USER_VIEWS;
    
CREATE OR REPLACE VIEW EMP_DEPT AS
    (SELECT E.EMPNO,	E.ENAME,	E.JOB, D.DEPTNO,	D.DNAME,	D.LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO);

SELECT * FROM EMP_DEPT;
    
-- 입력(INSERT)
-- SQL 오류: ORA-42399: 읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다.
INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(1234, 'ABCDE','STUDENT',30);

INSERT INTO EMP_DEPT30
    VALUES(9999, 'NineNine','STUDENT',null,null,1000,500,10);

-- 조인으로 만들어진 뷰는 데이터 입력 불가
INSERT INTO EMP_DEPT
    VALUES(9999, 'NineNine','STUDENT',30,"SALES",'CHICAGO');

DROP VIEW EMP_DETP;