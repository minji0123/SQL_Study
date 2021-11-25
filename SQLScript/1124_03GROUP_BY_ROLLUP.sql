-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY ROLLUP : �ܰ躰 ����
-- �׷��Լ��� ������ �÷��� �ܰ躰�� ������ (�߰��ܰ�, ��ü)
    -- �߰�   �ܰ� : ������ �÷��� ����ŭ ����
    -- ������ �ܰ� : �� ������ ���� ��ü ���� ���

-- (�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿���
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, JOB
    ORDER BY DEPTNO, JOB;
    
-- ROLLLUP : �� �׷캰�� ����
-- 1�ܰ� : DEPTNO ����
-- 2�ܰ� : ��ü ����
-- DEPTNO, JOB �Ѵ� �׷�Ѿ�
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY ROLLUP(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- JOB���θ� �׷�Ѿ�
-- �μ��ڵ�� �׷�ȭ�ϰ�, ��å(JOB) ������ ���� (��ü �׷����� �ȵǾ�����)
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, ROLLUP( JOB)
    ORDER BY DEPTNO, JOB;
    
    