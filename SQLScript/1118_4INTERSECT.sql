-- ���� ������
-- ������(INTERSECT) : �� ���̺� ���� ������ �����͸� ��� ����
-- ������ �����͸� ����
-- ���� �����ʹ� �ϳ��� ����

-- �� ���� ���̺��� ��� Į������ ������ ������
SELECT * FROM emp
INTERSECT
SELECT * FROM emp3;

-- �� ���� ���̺��� ��å(job) Į������ ������ ������
SELECT job FROM emp
INTERSECT
SELECT job FROM emp3;

-- �� ���� ���̺��� �޿�(sal) Į������ ������ ������
SELECT sal FROM emp
INTERSECT
SELECT sal FROM emp2
INTERSECT
SELECT sal FROM emp3;

SELECT ename, job, deptno
    FROM EMP 
    WHERE deptno in (10,20)
INTERSECT
SELECT ename, job, deptno
    FROM EMP 
    WHERE deptno in (20,30);
    