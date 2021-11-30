-- ������(SEQUENCE)
-- ���� : ���������� ����Ǵ� �Ϸù�ȣ

/*
CREATE SEQUENCE ������ �̸�
    INCREMENT BY N  --������ (�⺻��1)
    START WITH N    -- ���۰� (�⺻��1)
    MAXVALUE N      -- �ִ밪
    MINVALUE N      -- �ּҰ� (CYCLE�� ���, MAXVALUE�� ���� �� ���۰��� ��)
    CYCLE : NOCYCLE -- �ִ밪�� �������� ��, ���۰����� �ٽ� ������ ������ ����
    CACHE N : NOCACHE -- ������ ��ȣ�� �޸𸮿� �̸� �Ҥ����� ���� ���� �������� ����(�⺻�� 20)
*/

CREATE SEQUENCE hello_seq
    INCREMENT BY 10
    START WITH 10
    MAXVALUE 99
    MINVALUE 0
    CYCLE
    NOCACHE;

-- ������ ����
ALTER SEQUENCE hello_seq
    INCREMENT BY 10
--    START WITH 10
    MAXVALUE 999
    MINVALUE 0
    NOCYCLE
    NOCACHE;


SELECT * FROM USER_SEQUENCES;

DROP SEQUENCE hello_seq;
SELECT * FROM USER_SEQUENCES;

-- ���� ��ȣ ���� : ���ʿ� �ѹ��� ������ �ؾ� ��
-- ��� ������ �ϸ��� ��ȣ�� ����Ǹ鼭 ������
SELECT hello_seq.NEXTVAL FROM DUAL;
    -- 10�� �̻� �ϸ��� ��MAXVALUE 10 ������ ������
    --ORA-08004: ������ HELLO_SEQ.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�

-- ���� ��ȣ ��ȸ
SELECT hello_seq.CURRVAL FROM DUAL;

-- ��������
CREATE TABLE DEPTSEQ AS SELECT * FROM DEPT WHERE 1<>1;
SELECT * FROM DEPTSEQ;

INSERT INTO DEPTSEQ VALUES (hello_seq.NEXTVAL, 'EZ' || hello_seq.CURRVAL, 'SEONGNAM');
COMMIT;
DROP TABLE DEPTSEQ;


--ORA-01438: �� ���� ���� ������ ��ü �ڸ������� ū ���� ���˴ϴ�.

