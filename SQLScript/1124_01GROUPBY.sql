-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

--------------------------------------------
-- GROUP BY : �׷��Լ��� ���ؼ� ���� ����� ��� ó��

-- �μ��� ������� ��� �޿���
SELECT * FROM DEPT;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30;
SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 40;

-- ���տ�����(������)
SELECT '10' AS DEPTNO, TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT '20' AS DEPTNO, TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT '30' AS DEPTNO, TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 30
UNION ALL
SELECT '40' AS DEPTNO, TRUNC(AVG(SAL)) FROM EMP WHERE DEPTNO = 40;

-- GROUP BY
-- �׷�ȭ�� �÷��� ����, ���� �÷��� ���� ����
-- �μ��� ��� �޿���
SELECT deptno AS �μ�, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp 
    GROUP BY deptno;

-- �μ���, ��å�� ��� �޿���
SELECT DEPTNO, JOB, SAL FROM EMP;
SELECT DEPTNO, TRUNC(AVG(SAL)) FROM EMP GROUP BY DEPTNO;

-- �μ��� �� �޿���
SELECT DEPTNO, SUM(SAL) FROM EMP GROUP BY DEPTNO; -- ��� �������̿��� GROUP BY ������

-- �μ���, ��å�� �� �޿���
SELECT DEPTNO, JOB, SUM(SAL) FROM EMP GROUP BY DEPTNO; -- ��� �������̿��� GROUP BY ������

-- [����]
-- �μ��� ������� �� ��
SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT  DEPTNO, COUNT(DEPTNO)FROM EMP GROUP BY DEPTNO;

-- �μ��� ������� �Ѽ�, �޿��Ѿ�, ��ձ޿���
SELECT  DEPTNO, COUNT(DEPTNO), SUM(SAL), AVG(SAL) FROM EMP GROUP BY DEPTNO;

-- �μ��� ������� �޿��Ѿ�, ��ձ޿���, �ְ�޿���, �����޿���
SELECT  E.DEPTNO,D.DNAME, COUNT(E.EMPNO) AS �����, SUM(E.SAL) AS �޿��Ѿ�, TRUNC(AVG(E.SAL),1) AS ��ձ޿���, 
                MIN(E.SAL) AS �����޿���, MAX(E.SAL) AS �ְ�޿���
    FROM EMP E, DEPT D
    GROUP BY E.DEPTNO
    HAVING COUNT(E.EMPNO)<=3 AND E.DEPTNO = D.DEPTNO
    ORDER BY E.DEPTNO;
    
 -- �μ��� ������� �޿��Ѿ�, ��ձ޿���, �ְ�޿���, �����޿���
SELECT deptno, avg(sal), max(sal), min(sal) FROM emp GROUP BY deptno ORDER BY deptno;