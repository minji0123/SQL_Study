-- �������� : FROM ���� ����ϴ� ��������
-- �ζ��� ��(INLINE VIEW)
-- ���̺� ��ü�� �ƴ϶� SELECT ���� ���� �Ϻ� �����͸� �����ؼ� ���

------------------------------------------------------------------    
-- ���εǴ� ��� ���̺��� �˻������ �̸� �����ؼ� ����
-- ���������� WHERE ������ �ʿ����. (�����Ǵ� ������ �����̱� ������, ���������� WHERE ������ �ʿ����.)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E,
        (SELECT * FROM DEPT WHERE DEPTNO =10) D;

        
-- WITH
-- ���������� �̸� �����Ͽ� SELECT ���� ���
WITH
E AS (SELECT * FROM EMP WHERE DEPTNO = 10),
D AS (SELECT * FROM DEPT WHERE DEPTNO = 10)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM E,D -- WHIT ���� ������ ��Ī�� �����
    WHERE E.DEPTNO = D.DEPTNO;
        