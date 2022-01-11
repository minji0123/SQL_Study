-- 날짜
-- SYSDATE : 현재 날짜
-- ADD_MONTH : 월을 다루는 함수
-- MONTHS_BETWEEN : 경과한 개월 수
-- LAST_DAY : 달의 마지막 날
-- NEXT_DAY : 특정 날짜의 다음 날


-------------------------------------------------------------------
-- 두 날짜 사이의 개월 수를 구하는 함수
-- MONTHS_BETWEEN(날짜데이터1, 날짜데이터2) : 경과한 개월 수 

-- 입사월 - 현재월 -> 마이너스
SELECT ename, hiredate, months_between(hiredate, sysdate) FROM emp;

-- 현재월 - 입사월 -> 플러스
SELECT ename, hiredate, sysdate, MONTHS_BETWEEN(sysdate, hiredate) AS 근무_개월수 
    FROM emp;

-- 현재월 - 입사월 -> 플러스
SELECT ename, hiredate, trunc(months_between(sysdate, hiredate)) || '개월' 
    FROM emp;

-- 근무한 개월수, 년수
SELECT ename, hiredate, 
    TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) || '개월' AS 근무_개월수, 
    ROUND(TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) / 12, 2) || '년' AS 근무_년수
    FROM emp;

------------------------------------------------------------------------------------------------------


-- 달의 마지막 날짜를 구하는 함수
-- last_day(날짜데이터)
SELECT sysdate, LAST_DAY(sysdate) 
    FROM dual;

-- 2021년 10월의 마지막 날짜?
SELECT '21/10/01', LAST_DAY('21/10/01') 
    FROM dual;
    
SELECT last_day('2021/10/01') FROM dual;

SELECT sysdate AS 오늘, NEXT_DAY(sysdate,'월요일') AS 다음주월요일
    FROM dual;

