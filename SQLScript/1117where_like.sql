-- ��ȸ : where

-- ��ȸ ���ǽ� ���� ��� ���̺��� ������ �˻�
SELECT * FROM EMP;

-- ���ǰ˻� : �μ��ڵ尡 30 �� �������
SELECT * FROM EMP WHERE DEPTNO = 30;

-- �μ��ڵ尡 30�̰�, ��å�� SALEMAN �� ���?
SELECT * FROM EMP WHERE DEPTNO = 30 AND JOB='SALESMAN';

-- �μ��ڵ尡 30�̰ų�, ��å�� SALEMAN �� ���?
SELECT * FROM EMP WHERE DEPTNO = 30 OR JOB='SALESMAN';

-- ��������ڸ� �˻� ���ǿ� �ֱ�
-- ���ҵ� SAL * 12 = 3600;
SELECT * FROM EMP WHERE (SAL * 12) = 36000;

-- ����(=) ũ��(>) ũ�ų� ����(>=) �۴�(<) �۰ų� ����(<=)
-- �����ʴ� : != <> ^=

-- ������ NOT
SELECT * FROM EMP WHERE SAL = 3000;
SELECT * FROM EMP WHERE SAL != 3000;
SELECT * FROM EMP WHERE NOT SAL = 3000;

-- NOT OR
SELECT * FROM EMP
    WHERE NOT(JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB = 'CLERK');

-- AND
-- ��å�� MANAGER �� �ƴϰ� SALESMAN �� �ƴϰ� CLERK �� �ƴ� ���
SELECT * FROM EMP
    WHERE(JOB != 'MANAGER' AND JOB != 'SALESMAN' AND JOB != 'CLERK');
    

-- IN 
-- ��å�� MANAGER�̰ų� SALESMAN�̰ų� CLERK�� ���
SELECT * FROM EMP
    WHERE(JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB = 'CLERK');
    
SELECT * FROM EMP
    WHERE JOB IN('MANAGER', 'SALESMAN','CLERK')
    ORDER BY JOB;
    
-- NOT IN
-- ��å�� MANAGER �� �ƴϰ� SALESMAN �� �ƴϰ� CLERK �� �ƴ� ���
SELECT * FROM EMP
    WHERE JOB NOT IN('MANAGER', 'SALESMAN','CLERK')
    ORDER BY JOB;
    
-- IN
-- �μ��� 10, 20 �� ���
SELECT * FROM EMP
    WHERE DEPTNO IN(10, 20);
    
-- NOT IN
-- �μ��� 10, 20 �� �ƴ� ���
SELECT * FROM EMP
    WHERE DEPTNO NOT IN(10, 20);
    
-- �μ��� 10�� �ƴϰ� 20�� �ƴ� ����߿� ��å�� SALESMAN �� ���
-- ��������� �μ��� ���
-- �����ȣ�� �������� ����,����̸����� �������� ���� 
SELECT EMP.EMPNO, EMP.ENAME, EMP.DEPTNO as EMP_DEPTNO, DEPT.DEPTNO AS DEPT_DEPTNO, EMP.JOB, DEPT.DNAME  FROM EMP, DEPT
    WHERE EMP.DEPTNO NOT IN(10, 20)
    AND EMP.JOB = 'SALESMAN' AND EMP.DEPTNO = DEPT.DEPTNO
    ORDER BY EMP.EMPNO DESC, EMP.ENAME ASC;
    
-- BETWEEN X AND Y
-- SAL ���� 2000 ���� 3000 ������ ���� �̻�
SELECT * FROM EMP WHERE SAL >=2000 AND SAL <= 3000;
    
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;    
    
-- NOT BETWEEN X AND Y
-- SAL ���� 2000 ���� 3000 ���̰� �ƴ� ���� �̻�
SELECT * FROM EMP WHERE SAL < 2000 OR SAL > 3000;
    
SELECT * FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;    

-- LIKE : ���ڿ��� �˻�
-- J% �̸� ù��° ���ڰ� J�� �����ϴ� ���
SELECT * FROM EMP WHERE ENAME LIKE'J%';

--_L ������ ���� �ڿ� L
SELECT * FROM EMP WHERE ENAME LIKE'_L%';

-- %MAN �����ڿ��� MAN ���� ������ ��å
SELECT * FROM EMP WHERE JOB LIKE '%MAN';

-- %AM% �߰����ڿ��� AM �� ���� ���
SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

-- ____ 4������ �̸�
SELECT * FROM EMP WHERE ENAME LIKE '____';