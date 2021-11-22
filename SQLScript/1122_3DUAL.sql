-- 현재 인코딩 방식 알아보기
-- character set
SELECT * FROM SYS.nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

-- DUAL : 오라클에서 제공하는 특수한 테이블
    -- 산술 연산의 결과를 한 줄로 얻기 위해서, 제공해주는 테이블
SELECT '한글' AS hanguel, LENGTH('한글') hanlen, LENGTHB('한글') AS hanlenb FROM DUAL;

-- DUAL 로 오늘날짜 구하기
SELECT SYSDATE FROM DUAL;

-- DUAL 에 컬럼, 값 출력
SELECT UPPER('abc') as abc FROM DUAL;

-- EMP랑 DUAL 서브쿼리
SELECT * FROM EMP WHERE ENAME = (SELECT UPPER('james') AS abc FROM DUAL);

DESC DUAL;

SELECT * FROM DUAL;
