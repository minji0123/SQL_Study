-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

--------------------------------------------
-- HAVING: ��� �׷��� �����ϴ� ���ǽ�
-- GROUP BY �� ���ؼ� ���� ��� �߿��� ��� �׷��� �����ϴ� ���ǽ�

-- �μ���, ��å�� ��� �޿���
SELECT deptno, job, AVG(sal) AS ��ձ޿���
    FROM emp 
    GROUP BY deptno, job
    ORDER BY deptno;

-- �μ���, ��å�� ��� �޿���
-- ����: ��å�� ��� �޿����� 2000 ���� ũ�ų� ���� �� ����մϴ�.
SELECT deptno, job, AVG(sal) AS ��ձ޿���
    FROM emp 
    GROUP BY deptno, job
    HAVING AVG(sal) >= 2000
    ORDER BY deptno;

-- �ҼӺμ��� 10, 30 �� ����߿��� �μ���, ��å�� ��� �޿���
-- ���� :  ��� �޿����� 2000 ���ٴ� ũ�ų� ���� �޿��׸� ���
-- ���� : �׷��� �Լ��� WHERE �������� ���� �� ����.
SELECT DEPTNO, JOB, AVG(SAL) 
    FROM EMP 
    WHERE DEPTNO IN(10,30)
    -- AND AGV(SAL) > 2000
    GROUP BY DEPTNO, JOB 
    HAVING AVG(SAL) >= 2000
    ORDER BY DEPTNO;
    
-- [����]
-- �μ����� ������� ��, �޿��Ѿ�, ��ձ޿���
-- ����1: �μ�(10,20) ���
-- ����2: ����� ���� 3 ������ ���
SELECT deptno, COUNT(empno) AS �����, SUM(sal) AS �޿�����
    FROM emp 
    GROUP BY deptno
    HAVING deptno IN (10, 20)
        AND COUNT(deptno) <= 3
    ORDER BY deptno;
    
    
    
    