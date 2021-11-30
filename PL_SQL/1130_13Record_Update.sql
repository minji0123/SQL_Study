/*
레코드(RECORD)형은 사용자 자료형
--------------------------------------------------------------------------------
레코드(RECORD) : 자료형이 다른 여러 자료형들의 모음
TYPE 레코드이름 IS RECORD (
    변수이름 자료형 NOT NULL := 값 또는 표현식
)
--------------------------------------------------------------------------------
레코드를 이용하여 테이블에 데이터 수정(UPDATE)
--------------------------------------------------------------------------------
*/

-- 전통적인 방식으로 update함
SET SERVEROUTPUT ON;

DESC dept;
SELECT * FROM dept;

DECLARE
   TYPE REC_DEPT IS RECORD( -- 사용자 자료형을 정의
      deptno NUMBER(2) NOT NULL := 30,
      dname DEPT.DNAME%TYPE,
      loc DEPT.LOC%TYPE
   );
   
   dept_rec REC_DEPT;   -- 레코드형 변수 dept_rec 선언
   
BEGIN
   dept_rec.deptno := 57;       -- 레코드형변수.속성에 값을 할당
   dept_rec.dname := 'EZ57';
   dept_rec.loc := 'DAEJEON';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- 참조 : 레코드형변수.속성에서 값을 참조
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
   UPDATE dept -- 전통적인 방식
        SET dname = dept_rec.dname,
        loc   = dept_rec.loc
        WHERE deptno = 57;        
END;
/

-- 최신방식으로 update함(pl/sql)
SET SERVEROUTPUT ON;

DESC dept;
SELECT * FROM dept;

DECLARE
   TYPE REC_DEPT IS RECORD( -- 사용자 자료형을 정의
      deptno NUMBER(2) NOT NULL := 30,
      dname DEPT.DNAME%TYPE,
      loc DEPT.LOC%TYPE
   );
   
   dept_rec REC_DEPT;   -- 레코드형 변수 dept_rec 선언
   
BEGIN
   dept_rec.deptno := 56;       -- 레코드형변수.속성에 값을 할당
   dept_rec.dname := 'EZ56';
   dept_rec.loc := 'DAEJEON';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- 참조 : 레코드형변수.속성에서 값을 참조
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
   UPDATE dept -- PL/SQL 방식(ROW)
        SET ROW = dept_rec
        WHERE deptno = 56;        
END;
/