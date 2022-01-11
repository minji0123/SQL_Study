-- �׷��Լ�
-- GROUPING SETS : �� �÷��� �׷�
-- ���� ������ �׷�ȭ Į���� ���� ���� ��, ���� ���� �������� ���


-- �ܰ躰 (�μ���, ��å��)
SELECT DEPTNO, JOB, COUNT(*) FROM EMP GROUP BY DEPTNO,JOB;

    -- �μ��� ��� �� ��
    SELECT DEPTNO, COUNT(DEPTNO) FROM EMP GROUP BY DEPTNO;
    
    -- ��å�� ��� �� ��
    SELECT DEPTNO, COUNT(JOB) FROM EMP GROUP BY JOB;

-- �� �μ��� �����, ��å�� �����
SELECT deptno, job, COUNT(empno) AS �����, SUM(sal) AS �ѱ޿���, TRUNC(AVG(sal)) AS ��ձ޿���
    FROM emp 
    GROUP BY GROUPING SETS( deptno , job )
    ORDER BY deptno, job;
