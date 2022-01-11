-------------------------------------------------------------------------
-- CASE
-- CASE 검사값 (컬럼)
--   WHEN 조건1 THEN 결과1
--   WHEN 조건1 THEN 결과1
--   WHEN 조건1 THEN 결과1
--   ELSE 결과N
-- END AS ALIAS


-- 직책이 MANAGER 인 사람 : 급여의 10%를 더함
-- 직책이 SALESMAN 인 사람 : 급여의 20%를 더함
--직책이 ANALYST 인 사람 : 급여의 30%를 더함
-- 나머지는 급여의 5%를 더함

SELECT ename, sal, job,
   CASE job
      WHEN 'MANAGER'  THEN sal*1.1
      WHEN 'SALESMAN' THEN sal*1.2
      WHEN 'ANALYST' THEN sal*1.3
      ELSE SAL*1.05 
   END AS 월급인상
   FROM emp;

-- 수당이 NULL이 아니면 급여 + 수당 = 총급여
SELECT ename, sal, comm, 
    CASE comm
        WHEN NULL THEN sal
        ELSE sal+comm 
    END AS 총급여
   FROM emp;



-- 검사값(기준값)없이 조건식만 사용
SELECT ENAME, SAL, COMM, JOB,
   CASE
      WHEN JOB = 'MANAGER'  THEN SAL+SAL*0.1
      WHEN JOB = 'SALESMAN' THEN SAL+SAL*0.2
      WHEN JOB = 'ANALYST' THEN SAL+SAL*0.3
      ELSE SAL+SAL*0.05 
   END AS UPSAL
   FROM EMP;

-- 수당
-- 다양한 조건에 따라서 처리
-- 자바의 IF문과 유사
SELECT ename, sal, job, comm,
    CASE 
        WHEN comm is null THEN sal * 1.5
        WHEN comm = 0 THEN sal * 1.4
        WHEN comm > 0 THEN sal + comm
        ELSE sal
    END AS upsal
    FROM emp;