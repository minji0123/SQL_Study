-- ���̺��� ������ ����
-- ���������� ����� ����

SELECT * FROM EMPX;
SELECT * FROM DEPTX;

-- �������� �÷��� ���������� �����Ͽ� ����
-- �μ��ڵ尡 12�� �μ��� �̸��� ��ġ��, �μ��ڵ尡 41�� �μ��� �̸��� ��ġ�� ����
UPDATE DEPTX
    SET (DNAME, LOC) = (SELECT DNAME, LOC FROM DEPTX WHERE DEPTNO =41)
    WHERE DEPTNO =12;
    
-- �� �÷����� �˻������� �ٸ���
-- �� �÷����� ���������� �����Ͽ� ����
UPDATE DEPTX
    SET DNAME=(SELECT DNAME FROM DEPTX WHERE DEPTNO = 13),
        LOC=(SELECT LOC FROM DEPTX WHERE DEPTNO = 44)
        WHERE DEPTNO IN (11,21,31,41);
        
    