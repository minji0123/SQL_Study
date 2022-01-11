-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY CUBE
    
    
-- GROUP BY CUBE : �� �׷캰�� ����
-- 1�ܰ� : DEPTNO ����
-- 2�ܰ� : JOB�� ����(ROLLUP�̶� �ٸ�)
-- 3�ܰ� : ��ü ����
SELECT deptno, job, COUNT(empno) AS �����, SUM(sal) AS �ѱ޿���, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp    
    GROUP BY CUBE(deptno, job)
    ORDER BY deptno, job;
    
-- JOB���θ� �׷�Ѿ�
-- �μ��ڵ�� �׷�ȭ�ϰ�, ��å(JOB) ������ ���� (��ü �׷����� �ȵǾ�����)
SELECT deptno, JOB, COUNT(empno) AS �����, SUM(sal) AS �ѱ޿���, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp
    GROUP BY DEPTNO, CUBE(JOB)
    ORDER BY DEPTNO, JOB;
        -- ����� ROLLUP�̶� ����