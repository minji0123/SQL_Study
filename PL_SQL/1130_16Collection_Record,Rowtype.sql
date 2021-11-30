/*
컬렉션(Collection) : 복합 자료형
1. 특정 자료형을 여러개 저장
2. 여러 종류의 데이터를 하나로 묶어 사용
--------------------------------------------------------------------------------
연관배열:
TYPE 배열이름 IS TABLE OF 자료형 INDEX BY 인덱스형
--------------------------------------------------------------------------------
인덱스형: 키로 사용할 인덱스의 자료형
1. BINARY_INTEGER
2. PLS_INTEGER(정수형)
3. VARCHAR2(문자형)

*/

--------------------------------------------------------------------------------
--레코드를 활용한 연관 배열
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- 부서정보 레코드
        deptno  DEPT.DEPTNO%TYPE,
        dname   DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF REC_DEPT INDEX BY PLS_INTEGER;   -- 부서정보 레코드들을 담고 있는 배열
    
    dept_lists DEPTLISTS;
    idx PLS_INTEGER := 0;
BEGIN
    FOR dept IN (SELECT deptno, dname FROM dept) LOOP
        idx := idx + 1;
        dept_lists(idx).deptno := dept.deptno;
        dept_lists(idx).dname  := dept.dname;
    END LOOP;
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || dept_lists(cnt).deptno || ' : ' || dept_lists(cnt).dname);
    END LOOP;

END;
/

--------------------------------------------------------------------------------
--%ROWTYPE(테입의 행) 활용한 연관 배열
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- 부서 테이블 %ROWTYPE 담고 있는 배열
    
    dept_lists DEPTLISTS;
    idx PLS_INTEGER := 0;
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        idx := idx + 1;
        dept_lists(idx).deptno := dept.deptno;
        dept_lists(idx).dname  := dept.dname;
        dept_lists(idx).loc    := dept.loc;
    END LOOP;
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;

END;
/