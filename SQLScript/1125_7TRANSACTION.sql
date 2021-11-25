-- Ʈ�����(TRANSACTION)
-- �ϳ��� �������� �۾��� ó���ϱ� ���� ���� �����ǰ� ���ӵ� �����ͺ��̽� ���ɾ�(DML)�� ����
-- TCL(TRANSACTION CONTROL LANGUAGE)
-- 1. �ϳ��� �������� �۾� ����
-- 2. �ϳ��� �۾� �Ǵ� �����ϰ� �����Ǿ� �ִ� �۾� ������ ���� ���� �� ���� �ּ� ���� ����
-- 3. �ϳ��� Ʈ�������� ���� DML �������� �̷������.
-- 4. Ŀ��(COMMIT)�� ���ؼ� Ʈ������� �Ϸ�ȴ�.
-- 5. ���(ROLLBACK)�� ���ؼ� ����� SQL(DML)���� ��� ó���ȴ�.

CREATE TABLE DEPTR AS SELECT * FROM DEPT;

-- [Ʈ����� 1]
SELECT * FROM DEPTR;
-- 1. �ű��߰�
INSERT INTO DEPTR VALUES(90, 'APG','SEOUL');
INSERT INTO DEPTR VALUES(99, 'DBA','SEONGNAM');

-- 2. �ڷ����
UPDATE DEPTR SET LOC ='DAEJEON' WHERE DEPTNO = 90;

-- 3. �ڷ����
DELETE FROM DEPTR WHERE DEPTNO = 99;

-- 4. �۾����
ROLLBACK;

-- 5. �۾��Ϸ�
-- 1������ 3������ ó���ϰ� -> 4 �۾��� �ǳʶٰ� -> 5�� �۾����� �̵� ó��
COMMIT;


---------------------------------------------------------------
COMMIT; -- Ʈ������� �Ϸ�. ���� ������
SELECT * FROM DEPTR; -- �ѹ��� �ص� �۾����� ���·� ���ư�������
ROLLBACK;