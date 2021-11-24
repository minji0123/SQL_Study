-- �׷��Լ� : ������ �Լ�
-- COUNT, AGV, MIN, MAX, SUM
-- GROUP BY, HAVING, GROUP BY ROLLUP, GROUP BY CUBE

-- GROUP BY CUBE
    
    
-- GROUP BY CUBE : �� �׷캰�� ����
-- 1�ܰ� : DEPTNO ����
-- 2�ܰ� : JOB�� ����(ROLLUP�̶� �ٸ�)
-- 3�ܰ� : ��ü ����
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY CUBE(DEPTNO, JOB)
    ORDER BY DEPTNO, JOB;
    
-- JOB���θ� �׷�Ѿ�
-- �μ��ڵ�� �׷�ȭ�ϰ�, ��å(JOB) ������ ���� (��ü �׷����� �ȵǾ�����)
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), TRUNC(AVG(SAL))
    FROM EMP
    GROUP BY DEPTNO, CUBE(JOB)
    ORDER BY DEPTNO, JOB;
        -- ����� ROLLUP�̶� ����