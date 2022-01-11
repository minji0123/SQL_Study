-- 비등가조인, 세타조인
-- NON EQUI JOIN : 비교조건이 범위일 때 사용

-- EMP, SALGRADE 조인
-- 월급범위로 테이블 조인
-- 1등급 :  700~1200
-- 2등급 : 1201~1400
-- 3등급 : 1401~2000
-- 4등급 : 2001~3000
-- 5등급 : 3001~9999
SELECT * 
    FROM emp e, salgrade s
    WHERE e.sal >= s.losal AND e.sal <= s.hisal;
    
SELECT e.ename, e.job, e.sal, s.losal, s.hisal
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;