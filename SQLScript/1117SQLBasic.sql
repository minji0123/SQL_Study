--��ȸ

-- 1. EMP ���̺� ��ȸ (���̺� ����)
DESC EMP;


--2. ����� ��ȸ : ������(SELECTION)
-- *�� ����ϸ� ���� �� ��µ�
SELECT * FROM EMP;
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP;
SELECT EMP.EMPNO, EMP.ENAME, EMP.JOB, EMP.MGR, EMP.HIREDATE, EMP.SAL, EMP.COMM, EMP.DEPTNO FROM EMP;

-- 3. ���ϴ� �ε����� ���
SELECT EMPNO, ENAME FROM EMP;

-- 4. �˻����� WHERE
SELECT * FROM EMP WHERE EMPNO=7844;
SELECT * FROM EMP WHERE EMPNO!=7844;
SELECT * FROM EMP WHERE DEPNO=30;

-- 5. ����(join) : ���� ���̺��� �����ؼ� ��ȸ
-- �μ� : emp.deptno = dept.deptno
SELECT EMP.EMPNO, EMP.ENAME, EMP.DEPTNO, DEPT.DEPTNO, DEPT.DNAME, DEPT.LOC
    FROM EMP, DEPT
    WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- 5-1 ���, �μ� ���̺��� �Ҽӵ� �μ����� �����ϰ�, �μ��ڵ尡 30�� ����� �˻�
SELECT EMP.EMPNO, EMP.ENAME, EMP.DEPTNO, DEPT.DEPTNO, DEPT.DNAME, DEPT.LOC
    FROM EMP, DEPT
    WHERE EMP.DEPTNO=30
    AND EMP.DEPTNO = DEPT.DEPTNO;


-- 6. �ߺ����� : �����μ� �ڵ�� �ϳ��� ���, DISTINCT �ڿ� ���� ��� Į���� ���� �ߺ� üũ
-- ����� �μ��ڵ�
SELECT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO, JOB FROM EMP;
SELECT DISTINCT JOB, DEPTNO FROM EMP ORDER BY JOB, DEPTNO;
-- ����� �����ϹǷ� �ߺ������� �ǹ̰� ���
SELECT DISTINCT JOB, DEPTNO, EMPNO FROM EMP ORDER BY JOB, DEPTNO;


-- 7. SORT ����
SELECT * FROM EMP ORDER BY HIREDATE; -- �Ի����� �� ����
SELECT * FROM EMP ORDER BY 5 DESC; -- Į�� ��ġ�� ���ڷ� ����

-- 7-1. sort ASC(��������) : order by �÷��� ASC (�⺻���� ����������)
SELECT JOB, DEPTNO FROM EMP ORDER BY JOB, DEPTNO;
-- 7-2 sort DESC(��������) : order by �÷��� DESC
SELECT JOB, DEPTNO FROM EMP ORDER BY JOB DESC, DEPTNO;

SELECT * FROM EMP;

-- [����1]
-- SAL : ���޿�, COMM : ������
-- ���� : �޿�, �Ի�����
-- ��� : �̸�, ��å, �޿�, �Ի�����
SELECT ENAME, JOB, SAL, HIREDATE FROM EMP ORDER BY SAL, HIREDATE;


-- [����2]
-- ���� : �� ���޿�(�޿�, ����), �Ի�����
-- ��� : �̸�, ��å, �޿�, ����, �Ի�����
SELECT ENAME, JOB, SAL, NVL(COMM,0) AS COMM, HIREDATE, SAL+NVL(COMM,0) AS TOTAL FROM EMP ORDER BY SAL+COMM, HIREDATE;


-- [����3]
-- ����� ���� �� �ҵ�
SELECT  ENAME, JOB, SAL, HIREDATE, SAL*12 AS YEARSAL FROM EMP ORDER BY YEARSAL, HIREDATE;
-- ����� ���� �� �޿�
SELECT  ENAME, JOB, SAL, HIREDATE, SAL+NVL(COMM,0)*12 AS YEARCOMM FROM EMP ORDER BY YEARCOMM, HIREDATE;
-- ����� �� ��� ����
SELECT  ENAME, JOB, SAL, HIREDATE, (SAL*12+NVL(COMM,0))/12 AS AVGSAL FROM EMP ORDER BY AVGSAL, HIREDATE;


