-- 1. 내장함수 (Built-in-Function)
-- 1-1 단일행 함수 (Single-Row-Function)
    -- 데이터가 한 항씩 입력되고, 입력된 한 행당 결과가 하나씩 나오는 함수
-- 1-2 다중함수 (Multiple-Row-Function)
    -- 데이터가 여러 행에 입력되고, 하나의 행으로 결과가 반환되는 함수

-- [1. 단일행 함수]
-- 문자함수(String)
-- SUBSTR(데이터, 시작위치, 추출길이) : 데이터의 특정 위치의 문자열을 추출함
    -- 데이터 : 추출을 원하는 데이터
    -- 시작위치 : 1부터 시작. -값이면 마지막 위치부터 시작
    -- 추출길이 : 시작위치부터 몇 개의 철자를 추출할지. 생략하면 문자열의 끝까지 출력 가능
    
-- 1번부터 2개의 문자를 추출
SELECT JOB, SUBSTR(JOB,1,2) FROM EMP;

-- 결과가 없으면 NULL값 출력
SELECT JOB, SUBSTR(JOB,6,3) FROM EMP;

-- 추출길이 생략
SELECT JOB, SUBSTR(JOB,5) FROM EMP;

-- 시작위치를 -로 지정
-- 문자열의 끝에서부터 앞으로 3자리를 이동해서 3자리를 추출
SELECT JOB, SUBSTR(JOB,-3,3) FROM EMP;


-- 시작위치를 플러스로 해서 전체 길이와 문자열을 추출
SELECT JOB, SUBSTR(JOB,1) FROM EMP;
SELECT JOB, SUBSTR(JOB,1,length(job)) FROM EMP;


-- 시작위치를 마이너스로 해서 전체 길이와 문자열을 추출
SELECT JOB, SUBSTR(JOB,-0) FROM EMP;
SELECT JOB, SUBSTR(JOB,-length(job),length(job)) FROM EMP;
SELECT JOB, SUBSTR(JOB,-length(job)) FROM EMP;
SELECT JOB, SUBSTR(JOB,length(job)*-1) FROM EMP;

SELECT JOB, length(job), length(job)*-1 FROM EMP;




