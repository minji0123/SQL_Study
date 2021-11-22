-- ����JOIN : ���� �ٸ� ���̺� �ִ� �÷����� �ϳ��� ����� ����ϱ� ����
-- CROSS JOIN : EQUI ���ο���, ������ ���� �ʰ� ������ �ϸ� ��� �����͵��� ���� ���ε�

SELECT * FROM EMP; -- �÷� 12��
SELECT * FROM DEPT; -- �÷� 4��

-- īƼ�þ� ���δ���, ũ�ν� ����
SELECT * FROM EMP E, DEPT D; -- �÷� 48��

-- �����(EQUAL JOIN) ��������, ��������, �ܼ�����
-- DEPTNO�� ���� 
SELECT * FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO;

-- [����]
-- �޿��� 3000 �̸��̸鼭 ������ ���� ���
-- �������, �μ�����(�μ��ڵ�, �μ��̸�, �μ���ġ)
SELECT E.EMPNO,	E.ENAME, E.JOB,	E.MGR,	E.HIREDATE,	E.SAL,	E.COMM,	E.DEPTNO AS DEPTNO_E, D.DEPTNO AS DEPTNO_D, D.DNAME, D.LOC
  FROM EMP E, DEPT D 
  WHERE  E.SAL < 3000 AND E.DEPTNO = D.DEPTNO  AND E.COMM =0 OR E.COMM IS NULL ;
  
SELECT E.EMPNO,	E.ENAME, E.JOB,	E.MGR,	E.HIREDATE,	E.SAL,	E.COMM,	E.DEPTNO AS DEPTNO_E, D.DEPTNO AS DEPTNO_D, D.DNAME, D.LOC
  FROM EMP E, DEPT D 
  WHERE  E.SAL < 3000 AND E.DEPTNO = D.DEPTNO  AND (E.COMM =0 OR E.COMM IS NULL) ;