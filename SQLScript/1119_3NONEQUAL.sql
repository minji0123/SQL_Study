-- ������, ��Ÿ����
-- NON EQUI JOIN : �������� ������ �� ���

-- EMP, SALGRADE ����
-- ���޹����� ���̺� ����
-- 1��� :  700~1200
-- 2��� : 1201~1400
-- 3��� : 1401~2000
-- 4��� : 2001~3000
-- 5��� : 3001~9999
SELECT * FROM EMP E, SALGRADE S
    WHERE E.SAL>=S.LOSAL AND E.SAL <= S.HISAL;
    
SELECT * FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;