-- �׷��Լ� : ������ �Լ�
-- �ִ�, �ּڰ�
-- SUM (COLUMN)

-- ��ü ����� �޿� �Ѿ�
SELECT SUM(SAL) FROM EMP;

SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 10;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 20;
SELECT SUM(SAL) FROM EMP WHERE DEPTNO = 30;


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