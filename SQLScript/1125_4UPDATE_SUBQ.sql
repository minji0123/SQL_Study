-- ���̺��� ������ ����
/*
    UPDATE ���̺��
        SET �÷�1 = ������1,
            �÷�2 = ������2,
            �÷�3 = ������3,
            ...
            �÷�N = ������N
            [WHERE ���ǽ�]
*/

SELECT * FROM EMPX;
SELECT * FROM DEPTX;

-- �μ����̺��� ��� �μ���ġ�� 'SEOUL'�� ����
-- WHERE���� ���� ������ ���̺��� ��� �����Ͱ� ����
UPDATE DEPTX SET LOC = 'SEOUL';

-- �μ��̸��� '������'�� �μ��� ��ġ�� 'SEONGNAM'���� ����
UPDATE DEPTX SET LOC = 'SEONGNAM' WHERE DNAME LIKE '������%';

-- �μ��̸��� ���� �μ��� �̸��� '������', �μ���ġ�� '����'�� ����
UPDATE DEPTX 
    SET DNAME = '������', LOC = '����'
    WHERE DNAME IS NULL;
    
--[����]
-- �ӽ� ��� ���̺�EMPX ���� �޿��� 2000������ ����� ������ 500�� �߰��϶�

INSERT INTO EMPX SELECT * FROM EMP;
SELECT * FROM EMPX;
SELECT * FROM EMPX    WHERE SAL<=2000 OR SAL IS NULL;

--COMMIT;
UPDATE EMPX 
    SET COMM = NVL(COMM,0)
    WHERE SAL<=2000 OR SAL IS NULL;

--ROLLBACK;

UPDATE EMPX 
    SET COMM = COMM+500
    WHERE SAL<=2000 OR SAL IS NULL;
    
-- [����]
-- ����?
SELECT E1.EMPNO, E1.ENAME, E1.SAL, E1.COMM, E2.COMM, NVL2(E2.COMM,E2.COMM,0) - NVL2(E1.COMM, E1.COMM,0) AS COMMX
    FROM EMP E1, EMPX E2
    WHERE E1.SAL <= 2000
    AND E1.EMPNO = E2.EMPNO
    AND (NVL2(E2.COMM,E2.COMM,0) - NVL2(E1.COMM, E1.COMM,0)) >500 ;
    
    