--자료형 변환
-- TO_CHAR : 숫자, 날짜데이터를 문자로 변환
-- TO_NUMBER : 문자 데이터를 숫자 데이터로 변환
-- TO_DATE : 문자 데이터를 날짜 데이터로 변환

------------------------------------------------------------------------------
-- 문자, 문자열
-- NUMBER + 문자열(숫자) : 자동형변환, 숫자로 변환
SELECT  ENAME, EMPNO, EMPNO+'11' FROM EMP;
SELECT  ENAME, EMPNO, EMPNO+'11', EMPNO+11 FROM EMP;

-- NUMBER + 문자열 (문자) : INVAL_ID NUMBER 오류
SELECT ENAME, EMPNO, EMPNO + 'JX' FROM EMP;

 -- 문자열 + 문자열 : INVAL_ID NUMBER 오류
SELECT ENAME, EMPNO, ENAME + 'JX' FROM EMP;

 -- 문자열 || 문자열 : 문자열 결합
SELECT ENAME, EMPNO, ENAME || 'JX' FROM EMP;


-------------------------------------------------------------------
-- 자료형 변환 : 날짜나 숫자를 문자로 변환
-- TO_CHAR(데이터, 포멧)

SELECT sysdate, TO_CHAR(sysdate, 'YYYY.MM.DD') 
    FROM dual;

-- 세기 CC(21세기)
SELECT TO_CHAR(SYSDATE, 'CC') FROM DUAL;


-- 천 단위로 구분 기호 표시 (,)
SELECT SAL, TO_CHAR(SAL, '999,999') FROM EMP;

SELECT TO_CHAR (1234567890, '999,999,999') AS NUM FROM EMP;
SELECT TO_CHAR (1234567890, '999,999,999') FROM EMP;

--  소숫점
SELECT TO_CHAR (1234.56, '999,999.99') AS NUM FROM EMP;
SELECT TO_CHAR (1234.56, '999,999.00') FROM EMP;

SELECT TO_CHAR (1234, '999,999.00') FROM EMP;
SELECT TO_CHAR (1234, '999,999.00') FROM EMP;

-- 화폐단위
-- L : LOCALE, \
SELECT TO_CHAR (10000, 'L999,999') FROM dual;

-- $: DOLLAR, $
SELECT TO_CHAR (10000, '$999,999') FROM dual;

