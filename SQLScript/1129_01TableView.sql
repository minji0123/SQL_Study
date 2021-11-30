-- 테이블뷰 (VIEW)
-- 가상 테이블(VIRTUAL TABLE)
-- 기존의ㅡ 테이블을 다른 관점으로 바라본다.
-- DBMS 에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점 : 
-- 1. 편리성 (이미 작성된 퀴리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
-- 2. 보안성(기존의 테이블이나 쿼리를 감출 수 있음)

-- 사원 테이블에서 부서코드가 30인 사원
SELECT * FROM EMP WHERE DEPTNO= 30;

-- 서브쿼리
SELECT * 
    FROM (SELECT * FROM EMP WHERE DEPTNO=30);
    
-- 테이블 뷰
-- SYSTEM 권한에서, GRANT CREATE VIEW TO SCOTT;을 줘야 가능하다.
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
SELECT * FROM EMP_DEPT30;

-- 현재 테이블 목록 보여주기
SELECT * FROM TAB;

-- 사전(DICT)
SELECT * FROM USER_VIEWS;

-- 뷰 테이블 삭제
DROP VIEW EMP_DEPT30;