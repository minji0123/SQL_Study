-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- 문자 지우기
-- TRIM(옵션 삭제할 문자열 FROM 원본문자열) : 문자열의 양쪽에서 지정된 문자열을 지움
    -- BOTH : 양쪽
    -- LEADING : 왼쪽
    -- TRAILING : 오른쪽
-- LTRIM(데이터, 삭제할 문자열) : 문자열의 왼쪽에서 지정된 문자열을 지움
-- RTRIM(데이터, 삭제할 문자열) : 문자열의 오른쪽에서 지정된 문자열을 지움

-- 문자열의 양쪽 공백을 지움
SELECT '[' ||'  홍길동  '|| ']' FROM DUAL; 
SELECT '[' ||TRIM('  홍길동  ')|| ']' FROM DUAL; 

SELECT '[' ||TRIM(BOTH ' 'FROM'  홍길동  ')|| ']' FROM DUAL;  -- 공백 제거
SELECT '[' ||TRIM(LEADING '-'FROM'----홍길동----')|| ']' FROM DUAL;  -- - 제거
SELECT '[' ||TRIM(TRAILING '.'FROM'..--홍길동--..')|| ']' FROM DUAL;  -- .제거


-- 문자열 왼쪽 공백을 지움
SELECT '[' || LTRIM('  홍길동  ')|| ']' FROM DUAL;  -- 공백 제거
SELECT '[' || TRIM(LEADING FROM'  홍길동  ')|| ']' FROM DUAL;
SELECT '[' || TRIM(LEADING ' ' FROM'  홍길동  ')|| ']' FROM DUAL;
SELECT '[' || TRIM(LEADING '-' FROM'  ---홍길동---  ')|| ']' FROM DUAL;



