-- 날짜
-- SYSDATE : 현재 날짜
-- ADD_MONTH : 월을 다루는 함수
-- MONTHS_BETWEEN : 경과한 개월 수
-- LAST_DAY : 달의 마지막 날짜

-- 오늘 날짜
-- SYSDATE : 현재 날짜

SELECT sysdate FROM dual;
SELECT sysdate as today, ename FROM emp;

-- 내일 날짜
SELECT sysdate + 1 as tomorrow FROM dual;

-- 어제 날짜
SELECT sysdate - 1 as yesterday FROM dual;

-- 일주일 후의 날짜
SELECT sysdate + 7 as tomorrow FROM dual;
----------------------------------------------------------------------------
-- ADD MONTHS(날짜데이터, 더할 개월 수)
-- 다음 달(한달 뒤)
SELECT sysdate AS 오늘, ADD_MONTHS(sysdate, 1) AS 다음달 
    FROM dual;
-- 지난 달(한달 전)
SELECT ADD_MONTHS(SYSDATE, -1) AS NEXTMONTH FROM DUAL;
----------------------------------------------------------------------------

-- 입사 10년차 사원정보(입사 10년이 되는 날짜)
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 10*12) FROM EMP;

-- 입사 40년이 되는 날짜
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) FROM emp; 

-- 입사 40년 미만인 사원정보
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) 
    FROM emp
    WHERE add_months(hiredate, 40 * 12) > sysdate;

-- 입사 40년 이상인 사원정보
SELECT empno, ename, hiredate, ADD_MONTHS(hiredate, 40 * 12) AS 
    FROM emp
    WHERE ADD_MONTHS(hiredate, 40 * 12) <= sysdate;

-- 입사 40년 이상인 사원정보
-- 입사 40년 이후 경과한 일수: 날짜데이터 - 날짜데이터
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), sysdate - add_months(hiredate, 40 * 12) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;

SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), trunc(sysdate - add_months(hiredate, 40 * 12)) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;