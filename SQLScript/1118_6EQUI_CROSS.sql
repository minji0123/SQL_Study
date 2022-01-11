-- ����JOIN : ���� �ٸ� ���̺� �ִ� �÷����� �ϳ��� ����� ����ϱ� ����
-- CROSS JOIN : EQUI ���ο���, ������ ���� �ʰ� ������ �ϸ� ��� �����͵��� ���� ���ε�

SELECT * FROM EMP; -- �÷� 12��
SELECT * FROM DEPT; -- �÷� 4��


-- īƼ�þ� ���δ���, ũ�ν� ����
-- �÷� 48��
SELECT * 
    FROM emp e, dept d;

-- �����(EQUAL JOIN) ��������, ��������, �ܼ�����
-- DEPTNO�� ���� 
SELECT * 
    FROM emp e, dept d 
    WHERE e.deptno = d.deptno;

-- [����]
-- �޿��� 3000 �̸��̸鼭 ������ ���� ���
-- �������, �μ�����(�μ��ڵ�, �μ��̸�, �μ���ġ)
SELECT E.EMPNO,	E.ENAME, E.JOB,	E.MGR,	E.HIREDATE,	E.SAL,	E.COMM,	E.DEPTNO AS DEPTNO_E, D.DEPTNO AS DEPTNO_D, D.DNAME, D.LOC
  FROM EMP E, DEPT D 
  WHERE  E.SAL < 3000 AND E.DEPTNO = D.DEPTNO  AND E.COMM =0 OR E.COMM IS NULL ;
  
SELECT e.empno,	e.ename, e.job,	e.mgr,	e.hiredate,	e.sal,	e.comm,	e.deptno AS deptno_E, d.deptno AS deptno_D, d.dname, d.loc
    FROM emp e, dept d 
    WHERE  (e.sal < 3000) AND (e.deptno = d.deptno)  AND (e.comm =0 OR e.comm IS NULL);
  