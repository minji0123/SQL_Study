-- 학생(STUDENT) 테이블에서 학과 (SUBJECT) 테이블을 외부키로 참조
-- 1. 테이블의 생성 순서는 참조되는 테이블을 먼저 생성
-- 2. 테이블에 데이터를 넣는 순서 :  STUDENT 에서 참조하는 SUBJECT 데이터가 존재해야 한다.
-- 3. 삭제되는 순서 : STUDENT -> SUBJECT
    



-- 학과 테이블
CREATE TABLE SUBJECT(
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,
    SUBNAME VARCHAR2(20)
);
-- 학생 테이블
-- ON DELETE SET NULL
CREATE TABLE STUDENT(
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,
    SNAME VARCHAR2(20),
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO)ON DELETE SET NULL
);

SELECT * FROM SUBJECT;
SELECT * FROM STUDENT;
DROP TABLE SUBJECT;
DROP TABLE STUDENT;


-----------------------------------------------------------------------
--INSERT
-- 학과 테이블 얘 먼저 넣어야함
INSERT INTO SUBJECT VALUES ('2021-0001', '수학과');
INSERT INTO SUBJECT VALUES ('2021-0002', '국문과');
INSERT INTO SUBJECT VALUES ('2021-0003', '영문과');
INSERT INTO SUBJECT VALUES ('2021-0004', '경제학과');
INSERT INTO SUBJECT VALUES ('2021-0005', '컴퓨터학과');
--INSERT INTO SUBJECT VALUES ('2021-0007', '인공지능학과');




-- 학생 테이블 얘를 그 뒤에 넣어야함
INSERT INTO STUDENT VALUES (10000, '홍길동', '2021-0001');
INSERT INTO STUDENT VALUES (20000, '문학소녀', '2021-0002');
INSERT INTO STUDENT VALUES (30000, '외무부', '2021-0003');
INSERT INTO STUDENT VALUES (40000, '스티브', '2021-0004');
INSERT INTO STUDENT VALUES (50000, '워렌버핏', '2021-0004');
INSERT INTO STUDENT VALUES (60000, '김성현', '2021-0005');


---------------------------------------------------------------------------
-- JOIN
SELECT S.SNO, S.SNAME, S.SUBNO, J.SUBNO, J.SUBNAME
    FROM STUDENT S, SUBJECT J
    WHERE S.SUBNO = J.SUBNO;
    
    
---------------------------------------------------------------------------
-- CASCASE
-- 학과 테이블
DELETE FROM SUBJECT WHERE SUBNO ='2021-0004';

-- 참조되는 컬럼에 데이터가 없으면 입려되지 않음
-- ORA-02291: 무결성 제약조건(SCOTT.FK_SUBJECT_SUBNO)이 위배되었습니다- 부모 키가 없습니다
INSERT INTO STUDENT VALUES (7000,'김영우', '2021-0007');
-- 아직 과가 생기지 않아서 NULL값으로 임시로 넣기 ㄱㄴ
INSERT INTO STUDENT VALUES (7000,'김영우', NULL);
