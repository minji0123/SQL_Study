-- ���̺� ���� : ALTER TABLE
-- ������ �ڷḦ ����?
-- ���̺��� ������ ����
----------------------------------------------------------------
-- 1. ADD : ���̺� �÷� �߰�
    -- ALTER TABLE ���̺�� ADD �÷��� �ڷ���
-- 2. RENAME : ���̺��� �÷� �̸��� ����
    -- ALTER TABLE ���̺�� RENAME COLUMN �����÷� TO ���ο��÷�
-- 3. MODIFY : ���̺��� �÷��� �ڷ����� ����
    -- ALTER TABLE ���̺�� MODIFY �÷��� �ڷ���
-- 4. DROP : ���̺��� �÷��� ����
    -- ALTER TABLE ���̺�� DROP COLUMN �÷���

SELECT * FROM HELLOX;

--�÷� �߰�
ALTER TABLE HELLOX ADD ADDR VARCHAR2(50);

-- �÷��̸� ���� ADDR TO LOC
ALTER TABLE HELLOX RENAME COLUMN ADDR TO LOC;

-- �÷��� �ڷ��� ���� : LOC(50) -> LOC (100)
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(100);
ALTER TABLE HELLOX MODIFY LOC VARCHAR2(50);
-- ũ�⸦ ���� �� �����Ͱ� NULL�̰ų� �������� ũ�⺸�ٴ� Ŀ�� �Ѵ�.
INSERT INTO HELLOX VALUES( '20000',1000,'HELLO',NULL,NULL,NULL);
ALTER TABLE HELLOX MODIFY NAME VARCHAR2(4); -- �Ϻ� ���� �ʹ� Ŀ�� �� ���̸� ���� �� ����

-- �÷� ���� LOC ������
ALTER TABLE HELLOX DROP COLUMN LOC;