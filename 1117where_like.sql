-- 조회 : where

-- 조회 조건식 없이 모든 테이블의 내용을 검색
SELECT * FROM EMP;

-- 조건검색 : 부서코드가 30 인 사원정보
SELECT * FROM EMP WHERE DEPTNO = 30;

-- 부서코드가 30이고, 직책이 SALEMAN 인 사원?
SELECT * FROM EMP WHERE DEPTNO = 30 AND JOB='SALESMAN';

-- 부서코드가 30이거나, 직책이 SALEMAN 인 사원?
SELECT * FROM EMP WHERE DEPTNO = 30 OR JOB='SALESMAN';

-- 산술연산자를 검색 조건에 넣기
-- 연소득 SAL * 12 = 3600;
SELECT * FROM EMP WHERE (SAL * 12) = 36000;

-- 같다(=) 크다(>) 크거나 같다(>=) 작다(<) 작거나 같다(<=)
-- 같지않다 : != <> ^=

-- 논리부정 NOT
SELECT * FROM EMP WHERE SAL = 3000;
SELECT * FROM EMP WHERE SAL != 3000;
SELECT * FROM EMP WHERE NOT SAL = 3000;

-- NOT OR
SELECT * FROM EMP
    WHERE NOT(JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB = 'CLERK');

-- AND
-- 직책이 MANAGER 도 아니고 SALESMAN 도 아니고 CLERK 도 아닌 사원
SELECT * FROM EMP
    WHERE(JOB != 'MANAGER' AND JOB != 'SALESMAN' AND JOB != 'CLERK');
    

-- IN 
-- 직책이 MANAGER이거나 SALESMAN이거나 CLERK인 사원
SELECT * FROM EMP
    WHERE(JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB = 'CLERK');
    
SELECT * FROM EMP
    WHERE JOB IN('MANAGER', 'SALESMAN','CLERK')
    ORDER BY JOB;
    
-- NOT IN
-- 직책이 MANAGER 도 아니고 SALESMAN 도 아니고 CLERK 도 아닌 사원
SELECT * FROM EMP
    WHERE JOB NOT IN('MANAGER', 'SALESMAN','CLERK')
    ORDER BY JOB;
    
-- IN
-- 부서가 10, 20 인 사원
SELECT * FROM EMP
    WHERE DEPTNO IN(10, 20);
    
-- NOT IN
-- 부서가 10, 20 이 아닌 사원
SELECT * FROM EMP
    WHERE DEPTNO NOT IN(10, 20);
    
-- 부서가 10도 아니고 20도 아닌 사원중에 직책이 SALESMAN 인 사원
-- 사원정보와 부서명도 출력
-- 사원번호로 내림차순 정렬,사원이름으로 오름차순 정렬 
SELECT EMP.EMPNO, EMP.ENAME, EMP.DEPTNO as EMP_DEPTNO, DEPT.DEPTNO AS DEPT_DEPTNO, EMP.JOB, DEPT.DNAME  FROM EMP, DEPT
    WHERE EMP.DEPTNO NOT IN(10, 20)
    AND EMP.JOB = 'SALESMAN' AND EMP.DEPTNO = DEPT.DEPTNO
    ORDER BY EMP.EMPNO DESC, EMP.ENAME ASC;
    
-- BETWEEN X AND Y
-- SAL 값이 2000 부터 3000 사이의 값을 겁색
SELECT * FROM EMP WHERE SAL >=2000 AND SAL <= 3000;
    
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;    
    
-- NOT BETWEEN X AND Y
-- SAL 값이 2000 부터 3000 사이가 아닌 값을 겁색
SELECT * FROM EMP WHERE SAL < 2000 OR SAL > 3000;
    
SELECT * FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;    

-- LIKE : 문자열을 검색
-- J% 이름 첫번째 문자가 J로 시작하는 사원
SELECT * FROM EMP WHERE ENAME LIKE'J%';

--_L 임의의 문자 뒤에 L
SELECT * FROM EMP WHERE ENAME LIKE'_L%';

-- %MAN 끝문자열이 MAN 으로 끝나는 직책
SELECT * FROM EMP WHERE JOB LIKE '%MAN';

-- %AM% 중간문자열이 AM 이 들어가는 사원
SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

-- ____ 4글자인 이름
SELECT * FROM EMP WHERE ENAME LIKE '____';