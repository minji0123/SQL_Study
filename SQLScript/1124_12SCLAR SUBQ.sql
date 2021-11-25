-- ��������
-- ��Į�� �������� (SCLAR SUB-QUERY) : SELECT ���� ���������� �����
-- SELECT ���� �ϳ��� �� ������ ����� ���
-- ���� : SELECT �� ����ϴ� ���������� ����� �ϳ��� ���� �ش��ϴ� ���� ���;� �Ѵ�.

-- �޿����
SELECT * FROM SALGRADE;
SELECT GRADE FROM SALGRADE;

-- ����� �޿� ���
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
------------------------------------------------------------------------------------------------- 
-- ��Į�� ��������(SCALAR SUB-QUERY)
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E;
------------------------------------------------------------------------------------------------- 
-- �̷��� �ϸ� ������
-- ������ ����� ������ �ȵ� (���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�.)
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE FROM SALGRADE) AS SALGRADE
    FROM EMP E;
    
-- ���� �÷��� ������ �ȵ�
SELECT E.EMPNO, E.ENAME, E.SAL, (SELECT GRADE, LOSAL, HISAL FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
    FROM EMP E ORDER BY 1;
-------------------------------------------------------------------------------------------------
-- �μ��ڵ�, �μ��̸�
SELECT E.EMPNO, E.ENAME, E.SAL, 
    (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE,
    (SELECT DNAME FROM DEPT WHERE E.DEPTNO = DEPT.DEPTNO) AS DNAME
    FROM EMP E ORDER BY 1;
    
    
    
    
    