-- ǥ�� SQL: ISO/ANSI(SQL-99)

-- �ڿ�����(natural join)
-- ����� �Ǵ� �� ���̺� �̸��� �ڷ����� ���� Į���� �������� �����(equal join)�� �Ѵ�.
-- ���̺� ��Ī�� �ٿ��� Į������ ����� �� ����.
-- ���εǴ� Į���� ���̺���� ���� �� ����.

-- ����: emp.deptno
-- ���εǴ� Į���� �տ� ���̺���� ����� �� ����.
-- SELECT empno, ename, emp.job, emp.deptno, dname, loc
-- FROM emp natural join dept
-- ORDER BY 1,2;

-- �����(equal join), ��������, ��������, �ܼ�����
SELECT * FROM emp e, dept d 
    WHERE e.deptno = d.deptno 
    ORDER BY e.empno;
    
-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT '[natural join]' as title, empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;    

-- ���̺� dept2�� empno Į���� �߰�
-- �ڿ��������� ��ġ�Ǵ� Į���� 2���� ���
CREATE TABLE dept2 AS
    SELECT deptno, dname, loc, empno
    FROM emp natural join dept;
    
DESC dept2;

-- �ڿ����� : join emp, dept2
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept2
    ORDER BY 1,2;    
    
-- ����� : join emp, dept2
SELECT * FROM emp e, dept2 d 
    WHERE e.deptno = d.deptno 
    AND e.empno = d.empno
    ORDER BY e.empno;
    
-- ǥ�� SQL: ISO/ANSI(SQL-99)

-- �ڿ�����(natural join)
-- ����� �Ǵ� �� ���̺� �̸��� �ڷ����� ���� Į���� �������� �����(equal join)�� �Ѵ�.
-- ���̺� ��Ī�� �ٿ��� Į������ ����� �� ����.
-- ���εǴ� Į���� ���̺���� ���� �� ����.

-- NATURAL JOIN
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e natural join dept d
    WHERE e.job = 'MANAGER'
    ORDER BY 1;

-- JOIN ~ USING
-- ���εǴ� Į���� ������ �̸��� Ÿ���̾�� �Ѵ�.
-- ���εǴ� Į���� ���̺� �ĺ��ڸ� ������ �� ����.
--SELECT e.empno, e.ename, e.job, deptno, d.dname, d.loc
SELECT e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e join dept d 
    USING(deptno)
    WHERE e.job = 'MANAGER'
    ORDER BY 1;
    
    
    
    
-- ���̺� : emp, dept2    
-- ���εǴ� Į��: empno, deptno
SELECT empno, deptno, e.ename, e.job, d.dname, d.loc
    FROM emp e join dept2 d using(empno, deptno)
    ORDER BY 1,2;
    
    
-- JOIN ~ ON
-- ���� ������ ���
-- ����� �Ҽ� �μ��ڵ带 �����Ͽ� �μ����� Ȯ��
SELECT e.ename, e.job, e.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno = d.deptno)
    ORDER BY 1;
    
SELECT e.ename, e.job, e.deptno, d.dname, d.loc
    FROM emp e join dept d 
    ON(e.deptno = d.deptno)
    WHERE e.job = 'MANAGER'
    ORDER BY 1;
    
    
-- �Ҽӵ��� ���� �μ� ���� ����: e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno != d.deptno)
    ORDER BY 1,2;

-- �Ҽӵ��� ���� �μ� ���� �����Ͽ� ���� : �Ҽӵ� �μ�
-- not e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(not (e.deptno != d.deptno))
    ORDER BY 1,2;
    
-- �μ��� ��ġ�� ��Ұ� 'CHICAGO', 'NEW YORK'�� �μ��� ����
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(d.loc IN('CHICAGO', 'NEW YORK') AND e.deptno = d.deptno)
    ORDER BY 1,2;