-------------------------------------------------------------------------
-- CASE
-- CASE �˻簪 (�÷�)
--   WHEN ����1 THEN ���1
--   WHEN ����1 THEN ���1
--   WHEN ����1 THEN ���1
--   ELSE ���N
-- END AS ALIAS


-- ��å�� MANAGER �� ��� : �޿��� 10%�� ����
-- ��å�� SALESMAN �� ��� : �޿��� 20%�� ����
--��å�� ANALYST �� ��� : �޿��� 30%�� ����
-- �������� �޿��� 5%�� ����

SELECT ename, sal, job,
   CASE job
      WHEN 'MANAGER'  THEN sal*1.1
      WHEN 'SALESMAN' THEN sal*1.2
      WHEN 'ANALYST' THEN sal*1.3
      ELSE SAL*1.05 
   END AS �����λ�
   FROM emp;

-- ������ NULL�� �ƴϸ� �޿� + ���� = �ѱ޿�
SELECT ename, sal, comm, 
    CASE comm
        WHEN NULL THEN sal
        ELSE sal+comm 
    END AS �ѱ޿�
   FROM emp;



-- �˻簪(���ذ�)���� ���ǽĸ� ���
SELECT ENAME, SAL, COMM, JOB,
   CASE
      WHEN JOB = 'MANAGER'  THEN SAL+SAL*0.1
      WHEN JOB = 'SALESMAN' THEN SAL+SAL*0.2
      WHEN JOB = 'ANALYST' THEN SAL+SAL*0.3
      ELSE SAL+SAL*0.05 
   END AS UPSAL
   FROM EMP;

-- ����
-- �پ��� ���ǿ� ���� ó��
-- �ڹ��� IF���� ����
SELECT ename, sal, job, comm,
    CASE 
        WHEN comm is null THEN sal * 1.5
        WHEN comm = 0 THEN sal * 1.4
        WHEN comm > 0 THEN sal + comm
        ELSE sal
    END AS upsal
    FROM emp;