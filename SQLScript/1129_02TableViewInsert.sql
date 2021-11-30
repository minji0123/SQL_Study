-- ���̺�� (VIEW)
-- ���� ���̺�(VIRTUAL TABLE)
-- �����Ǥ� ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS �� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ���� : 
-- 1. ���� (�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
-- 2. ���ȼ�(������ ���̺��̳� ������ ���� �� ����)

-- ���̺�� ����, Ȯ��
CREATE VIEW EMP_DEPT30
    AS (SELECT * FROM EMP WHERE DEPTNO=30);
    
SELECT * FROM EMP_DEPT30;
    
--DROP VIEW EMP_DEPT30;

-- ���̺� �信 �Է� ���� (�˻����ǿ� �ش����� �ʾƵ� ������ �Է��� ����)
-- �������� �ݿ��� ��
INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(1234, 'ABCDE','STUDENT',30);

INSERT INTO EMP_DEPT30 (EMPNO, ENAME, JOB, DEPTNO)
    VALUES(4321, 'EDCBA','STUDENT',20);
    
SELECT * FROM EMP;

ROLLBACK;
-- ���̺� �並 �����ص� �Ʊ� �Է��� �����ʹ� �״����
DROP VIEW EMP_DEPT30;

DELETE FROM EMP WHERE EMPNO IN(1234, 4321);

-- �� ���̺� ����
/*
�並 ���ؼ� �Է��� ������ Ŀ�Եȴ�. �״ϱ� DROP VIEW�������� ROLLBACK�� �ؾ� �ݿ��ȵǰ� �״�� ������
�����������ֱ� ������ �ѹ��ϼ�
*/