-- ������ �������� MULTI-ROW-SUBQUERY : 
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN,ANY, SONE, ALL, EXISTS

-----------------------------------------------------------------------------
-- [ANY, SOME]
-- ���������� ��ȯ�� ���� ��� �߿��� ���������� ���ǽ��� ����� ����� �ϳ��� ������ TRUE

-- �� �μ��� �ְ� �޿���
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO;
-- �� �μ��� ���� �޿��� 950
SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO;

-----------------------------------------------------------------------------
-- [ANY]
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM EMP
    WHERE SAL = ANY (SELECT  MAX(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [SOME]
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM EMP
    WHERE SAL = SOME (SELECT  MAX(SAL) FROM EMP GROUP BY DEPTNO);
-----------------------------------------------------------------------------
-- [����]
-- �μ��ڵ�(30) �� �ִ� �޿��� �޴� ������� ���� �޿��� �޴� ��� ��� ���� 2850
SELECT * FROM EMP
    WHERE SAL < ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
SELECT * FROM EMP
    WHERE SAL < SOME (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
-- �׷��Լ��� �ϱ�
-- �μ��ڵ�(30) �� �ִ� �޿��� �޴� ������� ���� �޿��� �޴� ��� ��� ���� 2850
SELECT * FROM EMP
    WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30);

-----------------------------------------------------------------------------
-- [����]
-- �μ��ڵ�(30) �� ���� �޿��� �޴� ������� ���� �޿��� �޴� ��� ��� ���� 950
SELECT * FROM EMP
    WHERE SAL > ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);

SELECT * FROM EMP
    WHERE SAL < SOME (SELECT SAL FROM EMP WHERE DEPTNO = 30);
    
-- �׷��Լ��� �ϱ�
-- �μ��ڵ�(30) �� �ִ� �޿��� �޴� ������� ���� �޿��� �޴� ��� ��� ���� 2850
SELECT * FROM EMP
    WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30);
    