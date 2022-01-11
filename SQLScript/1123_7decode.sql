--DECODE
-- IF, SWICH~CASE 문과 유사
--DECODE(검사값, 조건1, 결과1, 조건2, 결과2,...결과N)
-- 검사값이 조건1 을 만족하면 결과1 리턴
-- 검사값이 조건2 를 만족하면 결과2 리턴
-- 검사값과 만족하는 조건이 없으면 결과 N을 리턴

-- 수당이 NULL이 아니면 급여 + 수당 = 총급여
SELECT ename, sal, comm, 
   DECODE ( comm, NULL, sal, sal+comm ) AS 총급여
   FROM emp;

-- 직책이 MANAGER 인 사람 : 급여의 10%를 더함
-- 직책이 SALESMAN 인 사람 : 급여의 20%를 더함
--직책이 ANALYST 인 사람 : 급여의 30%를 더함
-- 나머지는 급여의 5%를 더함

SELECT ENAME, SAL, COMM, JOB,
   DECODE( JOB, 'MANAGER',  SAL+SAL*0.1,
         'SALESMAN', SAL+SAL*0.2,
         'ANALYST',  SAL+SAL*0.3,    
            SAL+SAL*0.05 ) FROM EMP;
            
SELECT ename, sal, job,
    DECODE(job,
        'MANAGER',  sal * 1.1,
        'SALESMAN', sal * 1.2,
        'ANALYST',  sal * 1.3, sal * 1.05) AS 연봉협상
    FROM emp
    ORDER BY job ASC;
    
SELECT ename, deptno,
    DECODE ( deptno,
            10,  '부서1',
            20, '부서2', '부서3') AS 부서이름
    FROM emp
    ORDER BY deptno ASC;