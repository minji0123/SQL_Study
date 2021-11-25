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
SELECT DEPTNO, JOB, COUNT(*) 
    FROM EMP 
    GROUP BY GROUPING SETS( DEPTNO,JOB)
    ORDER BY DEPTNO, JOB;
