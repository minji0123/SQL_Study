-- ���̺�� (VIEW)
-- ���� ���̺�(VIRTUAL TABLE)
-- �����Ǥ� ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS �� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ���� : 
-- 1. ���� (�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
-- 2. ���ȼ�(������ ���̺��̳� ������ ���� �� ����)


-- �䰡 ������ �����ϰ�, ������ �����϶�(30)
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
    
-- �䰡 ������ �����ϰ�, ������ �����϶�(20)
CREATE OR REPLACE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=20);
    
-- �̸� �����ϱ�
RENAME EMP_DEPT30 TO EMP_DEPT20;

-- �����ִ°� �����ּ�
SELECT * FROM USER_VIEWS;

-- Ŀ�Ծ��� �����
DROP VIEW EMP_DEPT20;
DROP VIEW EMP_DEPT30;