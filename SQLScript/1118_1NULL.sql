-- NULL 처리
-- 데이터의 값이 존재하지 않는 상태
-- NULL은 산술연산을 하면 NULL이 된다.

-- 연급여 : sal * 12
SELECT ename, sal, sal*12 as annsal, comm FROM emp;

-- 연총소득 : sal * 12 + comm
SELECT ename, sal, sal*12 as annsal, comm, sal*12+comm FROM emp;

-- comm이 null인 경우
SELECT * FROM emp WHERE comm = NULL;    -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm = null;    -- 자료가 검색되지 않음
-- comm이 null이 아닌 경우
SELECT * FROM emp WHERE comm != null;   -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm <> null;   -- 자료가 검색되지 않음
SELECT * FROM emp WHERE comm ^= null;   -- 자료가 검색되지 않음

-- IS NULL
-- IS NOT NULL
SELECT * FROM emp WHERE comm IS NULL;
SELECT * FROM emp WHERE comm IS NOT NULL;

-- NULL을 비교할 수 없다.
SELECT * FROM emp WHERE sal > NULL; -- 자료가 검색되지 않음

-- 논리연산 : NULL
-- true AND NULL : NULL
-- NULL AND NULL : NULL
SELECT * FROM emp WHERE sal > 3000 AND comm = NULL;
SELECT * FROM emp WHERE sal + comm > 3000 AND comm = NULL;

-- true OR NULL : TRUE
-- false OR NULL : NULL
-- NULL OR false : NULL
-- NULL OR NULL : NULL
SELECT * FROM emp WHERE sal > 3000 OR comm = NULL; -- TRUE OR NULL -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm = NULL; -- FALSE OR NULL -> NULL
SELECT * FROM emp WHERE comm = NULL OR sal > 5000; -- NULL OR FALSE -> NULL


