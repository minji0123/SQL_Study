drop table student;

CREATE TABLE STUDENT(
    SNO NUMBER(5)       CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,
    SNAME VARCHAR2(20),
    SUBNO VARCHAR2(10)  CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO)
    
);

-- Professor(교수코드, 교수이름, 학과) (10점)
CREATE TABLE PROFESSOR(
    PNO NUMBER(5) CONSTRAINT PK_PROFESSOR_PNO PRIMARY KEY, -- 교수코드(기본키)
    PNAME VARCHAR2(20), -- 교수이름
    MAJOR VARCHAR2(20)  -- 학과
);

-- Student(학번, 이름, 학과, 전화번호, 우편번호, 주소, 담당교수) (10점)
CREATE TABLE STUDENT(
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,  -- 학번(기본키)
    SNAME VARCHAR2(20),   -- 이름
    MAJOR VARCHAR2(20),   -- 학과
    PHONE VARCHAR2(20),   -- 우편번호
    POSTNO NUMBER(6),     -- 전화번호
    ADDRESS VARCHAR2(30), -- 주소
    PNO NUMBER(5) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES PROFESSOR(PNO) -- 담당교수(참조키)
);


INSERT INTO SUBJECT PROFESSOR VALUES (1111, '나민지','기계공학과');
INSERT INTO SUBJECT STUDENT VALUES (1234, '가민지','기계공학과', '13609', '010-5643-****', '경기도 성남',1111);


-- 조인해서 출력
SELECT * FROM STUDENT S, PROFESSOR P
WHERE S.PNO = P.PNO;