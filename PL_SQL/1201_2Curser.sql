/*
커서(CURSER) : 레코드의 위치, 행의 위치
----------------------------------------------------------------------
검색결과가 1개 이상이 도출되었을 때 처리
1, 커서선언(DECLARATION)
2. 커서열기(OPEN)
3. 커서읽기(FETCH)
4. 커서닫기(CLOSE)
*/
----------------------------------------------------------------------

SET SERVEROUTPUT ON;

DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언 DECLARATION
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT
            WHERE DEPTNO = 40;
BEGIN
    OPEN C1; -- 커서 열기 OPEN
    FETCH C1 INTO V_DEPT_ROW;-- 커서로부터 읽어온 데이터 사용 FETCH
        
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' ||V_DEPT_ROW.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('DNAME : ' ||V_DEPT_ROW.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('LOC : ' ||V_DEPT_ROW.DEPTNO);
        
    CLOSE C1; --커서 닫기 CLOSE
END;
/
----------------------------------------------------------------------
--- SELECT MULTI ROW
-- 다중행 선택
SET SERVEROUTPUT ON;

DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언 DECLARATION
    CURSOR C1 IS
        SELECT DEPTNO, DNAME, LOC
            FROM DEPT;
BEGIN
    OPEN C1; -- 커서 열기 OPEN
    LOOP
        FETCH C1 INTO V_DEPT_ROW;-- 커서로부터 읽어온 데이터 사용 FETCH
        
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' ||V_DEPT_ROW.DEPTNO 
                            || ', DNAME : ' ||V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
        
    CLOSE C1; --커서 닫기 CLOSE
END;
/
----------------------------------------------------------------------
-- 명시적 커서 선언
-- FOR LOOP
-- FOR 변수 IN 커서이름 LOOP
-- 자동으로 커서 (OPEN, FETCH, CLOSE)
SET SERVEROUTPUT ON;

DECLARE
    CURSOR C1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;
BEGIN
    -- 커서 FOR LOOP 시작(자동OPEN, FETCH, CLOSE)
    FOR C1_REC IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || C1_REC.DEPTNO
                            || ', DNAME : ' || C1_REC.DNAME
                            || ', LOC : '|| C1_REC.LOC);
        END LOOP;
    
END;
/

----------------------------------------------------------------------
-- 커서에 파라미터 사용
SET SERVEROUTPUT ON;

DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE) IS
        SELECT DEPTNO, DNAME, LOC 
        FROM DEPT
        WHRER DEPTNO = P_DEPTNO;
BEGIN
    -- 30번 부서 처리를 위해 커서 사용
    OPEN C1 (30);
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('30번 부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
    CLOSE C1;
    
        -- 10번 부서 처리를 위해 커서 사용
    OPEN C1 (10);
    LOOP
        FETCH C1 INTO V_DEPT_ROW;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('10번 부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
    CLOSE C1;
END;
/
----------------------------------------------------------------------

SET SERVEROUTPUT ON;

DECLARE
    -- 커서 데이터를 입력할 변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언
    CURSOR C1 (P_DEPTNO DEPT.DEPTNO%TYPE) IS
        SELECT DEPTNO, DNAME, LOC
        FROM DEPT
        WHRER DEPTNO = P_DEPTNO;
BEGIN
    FOR V_DEPT_ROW IN C1(30) LOOP
        DBMS_OUTPUT.PUT_LINE('30번 부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
        
    FOR V_DEPT_ROW IN C1(20) LOOP
        DBMS_OUTPUT.PUT_LINE('20번 부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                            || ', DNAME : ' || V_DEPT_ROW.DNAME
                            || ', LOC : '|| V_DEPT_ROW.LOC);
        END LOOP;
END;
/