-- ���������� �̿��� �Է�
-- ���������� �̿��Ͽ� INSERT �� �ϴ� ���� VALUES ������ ����
-- ���� : 
    -- 1. �÷��� ������ ��ġ
    -- 2. �÷��� �ڷ����� ��ġ

-- ��ü ����� �޿����
SELECT * FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
-- ��ü ����� �޿������ 4����� ���
SELECT * FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;
    
    DROP TABLE EMP4;
-- ��ü ����� �޿������ 4����� ��� ���̺�
CREATE TABLE EMP4 AS SELECT * FROM EMP WHERE 1 <> 1;

INSERT INTO EMP4
    SELECT E.*
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 4;


-- ��ü ����� �޿������ 2����� ��� ���̺� �Է�
-- ���� �÷�  COMM, DEPTNO
INSERT INTO EMP4 (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,DEPTNO)
    SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, SYSDATE, E.SAL, NULL
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 2;
    
SELECT * FROM EMP4;