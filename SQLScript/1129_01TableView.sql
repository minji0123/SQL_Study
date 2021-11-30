-- ���̺�� (VIEW)
-- ���� ���̺�(VIRTUAL TABLE)
-- �����Ǥ� ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS �� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ���� : 
-- 1. ���� (�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
-- 2. ���ȼ�(������ ���̺��̳� ������ ���� �� ����)

-- ��� ���̺��� �μ��ڵ尡 30�� ���
SELECT * FROM EMP WHERE DEPTNO= 30;

-- ��������
SELECT * 
    FROM (SELECT * FROM EMP WHERE DEPTNO=30);
    
-- ���̺� ��
-- SYSTEM ���ѿ���, GRANT CREATE VIEW TO SCOTT;�� ��� �����ϴ�.
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
SELECT * FROM EMP_DEPT30;

-- ���� ���̺� ��� �����ֱ�
SELECT * FROM TAB;

-- ����(DICT)
SELECT * FROM USER_VIEWS;

-- �� ���̺� ����
DROP VIEW EMP_DEPT30;