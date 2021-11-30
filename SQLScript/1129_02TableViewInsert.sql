-- 테이블뷰 (VIEW)
-- 가상 테이블(VIRTUAL TABLE)
-- 기존의ㅡ 테이블을 다른 관점으로 바라본다.
-- DBMS 에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점 : 
-- 1. 편리성 (이미 작성된 퀴리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
-- 2. 보안성(기존의 테이블이나 쿼리를 감출 수 있음)

-- 테이블뷰 생성, 확인
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
SELECT * FROM EMP_DEPT30;
    
--DROP VIEW EMP_DEPT30;

-- 테이블 뷰에 입력 가능 (검색조건에 해당하지 않아도 데이터 입력이 가능)
-- 원본에도 반영이 됨
INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(1234, 'ABCDE','STUDENT',30);

INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(4321, 'EDCBA','STUDENT',20);
    
SELECT * FROM EMP;

ROLLBACK;
-- 테이블 뷰를 삭제해도 아까 입력한 데이터는 그대로임
DROP VIEW EMP_DEPT30;

DELETE FROM EMP WHERE EMPNO IN(1234, 4321);

-- 뷰 테이블 삭제
/*
뷰를 통해서 입력한 내용이 커밋된다. 그니까 DROP VIEW하지말고 ROLLBACK을 해야 반영안되고 그대로 지워짐
원본에남아있기 때문에 롤백하셈
*/