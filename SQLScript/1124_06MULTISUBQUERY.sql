-- ������ �������� MULTI-ROW-SUBQUERY : 
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������ : IN,ANY, SONE, ALL, EXISTS

-- �μ��ڵ尡 30 �� ����� �޿� ����
SELECT * FROM EMP WHERE DEPTNO = 30 ORDER BY SAL;
--------------------------------------------------------------------------------------------------
-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ���
-- �μ��ڵ尡 30�� ������� �ּ� �޿�_JAMES : 950
SELECT ename, sal 
    FROM emp e
    WHERE sal > ALL (SELECT sal 
                        FROM emp 
                        WHERE deptno = 30);
--    ORDER BY SAL, EMPNO;

--[����] �׷��Լ��� ��ȯ
-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ��� ����
SELECT e.ename, e.sal 
    FROM emp e
    WHERE sal < (SELECT MIN(sal) 
                    FROM emp 
                    WHERE deptno = 30);
--    ORDER BY SAL, EMPNO;



--------------------------------------------------------------------------------------------------
-- ALL
-- ���������� ��ȯ�� ���� �����, ��������-���ǽ� ����� ��� (ALL) ������ �������� ���ǽ��� TRUE �� ��ȯ

-- �μ��ڵ尡 30�� ������� �ְ� �޿����� �� ���� �޿��� �޴� ���
SELECT * FROM EMP
    WHERE SAL > ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;
    
--[����] �׷��Լ��� ��ȯ
SELECT * FROM EMP
    WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30)
    ORDER BY SAL, EMPNO;
    
    
    
    
--------------------------------------------------------------------------------------------------
-- ������ SALESMAN �� ������ ���� ������ �޴� ���
SELECT * FROM EMP WHERE SAL IN(SELECT SAL FROM EMP WHERE JOB='SALESMAN');

CREATE TABLE EMP4
    AS SELECT * FROM EMP;




-- JONES ���� �� ���� ������ �޴� ���
SELECT * FROM EMP4 WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');

SELECT JOB, SAL FROM EMP4;
