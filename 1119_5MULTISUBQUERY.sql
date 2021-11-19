-- �������� :  ������ �������� (MULTI-ROW-SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN,ANY, SONE, ALL, EXISTS

-- �μ��ڵ尡 30 �� ����� �޿� ����
SELECT * FROM EMP WHERE DEPTNO = 30 ORDER BY SAL;

-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ���
-- JAMES : 950
SELECT * FROM EMP
    WHERE SAL <ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;

-- ALL
-- ���������� ��ȯ�� ���� �����, ��������-���ǽ� ����� ��� (ALL) ������ �������� ���ǽ��� TRUE �� ��ȯ

-- �μ��ڵ尡 30�� ������� �ְ� �޿����� �� ���� �޿��� �޴� ���
SELECT * FROM EMP
    WHERE SAL > ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;
    
-- ������ SALESMAN �� ������ ���� ������ �޴� ���
SELECT * FROM EMP WHERE SAL IN(SELECT SAL FROM EMP WHERE JOB='SALESMAN');

CREATE TABLE EMP4
    AS SELECT * FROM EMP;

-- JONES ���� �� ���� ������ �޴� ���
SELECT * FROM EMP4 WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');

SELECT JOB, SAL FROM EMP4;
