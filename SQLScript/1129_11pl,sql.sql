/*
PL/SQL
----------------------------------------------------
DECLARE
    선언
BEGIN
    명령문
EXCEPTION
    예외처리
EN;
*/
----------------------------------------------------
/*
변수 선언
변수이름 자료형 : =값이나 표현식
----------------------------------------------------
변수이름 : 
    1. 고유한 식별자
    2. 대소문자를 구별하지 않음(혼용가능)
    3. 문자로 시작(한글도 ㄱㄴ)
    4. 최대 길이는 30바이트
    5. 문자(영문, 한글), 숫자, 특수문자
    6. sql 키워드 사용 불가
----------------------------------------------------
자료형 : 
    1. 숫자    : NUMBER, 소숫점을 포함한 최대 38자리
    2. 문자열  : CHAR, VARCHAR2 ,최대 32,767바이트
    3. 날짜    : DATE, BC 4712~9999
    4. 논리    : BOOLEAN TRUE FALSE NULL
----------------------------------------------------
참조형 : 
    1. %TYPE : 열참조
    2. %ROWTYPE : 행참조
    3. 예 : 변수이름 테이블이름.열이름%TYPE
    
*/

set serveroutput on;  -- 실행 결과를 화면에 출력

begin
    dbms_output.put_line('hello,dbms!');
end;
/

set serveroutput on;
DECLARE
    V_EMPNO NUMBER(4) :=7900;
    V_ENAME VARCHAR2(20);
begin
    V_ENAME := 'JAMES';
    dbms_output.put_line('EMPNO : ' || V_EMPNO);
    dbms_output.put_line('ENAME : ' || V_ENAME);
end;
/