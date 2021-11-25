-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

--------------------------------------------
-- HAVING: ��� �׷��� �����ϴ� ���ǽ�
-- GROUP BY �� ���ؼ� ���� ��� �߿��� ��� �׷��� �����ϴ� ���ǽ�

-- �μ���, ��å�� ��� �޿���
SELECT DEPTNO, JOB, AVG(SAL) FROM EMP GROUP BY DEPTNO, JOB ORDER BY DEPTNO;

-- �μ���, ��å�� ��� �޿���
-- ����: ��� �޿����� 2000 ���� ũ�ų� ���� �޿��׸� ���
SELECT DEPTNO, JOB, AVG(SAL) 
    FROM EMP 
    GROUP BY DEPTNO, JOB 
    HAVING AVG(SAL) >= 2000)
    ORDER BY DEPTNO;

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
SELECT DEPTNO, COUNT(DEPTNO), SUM(SAL),TRUNC(AVG(SAL))
    FROM EMP 
    GROUP BY DEPTNO
    HAVING DEPTNO IN (10, 20)
        AND COUNT(DEPTNO) <= 3
    ORDER BY DEPTNO;
    
    
    
    