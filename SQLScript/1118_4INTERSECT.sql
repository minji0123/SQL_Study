-- 집합 연산자
-- 교집합(INTERSECT) : 두 테이블 간의 교집합 데이터를 출력 가능
-- 동일한 데이터만 선택
-- 같은 데이터는 하나만 선택

-- 두 개의 테이블의 모든 칼럼에서 동일한 데이터
SELECT * FROM emp
INTERSECT
SELECT * FROM emp3;

-- 두 개의 테이블의 직책(job) 칼럼에서 동일한 데이터
SELECT job FROM emp
INTERSECT
SELECT job FROM emp3;

-- 세 개의 테이블의 급여(sal) 칼럼에서 동일한 데이터
SELECT sal FROM emp
INTERSECT
SELECT sal FROM emp2
INTERSECT
SELECT sal FROM emp3;