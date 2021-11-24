-- ������ �������� MULTI-ROW-SUBQUERY : 
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN,ANY, SONE, ALL, EXISTS

-----------------------------------------------------------------------------
-- [IN]
-- ���������� ��ȯ�� ���� ��� �߿��� ���������� ���ǽ��� ����� ����� �ϳ��� ������ TRUE
SELECT * FROM EMP WHERE DEPTNO IN(10, 20) ORDER BY DEPTNO;

-- �� �μ��� �ְ� �޿���
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- �� �μ��� ���� �޿��� 950
SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO;

-----------------------------------------------------------------------------
-- [IN]
-- �μ��� �ְ� �޿����� �޴� �������
SELECT * FROM EMP
    WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [����]
-- �μ��� ���� �޿����� �޴� �������
SELECT * FROM EMP
    WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [����]
-- ����� ������ ���� ���� �μ� : 40
SELECT COUNT(EMP.EMPNO), DEPT.DEPTNO
    FROM EMP, DEPT
    WHERE EMP.DEPTNO = DEPT.DEPTNO
    GROUP BY DEPT.DEPTNO;

SELECT D.*
    FROM EMP E, DEPT D
    WHERE E.DEPTNO(+) = D.DEPTNO AND E.ENAME IS NULL;
    
SELECT * FROM DEPT
    WHERE DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM EMP); -- 10, 20, 30
    
SELECT * FROM DEPT
    WHERE DEPTNO IN (SELECT DISTINCT DEPTNO FROM EMP); -- 40
    
    
SELECT * FROM dept WHERE deptno not in(SELECT deptno FROM emp GROUP by deptno); -- ��������
    -- GROUP BY �� �����Լ��̱� ������ �̷��� �� ������ �ʴ´�.


