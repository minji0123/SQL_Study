-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- INSTR(데이터, 특정철자, 찾을위치, 철자순번) : 데이터의 특정 철자의 위치를 출력함
    -- 데이터 : 문자열, 컬럼
    -- 찾을문자 : '문자'
    -- 시작위치 : 옵션, 기본값은 1 (1부터)
    -- 순번 : 옵션, 몇번째 문자?
----------------------------------------------
-- 결과를 찾지 못하면 ZERO(0)

-- 사원의 직책에서 처음 만나는  'E'의 위치
SELECT JOB, INSTR(JOB, 'E') FROM EMP;

-- 시작 위치를 지정한 경우
SELECT JOB, INSTR(JOB, 'A'), INSTR(JOB, 'A', 2)FROM EMP;

SELECT INSTR('ABCDEABC', 'A') , INSTR('ABCAEABC', 'A', 5)FROM dual;


-- 순번을 정한 경우
-- JOB 컬럼에서 A를 찾아서, 시작위치는 처음부터(1부터) 2번째인 문자를 찾으셈
SELECT JOB, INSTR(JOB, 'A',2,2) FROM EMP;

-- 전화번호
SELECT INSTR('02-1234-5678', '-', 1,2) AS 서울 FROM DUAL;

-- [문제]
-- 전화번호에서 마지막 뒷 자리를 추출해라
SELECT SUBSTR('02-1234-5678', INSTR('02-1234-5678', '-', 1,2)+1 )AS 서울 FROM DUAL;

-- [문제]
-- 전화번호에서 마지막 뒷 자리를 추출해라
SELECT SUBSTR('031-3456-9987', INSTR('031-3456-9987', '-', 1,2)+1 )AS 경기 FROM DUAL;

-- [문제]
-- 전화번호 010-7788-9797
-- 가운데 자리를 추출해라
SELECT SUBSTR('010-7788-9797', INSTR('010-7788-9797', '-', 1,1)+1, 4)AS 경기 FROM DUAL;

SELECT SUBSTR('010-7788-9797', INSTR('010-7788-9797', '-', 1,1)+1, INSTR('010-7788-9797', '-', 1,2)-INSTR('010-7788-9797', '-', 1)-1 )AS 전화번호 
    FROM DUAL;

