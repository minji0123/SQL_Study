-- SYNONYM ���Ǿ�
-- ���̺�, ��, ������ ��ü�� ������ �ο���
/*
CREATE SYNONYM ���Ǿ��̸� FOR ��ü�̸�
*/
-- �뵵
-- 1. �̸��� �� ��� �ٿ���
-- 2. �Ǽ��� �̸��� �߸� ����� ���
-- 3. DBLINK(�ٸ� DB, ����)


CREATE SYNONYM SG FOR SALGRADE;

SELECT * FROM SG;
SELECT * FROM SALGRADE;

DROP SYNONYM SG;
