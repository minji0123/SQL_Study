-- 세션(session)
-- 데이터베이스 접속을 시작으로 여러 데이터베이스에 관련된 작업을 수행한 후
-- 접속을 종료하기까지 전체 기간을 의미
-----------------------------------------------------------------------
-- 1. 하나의 세션은 여러 개의 트랜잭션으로 구성된다.
-- 2. 하나의 세션에서 수행되는 트랜잭션은 그 트랜잭션이 종료(commit, rollback) 될 때까지
        -- 다른 세션에서는 데이터 조작 전 상태의 데이터만 조회할 수 있다..
        
-- [LOCK의 종료]
-- 1. 행 레벨(ROW LEVEL LOCK)
-- 2. 테이블 레벨(TABLE LEVEL LOCK)

SELECT * FROM DEPTR ORDER BY 1;

DELETE FROM DEPTR WHERE DEPTNO IN (80,89,90);
UPDATE DEPTR SET LOC = 'DAEJEON' WHERE DEPTNO IN (80,89);
COMMIT;