-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY ROLLUP : �ܰ躰 ����
-- �׷��Լ��� ������ �����͸� �ܰ躰�� �����մϴ�. (�߰��ܰ�, ��ü)
    -- �߰�   �ܰ� : ������ �÷��� ����ŭ ����
    -- ������ �ܰ� : �� ������ ���� ��ü ���� ���

-- (�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿���
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
    
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
    
-- ROLLLUP : �� �׷캰�� ����
-- 1�ܰ� : DEPTNO ����
-- 2�ܰ� : ��ü ����
-- DEPTNO, JOB �Ѵ� �׷�Ѿ�
SELECT deptno, JOB, COUNT(empno) AS �����, SUM(sal) AS �ѱ޿���, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp
    GROUP BY ROLLUP(deptno, job)
    ORDER BY deptno, job;
        
-- JOB���θ� �׷�Ѿ�
-- �μ���ȣ, �������� �׷�ȭ�ϰ�, �������θ� �׷�Ѿ�(����) �մϴ�.
SELECT deptno, JOB, COUNT(empno) AS �����, SUM(sal) AS �ѱ޿���, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp
    GROUP BY deptno, ROLLUP(job)
    ORDER BY deptno, job;

    