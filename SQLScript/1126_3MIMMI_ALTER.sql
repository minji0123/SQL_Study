-- 테이블 변경 : ALTER TABLE
-- 기존의 자료를 보존?
-- 테이블의 구조를 변경
----------------------------------------------------------------
-- 1. ADD : 테이블에 컬럼 추가
    -- ALTER TABLE 테이블명 ADD 컬럼명 자료형
-- 2. RENAME : 테이블의 컬럼 이름을 변경
    -- ALTER TABLE 테이블명 RENAME COLUMN 기존컬럼 TO 새로운컬럼
-- 3. MODIFY : 테이블의 컬럼의 자료형을 변경
    -- ALTER TABLE 테이블명 MODIFY 컬럼명 자료형
-- 4. DROP : 테이블의 컬럼을 삭제
    -- ALTER TABLE 테이블명 DROP COLUMN 컬럼명

SELECT * FROM HELLOX;

--컬럼 추가
ALTER TABLE HELLOX ADD ADDR VARCHAR2(50);

-- 컬럼이름 변경 ADDR TO LOC
ALTER TABLE HELLOX RENAME COLUMN ADDR TO LOC;

-- 컬럼의 자료형 변경 : LOC(50) -> LOC (100)
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(100);
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(50);
-- 크기를 줄일 때 데이터가 NULL이거나 데이터의 크기보다는 커야 한다.
INSERT INTO HELLOX VALUES( '20000',1000,'HELLO',NULL,NULL,NULL);
ALTER TABLE HELLOX MODIFY NAME VARCHAR2(4); -- 일부 값이 너무 커서 열 길이를 줄일 수 없음

-- 컬럼 삭제 LOC 삭제함
ALTER TABLE HELLOX DROP COLUMN LOC;