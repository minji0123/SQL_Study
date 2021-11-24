-- �������� : FROM ���� ����ϴ� ��������
-- �ζ��� ��(INLINE VIEW)
-- ���̺� ��ü�� �ƴ϶� SELECT ���� ���� �Ϻ� �����͸� �����ؼ� ���

------------------------------------------------------------------
-- �μ��� 10 �� ����� ����
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 10;

-- FROM ���� ������ ����� ���̺�ó�� ���
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- ���εǴ� ��� ���̺��� �˻������ �̸� �����ؼ� ����
-- ���������� WHERE ������ �ʿ����. (�����Ǵ� ������ �����̱� ������, ���������� WHERE ������ �ʿ����.)
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO =10) E,
        (SELECT * FROM DEPT WHERE DEPTNO =10) D;

------------------------------------------------------------------
-- �μ��� 10, 20 �� ����� ����
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO IN(10, 20);

-- FROM ���� ������ ����� ���̺�ó�� ���
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO IN(10, 20)) E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO;
    
-- ���εǴ� ��� ���̺��� �˻������ �̸� �����ؼ� ����
-- ���������� WHERE ������ �ʿ����.
-- ũ�ν�����! �����Ͱ� �ߺ��Ǿ� �����
SELECT E.EMPNO, E.ENAME, E.DEPTNO, D.DEPTNO, D.DNAME 
    FROM (SELECT * FROM EMP WHERE DEPTNO IN(10, 20)) E,
        (SELECT * FROM DEPT WHERE DEPTNO IN(10, 20)) D;
--         WHERE E.DEPTNO = D.DEPTNO;
        
        
        