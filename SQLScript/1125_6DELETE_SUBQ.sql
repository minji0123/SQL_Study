-- ���̺��� ������ �����ϱ� DELECT

CREATE TABLE DEPTX2 AS SELECT * FROM DEPTX;

SELECT * FROM DEPTX2;

DELETE FROM DEPTX2;
DROP TABLE DEPTX2;

DELETE FROM DEPTX2 WHERE LOC LIKE '����%';

-- [����]
-- �ӽ����̺� EMPX���� �޿������ ��� ������ ������ �ʴ� ��� ����� ���� 
SELECT * FROM EMPX1;
SELECT * FROM SALGRADE;

--DELETE FROM EMPX 
--    WHERE (SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL)

CREATE TABLE EMPX1 AS SELECT * FROM EMPX;

-- �޿���� ������ �ִ� �����
SELECT E.* FROM EMPX1 E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
-- �޿���� ���� �ۿ� �ִ� �����
SELECT * FROM EMPX
    WHERE EMPNO NOT IN(
        SELECT E.EMPNO
        FROM EMPX1 E, SALGRADE S
        WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL);
        
-- �ӽ����̺� EMPX���� �޿������ ��� ������ ������ �ʴ� ��� ����� ���� 
DELETE FROM EMPX1
        WHERE EMPNO NOT IN(
        SELECT E.EMPNO
        FROM EMPX1 E, SALGRADE S
        WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL);
    
------------------------------------------------------------------------------
-- ũ�ν����εǸ鼭 �ߺ������ͱ��� �� ��µ�
SELECT E.* FROM EMPX E, SALGRADE S
    WHERE E.SAL NOT BETWEEN S.LOSAL AND S.HISAL;

--�ߺ������� ����
SELECT DISTINCT E.EMPNO, E.ENAME
    FROM EMPX E, SALGRADE S
    WHERE E.SAL NOT BETWEEN S.LOSAL AND S.HISAL;
    