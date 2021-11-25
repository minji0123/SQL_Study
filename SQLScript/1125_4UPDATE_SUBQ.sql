-- 테이블에서 데이터 수정
/*
    UPDATE 테이블명
        SET 컬럼1 = 데이터1,
            컬럼2 = 데이터2,
            컬럼3 = 데이터3,
            ...
            컬럼N = 데이터N
            [WHERE 조건식]
*/

SELECT * FROM EMPX;
SELECT * FROM DEPTX;

-- 부서테이블의 모든 부서위치를 'SEOUL'로 변경
-- WHERE문을 주지 않으면 테이블의 모든 데이터가 변경
UPDATE DEPTX SET LOC = 'SEOUL';

-- 부서이름이 '무역부'의 부서의 위치를 'SEONGNAM'으로 변경
UPDATE DEPTX SET LOC = 'SEONGNAM' WHERE DNAME LIKE '무역부%';

-- 부서이름이 없는 부서의 이름을 '지원부', 부서위치는 '독도'로 변경
UPDATE DEPTX 
    SET DNAME = '지원부', LOC = '독도'
    WHERE DNAME IS NULL;
    
--[문제]
-- 임시 사원 테이블EMPX 에서 급여가 2000이하인 사원의 수당을 500을 추가하라

INSERT INTO EMPX SELECT * FROM EMP;
SELECT * FROM EMPX;
SELECT * FROM EMPX    WHERE SAL<=2000 OR SAL IS NULL;

--COMMIT;
UPDATE EMPX 
    SET COMM = NVL(COMM,0)
    WHERE SAL<=2000 OR SAL IS NULL;

--ROLLBACK;

UPDATE EMPX 
    SET COMM = COMM+500
    WHERE SAL<=2000 OR SAL IS NULL;
    
-- [문제]
-- 검증?
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM, NVL2(E2.COMM,E2.COMM,0) - NVL2(E1.COMM, E1.COMM,0) AS COMMX
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO
    AND (NVL2(E2.COMM,E2.COMM,0) - NVL2(E1.COMM, E1.COMM,0)) >500 ;
    
    