-- �л�(STUDENT) ���̺��� �а� (SUBJECT) ���̺��� �ܺ�Ű�� ����
-- 1. ���̺��� ���� ������ �����Ǵ� ���̺��� ���� ����
-- 2. ���̺� �����͸� �ִ� ���� :  STUDENT ���� �����ϴ� SUBJECT �����Ͱ� �����ؾ� �Ѵ�.
-- 3. �����Ǵ� ���� : STUDENT -> SUBJECT
    



-- �а� ���̺�
CREATE TABLE SUBJECT(
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,
    SUBNAME VARCHAR2(20)
);
-- �л� ���̺�
CREATE TABLE STUDENT(
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,
    SNAME VARCHAR2(20),
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT
    --    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO)

);

-- ON DELETE CASCASE
CREATE TABLE STUDENT(
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,
    SNAME VARCHAR2(20),
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO)
    
);

SELECT * FROM SUBJECT;
SELECT * FROM STUDENT;
DROP TABLE SUBJECT;
DROP TABLE STUDENT;


-----------------------------------------------------------------------
--INSERT
-- �а� ���̺� �� ���� �־����
INSERT INTO SUBJECT VALUES ('2021-0001', '���а�');
INSERT INTO SUBJECT VALUES ('2021-0002', '������');
INSERT INTO SUBJECT VALUES ('2021-0003', '������');
INSERT INTO SUBJECT VALUES ('2021-0004', '�����а�');
INSERT INTO SUBJECT VALUES ('2021-0005', '��ǻ���а�');



-- �л� ���̺� �긦 �� �ڿ� �־����
INSERT INTO STUDENT VALUES (10000, 'ȫ�浿', '2021-0001');
INSERT INTO STUDENT VALUES (20000, '���мҳ�', '2021-0002');
INSERT INTO STUDENT VALUES (30000, '�ܹ���', '2021-0003');
INSERT INTO STUDENT VALUES (40000, '��Ƽ��', '2021-0004');
INSERT INTO STUDENT VALUES (50000, '�輺��', '2021-0005');

---------------------------------------------------------------------------
-- DELETE
-- �л� ���̺� ���� �����
DELETE FROM STUDENT WHERE SUBNO ='2021-0001';

-- �а� ���̺� ���߿� �����
DELETE FROM SUBJECT WHERE SUBNO ='2021-0001';
-- �ٵ� CASECADE ������ ����������
---------------------------------------------------------------------------
-- JOIN
SELECT S.SNO, S.SNAME, S.SUBNO, J.SUBNO, J.SUBNAME
    FROM STUDENT S, SUBJECT J
    WHERE S.SUBNO = J.SUBNO;
