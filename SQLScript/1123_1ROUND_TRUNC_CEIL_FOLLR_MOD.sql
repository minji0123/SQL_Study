-- 숫자데이터

-- round : 반올림
-- trunc : 버림
-- ceil : 올림_지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- floor : 내림_지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- mod : 나머지 값을 반환

----------------------------------------------------------------------------------------
-- round(숫자, 반올림위치)
-- 반올림위치를 지정하지 않으면 소수점이하 첫째 자리에서 반올림

SELECT ROUND(123.4567) FROM DUAL; -- 결과 : 123
SELECT ROUND(123.5678) FROM DUAL; -- 결과 : 124
SELECT ROUND(123.5678, 0) FROM DUAL; -- 결과 : 124

SELECT ROUND(124.4999, 1) FROMM DUAL; --결과 : 123.5
SELECT ROUND(124.4499, 1) FROMM DUAL; --결과 : 123.4

-- 반올림위치가 음수(-)값 
SELECT ROUND(12345, -1) FROM DUAL; -- 결과 : 12350
SELECT ROUND(12345, -2) FROM DUAL; -- 결과 : 12300

--------------------------------------------------------------------------------------------
-- TRUNC(숫자, 버림위치)
-- 버림위치 : 지정하지 않으면 소숫점이하 첫째 자리에서 버림 (소숫점을 버림)

SELECT TRUNC(123.4567) FROM DUAL; -- 결과 : 123
SELECT TRUNC(123.5678) FROM DUAL; -- 결과 : 123
SELECT TRUNC(123.5678, 0) FROM DUAL; -- 결과 : 123

SELECT TRUNC(124.4999, 1) FROMM DUAL; --결과 : 123.4
SELECT TRUNC(124.4499, 1) FROMM DUAL; --결과 : 123.4

-- 반올림위치가 음수(-)값 
SELECT TRUNC(12345, -1) FROM DUAL; -- 결과 : 12340
SELECT TRUNC(12345, -2) FROM DUAL; -- 결과 : 12300

----------------------------------------------------------------------------------------
-- ceil(숫자) : 올림_지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
SELECT ceil(1.456) FROM DUAL; --결과 : 2
SELECT ceil(0.123) FROM DUAL; --결과 : 1
SELECT ceil(-1.456) FROM DUAL; --결과 : -1

-- 부동소숫점인 경우 의미가 있으며 정수는 그 정수값을 반환
SELECT ceil(345) FROM DUAL; -- 결과 : 345
SELECT ceil(-345) FROM DUAL; -- 결과 : -345

----------------------------------------------------------------------------------------
-- FLOOR(숫자) : 내림_지정한 숫자보다 큰 정수 중에서 가장 큰 정수를 반환
SELECT FLOOR(1.456) FROM DUAL; --결과 : 1
SELECT FLOOR(0.123) FROM DUAL; --결과 : 0
SELECT FLOOR(-1.456) FROM DUAL; --결과 : -2

-- 부동소숫점인 경우 의미가 있으며 정수는 그 정수값을 반환
SELECT FLOOR(345) FROM DUAL; -- 결과 : 345
SELECT FLOORFLOOR(-345) FROM DUAL; -- 결과 : -345


-----------------------------------------------------------------------------------------
-- MOD(나누어질 숫자, 나눌 숫자)
SELECT MOD(10,3) FROM DUAL; -- 나머지 : 1
SELECT MOD(10,2) FROM DUAL; -- 나머지 : 0
-- 홀수
SELECT MOD(7,2) FROM DUAL; -- 나머지 : 1
-- 짝수
SELECT MOD(8,2) FROM DUAL; -- 나머지 : 0