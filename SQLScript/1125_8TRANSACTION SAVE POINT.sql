-- 트랜잭션(TRANSACTION)
-- 하나의 논리적인 작업을 처리하기 위해 서로 연관되고 연속된 데이터베이스 명령어(DML)의 집합
-- TCL(TRANSACTION CONTROL LANGUAGE)
-- 1. 하나의 논리적인 작업 단위
-- 2. 하나의 작업 또는 밀접하게 연관되어 있는 작업 수행을 위해 나눌 수 없는 최소 수행 단위
-- 3. 하나의 트랜젝션은 여러 DML 명령으로 이루어진다.
-- 4. 커밋(COMMIT)에 의해서 트랜잭션이 완료된다.
-- 5. 취소(ROLLBACK)에 의해서 수행된 SQL(DML)문이 취소 처리된다.

CREATE TABLE DEPTR AS SELECT * FROM DEPT;

-- [트랜잭션 1]
SELECT * FROM DEPTR;
-- 1. 신규추가
INSERT INTO DEPTR VALUES(80, 'APG','SEOUL');
INSERT INTO DEPTR VALUES(89, 'DBA','SEONGNAM');

-- 2. 자료수정
UPDATE DEPTR SET LOC ='DAEJEON' WHERE DEPTNO = 80;

-- 3. 세이브 포인트
SAVEPOINT TR1;

-- 4. 자료삭제
DELETE FROM DEPTR WHERE DEPTNO = 89;

-- 5. 작업취소
ROLLBACK;
ROLLBACK TO TR1;
COMMIT;

-- 5. 작업완료
-- 1번부터 3번까지 처리하고 -> 4 작업을 건너뛰고 -> 5번 작업으로 이동 처리
COMMIT;


---------------------------------------------------------------
COMMIT; -- 트랜잭션이 완료. 완전 정해짐
SELECT * FROM DEPTR; -- 롤백을 해도 작업이전 상태로 돌아가지않음
ROLLBACK;