-- 날짜
-- SYSDATE : 현재 날짜
-- ADD_MONTH : 월을 다루는 함수
-- MONTHS_BETWEEN : 경과한 개월 수
-- LAST_DAY : 달의 마지막 날짜


-- 오늘 날짜
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE, ENAME FROM EMP;

-- 일주일 후의 날짜
SELECT SYSDATE + 7 AS TOMORROW FROM DUAL;

-- ADD MONTHS(날짜데이터, 더할 개월 수)
-- 다음 달(한달 뒤)
SELECT ADD_MONTHS(SYSDATE, 1) AS NEXTMONTH FROM DUAL;
-- 지난 달(한달 전)
SELECT ADD_MONTHS(SYSDATE, -1) AS NEXTMONTH FROM DUAL;

-- 입사 10년차 사원정보(입사 10년이 되는 날짜)
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 10*12) FROM EMP;

-- 입사 40년차 이상의 사원정보
-- 입사 40년 이후 경과한 일수 : 날짜데이터 - 날짜데이터
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40, *12), SYSDATE - ADD_MONTHS(HIREDAATE, 40*12)AS PASSDATE
FROM EMP
WHERE ADD_MONTHS(HIREDAATE, 40 * 12) <=SYSDATE;

SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 40, *12), TRUNC(SYSDATE - ADD_MONTHS(HIREDAATE, 40*12)) AS PASSDATE
FROM EMP
WHERE ADD_MONTHS(HIREDAATE, 40 * 12) <=SYSDATE;
