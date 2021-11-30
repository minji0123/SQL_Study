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
--------------------------------------------------------------------------------
컬렉션 메서드
--------------------------------------------------------------------------------
*/

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

    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- 바로 이전
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- 바로 다음  
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;
    
   

END;
/
--------------------------------------------------------------------------------
--컬렉션 메서드
--[문제] dept_lists에 담긴 데이터를 모두 출력하라.
--------------------------------------------------------------------------------
DESC DEPT;

SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- 부서 테이블 %ROWTYPE 담고 있는 배열
    
    dept_lists DEPTLISTS;
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        dept_lists(dept.deptno).deptno := dept.deptno;
        dept_lists(dept.deptno).dname  := dept.dname;
        dept_lists(dept.deptno).loc    := dept.loc;
        
        DBMS_OUTPUT.PUT_LINE(dept.deptno || ', ' || dept.dname || ', ' || dept.loc);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- 바로 이전
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- 바로 다음  
    
    -- [문제] dept_lists에 담긴 데이터를 모두 출력하라.
    
    /*
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;
    */
   

END;
/