-- ������, ��Ÿ����
-- NON EQUI JOIN : �������� ������ �� ���

-- EMP, SALGRADE ����
-- ���޹����� ���̺� ����
-- 1��� :  700~1200
-- 2��� : 1201~1400
-- 3��� : 1401~2000
-- 4��� : 2001~3000
-- 5��� : 3001~9999
SELECT * 
    FROM emp e, salgrade s
    WHERE e.sal >= s.losal AND e.sal <= s.hisal;
    
SELECT e.ename, e.job, e.sal, s.losal, s.hisal
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;