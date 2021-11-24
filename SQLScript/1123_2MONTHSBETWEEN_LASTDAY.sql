-- 날짜
-- SYSDATE : 현재 날짜
-- ADD_MONTH : 월을 다루는 함수
-- MONTHS_BETWEEN : 경과한 개월 수
-- LAST_DAY : 달의 마지막 날짜
-- 두 날짜 사이의 개월 수를 구하는 함수


-- MONTHS_BETWEEN(날짜데이터1, 날짜데이터2) : 경과한 개월 수 

-- 입사월 - 현재월 -> 마이너스
SELECT ENAME, HIREDATE, MONTHS_BETWEEN (HIREDATE, SYSDATE) FROM EMP;

-- 현재월- 입사월-> 플러스
SELECT ENAME, HIREDATE, MONTHS_BETWEEN (SYSDATE, HIREDATE,)FROM EMP;

-- 현재월- 입사월-> 플러스
SELECT ENAME, HIREDATE, 
   TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE)) || '개월' FROM EMP;

-- 근무한 개월수, 년수
SELECT ENAME, HIREDATE, 
   TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE)) || '개월' 
   ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE))/12,2) ||'년' 
FROM EMP;

------------------------------------------------------------------------------------------------------
-- 달의 마지막 날짜를 구하는 함수
-- LAST_DAY(날짜데이터)
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;

-- 2021년 10월의 마지막 날짜?
SELECT LAST_DAY ('21/10/01') FROM DUAL;
SELECT LAST_DAY ('2021/10/01') FROM DUAL;