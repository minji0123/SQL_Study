-- 테이블뷰 (VIEW)
-- 가상 테이블(VIRTUAL TABLE)
-- 기존의ㅡ 테이블을 다른 관점으로 바라본다.
-- DBMS 에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점 : 
-- 1. 편리성 (이미 작성된 퀴리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
-- 2. 보안성(기존의 테이블이나 쿼리를 감출 수 있음)


-- 뷰가 없으면 생성하고, 없으면 변경하라(30)
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
    
-- 뷰가 없으면 생성하고, 없으면 변경하라(20)
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=20);
    
-- 이름 변경하기
RENAME EMP_DEPT30 TO EMP_DEPT20;

-- 현재있는거 보여주셈
SELECT * FROM USER_VIEWS;

-- 커밋없이 지우기
DROP VIEW EMP_DEPT20;
DROP VIEW EMP_DEPT30;