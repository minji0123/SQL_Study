-- DML (DATA MANIPULATION LANGUAGE)
-- ��ȸSELECT, ����DELECT, ����UPDATE, �Է�INSERT

-- �Է�(INSERT)
-- ���̺� ������ �߰�
-- INSERT INTO ���̺��̸� [(�÷�1, �÷�2,..)] VALUES (������1, ������2...); 
        -- []�� �ɼǻ����� ����
-- �÷����� ������� ������ ���̺��� ��� �÷��� �ش��ϴ� �����͸� VALUES ���� ����ؾ���
        -- ��õ� �÷��� �����ϴ� �ڷ����� �°� VALUES ���� ���� ������ŭ ����Ǿ����
        
----------------------------------------------------------------------------------
 -- ���̺� DEPT�� ������. �ٵ� �����͸� ������
CREATE TABLE DEPTX
    AS SELECT * FROM DEPT;
   
 -- ���̺� DEPT�� ������. �ٵ� �����͸� ������ 
CREATE TABLE DEPTX
    AS SELECT * FROM DEPT WHERE 1<>1;
    
DESC DEPTX;

SELECT * FROM DEPTX;

-- INSERT : �÷����� ������� ����
INSERT INTO DEPTX VALUES (11,'������','����');

-- INSERT : �÷����� �����
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES (12,'������');

-- INSERT : ������ �ٲ㵵 �������
INSERT INTO DEPTX ( DNAME,DEPTNO) VALUES ('������', 13);
    -- �ٵ� ��Ī�� �ȵǸ� ������_���� : �÷��� �ش��ϴ� �ڷ����� ��ġ���� ����
    --INSERT INTO DEPTX ( DNAME,DEPTNO) VALUES (14, '�����');

-- INSERT : ��� �÷����� ���
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (21, 'ȸ���', '����');

-- INSERT : �÷� ����(NUMBER)�� �� ���ڿ��� ������??
    -- ���ڷ� ��ȯ�� ������ ���ڿ��̸��� ��ȯ���� ���� ����
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('21', '�ѹ���', '����');
    -- ���� : ����(NUMBER)���� ���ڷ� ��ȯ�� �Ұ����� ���ڿ��� ������ �� ����.
    --INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('SS', '�ѹ���', '����');
    -- TO_NUMBER ���ڷ� ��ȯ�� ������ ���ڿ��� ��������� ǥ��
    SELECT TO_NUMBER('31', '99') FROM DUAL;
    INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (TO_NUMBER('31', '99'), '������', '����');
    -- ���� : ���ڷ� ��ȯ�� �Ұ����� ���ڿ��� ��������� TO_NUMBER �Լ��� ����ص� ������
   -- SELECT TO_NUMBER('XY', '99') FROM DUAL;
    --INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (TO_NUMBER('XY','99'), '���ź�', '����');

-- ���� ��õ� �÷��� ������ VALUES ���� ����� ������ ��ġ���� ������?
-- SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('41', '������');
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES ('41', '������');

-- NULL�� ����ֱ�
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('42', '������2', NULL);
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('43', '������3', ''); --  �굵 NULL�� ������
    -- LENGTH(LOC) : NULL�̴�. ZERO�� �ƴ�
    SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO =43;
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('44', NULL, '�λ�'); --  �굵 NULL�� ������

-- ���� ����ֱ�
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('45', '������5', ' '); 
    -- LENGTH(LOC) : 1�̴�. NULL�� �ƴ�
    SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO =45;

-- �÷��� ������ ũ�⸦ �Ѿ ���
-- ���� : �� ���� ���� ������ ��ü �ڸ������� ū ���� ���˴ϴ�.
-- INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (123, '�μ�123', '����123'); 

-- ���� �ѱ��̳� �ٱ����� ��� LENGTH,LENGTHB�� ����Ʈ ũ�� Ȯ��
SELECT '��ǰ���ߺ�', LENGTH('��ǰ���ߺ�'), LENGTHB('��ǰ���ߺ�')FROM DUAL; 
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (52, '��ǰ���ߺ�', 'LOC52');

