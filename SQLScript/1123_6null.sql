-- NULL
-- NVL(데이터, 대체값)
-- 데이터가 NULL 이면 대체값을 리턴

-- 수당(COMM)이 NULL 인 경우
SELECT ENAME, SAL, COMM FROM EMP;

-- 급여 + 수당 : NULL 인 경우 결과 NULL
SELECT ENAME, SAL, COMM, SAL + COMM FROM EMP;

-- 수당이 NULL 인 경우 0 으로 처리
SELECT ENAME, SAL, COMM, NVL(COMM,0), SAL + NVL(COMM,0) FROM EMP;

---------------------------------------
-- NVL2(데이터, NULL이 아닐경우 대체값, NULL일 경우 대체값)
SELECT ENAME, SAL, COMM, NVL2(COMM, '수당O', '수당X') COMM2 FROM EMP;


-- 수당이 있으면 수당  *3
-- 수당이 없으면 급여만 지급
SELECT ENAME, SAL, COMM, 
   SAL+NVL2(COMM, COMM*3,0) COMM2 FROM EMP;