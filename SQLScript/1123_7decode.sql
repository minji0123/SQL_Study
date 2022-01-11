--DECODE
-- IF, SWICH~CASE ���� ����
--DECODE(�˻簪, ����1, ���1, ����2, ���2,...���N)
-- �˻簪�� ����1 �� �����ϸ� ���1 ����
-- �˻簪�� ����2 �� �����ϸ� ���2 ����
-- �˻簪�� �����ϴ� ������ ������ ��� N�� ����

-- ������ NULL�� �ƴϸ� �޿� + ���� = �ѱ޿�
SELECT ename, sal, comm, 
   DECODE ( comm, NULL, sal, sal+comm ) AS �ѱ޿�
   FROM emp;

-- ��å�� MANAGER �� ��� : �޿��� 10%�� ����
-- ��å�� SALESMAN �� ��� : �޿��� 20%�� ����
--��å�� ANALYST �� ��� : �޿��� 30%�� ����
-- �������� �޿��� 5%�� ����

SELECT ENAME, SAL, COMM, JOB,
   DECODE( JOB, 'MANAGER',  SAL+SAL*0.1,
         'SALESMAN', SAL+SAL*0.2,
         'ANALYST',  SAL+SAL*0.3,    
            SAL+SAL*0.05 ) FROM EMP;
            
SELECT ename, sal, job,
    DECODE(job,
        'MANAGER',  sal * 1.1,
        'SALESMAN', sal * 1.2,
        'ANALYST',  sal * 1.3, sal * 1.05) AS ��������
    FROM emp
    ORDER BY job ASC;
    
SELECT ename, deptno,
    DECODE ( deptno,
            10,  '�μ�1',
            20, '�μ�2', '�μ�3') AS �μ��̸�
    FROM emp
    ORDER BY deptno ASC;