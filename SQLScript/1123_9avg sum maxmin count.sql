
-- �׷��Լ� : ������ �Լ�
-- ��հ��� ���ϴ� �Լ�
-- AVG (COLUMN)

-- ��ü ����� ��� �޿�?
SELECT AVG(sal) 
    FROM emp;
SELECT ename, sal
    FROM emp;


-- �μ��� 30 �� ������� ��� �޿�
SELECT AVG(sal) 
    FROM emp
    WHERE deptno=30;
SELECT TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO=30; -- ����(�Ҽ������� ����)
SELECT TRUNC(AVG(SAL),2 ) FROM EMP WHERE DEPTNO=30;-- ����(�Ҽ������� 2�ڸ����� ǥ��)
SELECT ROUND(AVG(SAL),2 ) FROM EMP WHERE DEPTNO=30;-- ����(�Ҽ������� 3�ڸ����� �ݿø�)

-- �ɼ� :DISTINCT, ALL
SELECT ENAME, SAL FROM EMP WHERE DEPTNO= 30;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVT(ALL SAL) FROM EMP WHERE DEPTNO = 30;
SELECT TRUNC(AVG(SAL)), TRUNC(AVG(ALL SAL)), AVG(DISTINCT SAL) FROM EMP WHERE DEPTNO = 30;

----------------------------------------------------------------------
-- �׷��Լ� : ������ �Լ�
-- COUNT (COLUMN)

-- ��ü ���� ����
SELECT COUNT(*) 
    FROM emp
    WHERE deptno = 30;
SELECT COUNT(EMPNO) FROM EMP;

-- �÷��� NULL �� �ִ� ���� ������ ���Ե��� ����
SELECT comm 
    FROM emp;
SELECT COUNT(comm) 
    FROM emp;
SELECT COUNT(comm) 
    FROM emp WHERE comm IS NOT NULL; -- ��� : 4��
SELECT COUNT(COMM) FROM EMP WHERE COMM IS NULL; -- ��� : 0��
SELECT COUNT(EMPNO)FROM EMP WHERE COMM IS NULL; -- ��� : 8�� 

----------------------------------------------------------------------
-- �׷��Լ� : ������ �Լ�
-- �ִ�, �ּڰ�
-- MAX (COLUMN)
-- MIN (COLUMN)

-- ���� �޿��� ���� �޴� ���
SELECT MAX(SAL) FROM EMP;

-- ���� �޿��� ���� �޴� ���
SELECT MIN(SAL) FROM EMP;

-- ������� �޿� �� ���� ���� �޿�, ���� ���� �޿�
SELECT MAX(sal), MIN(sal)
    FROM emp;
SELECT MAX(sal), MIN(sal)
    FROM emp
    WHERE deptno = 30;
-- �Ի����� ���� �ֱ��� ����� �Ի�����
SELECT MAX(HIREDATE) FROM EMP;

SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP WHERE DEPTNO = 20;


----------------------------------------------------------------------
-- �׷��Լ� : ������ �Լ�
-- �ִ�, �ּڰ�
-- SUM (COLUMN)

-- ��ü ����� �޿� �Ѿ�
SELECT SUM(sal) 
    FROM emp;

SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT SUM(sal) 
    FROM emp 
    WHERE deptno = 30;


SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 30;



SELECT '10' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT '20' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT '30' AS DEPT, COUNT (SAL), SUM(SAL) FROM EMP WHERE DEPTNO = 30;

-------------------------------------------------------------------------