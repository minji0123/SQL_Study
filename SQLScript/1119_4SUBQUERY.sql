-- �������� SUB-QUERY : Ư�� �������� �˻��� ���� �ٸ� �������� �޾� �˻��Ϸ��� ���������� ����ؾ� �Ѵ�.

-- SELELCT �� �ȿ� SELECT ���� ����
-- �������� : ���������� ����� ������ ������
-- �������� : 
    -- ���������� ���
    -- ���������� ���������� �÷���� �÷� ������ ���ƾ� �Ѵ�.
    -- ����� �� ���� ���������� ������ ������ ȣȯ �����ؾ� �Ѵ�. (����� ������, ������)


-- 1. CLERK�� �޿����� ���� ���� ���� ����� ����ϰ� ����
    -- 1-1 �ϴ� �� ���
SELECT * FROM EMP;
    -- 1-2 CLARK�� �޿�
SELECT EMPNO, ENAME, SAL AS �޿�  
    FROM EMP WHERE EMPNO=7782;
    -- 1-3 2450���� �� ���� �޿��� �޴� ���
SELECT * FROM EMP WHERE SAL > 2450;

-- 2. ���������� �غ��� : ������� ���� �÷�
SELECT ename, sal
    FROM emp 
    WHERE sal > (SELECT sal 
                    FROM emp 
                    WHERE ename = 'WARD');
                    
    -- 2-1 ���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�. ����
    -- ������ �˻��� �� ���� �����̴�. (���� �� ��������)
SELECT * FROM EMP WHERE SAL > (SELECT SAL FROM EMP WHERE EMPNO > 7782);

-- [����1]
-- �Ի����� ������ ����
SELECT * FROM EMP ORDER BY HIREDATE;
-- TURNER ���� ���� �Ի��� ���
SELECT * FROM EMP WHERE HIREDATE < (SELECT HIREDATE FROM EMP WHERE  EMPNO = 7782);
SELECT * FROM EMP WHERE TO_DATE(HIREDATE, 'YY/MM/DD') < TO_DATE('81/09/08','YY/MM/DD');

-- [����2]
-- TURNER ���� �ʰ� �Ի��� ���
SELECT * FROM EMP WHERE HIREDATE > (SELECT HIREDATE FROM EMP WHERE  EMPNO = 7782);

-- [����3]
-- �μ��ڵ尡 20�� ���� ����߿� TURNER ���� ���� �޿��� �޴� ��������� �Ҽ� �μ� ������ ���
SELECT EMP.*, DEPT.* FROM EMP, DEPT 
    WHERE EMP.DEPTNO = DEPT.DEPTNO
    AND EMP.DEPTNO =20
    AND EMP.SAL > (SELECT EMP.SAL FROM EMP WHERE ename = 'TURNER' );


-- [����4]
-- �μ��ڵ尡 20�� ���� ����߿� ��ü ����� ��� �޿����� ���� �޿��� �޴� ��������� �Ҽ� �μ� ������ ���
SELECT e.ename, e.sal, d.deptno 
    FROM emp e, dept d 
    WHERE e.deptno = d.deptno
        AND d.deptno =20
        AND e.sal > (SELECT AVG(sal) FROM emp);




