-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- [1. ������ �Լ�]
-- �����Լ�(String)
-- LPAD, RPAD : �� ������ �ٸ� ���ڷ� ä��� �Լ�
-- LPAD(�Ϲݹ��ڿ�, �ڸ���, ä�﹮��)
-- RPAD(�Ϲݹ��ڿ�, �ڸ���, ä�﹮��)

-- LPAD
SELECT JOB, LPAD(JOB, 20, '#') FROM EMP;
SELECT JOB, LPAD(JOB, 20, ' ') FROM EMP;
-- ä�� ���ڸ� �������� ������ �������� ä��
SELECT JOB, LPAD(JOB, 20) FROM EMP;

-- RPAD
SELECT JOB, RPAD(JOB, 20, '#') FROM EMP;
SELECT JOB, RPAD(JOB, 20, ' ') FROM EMP;
-- ä�� ���ڸ� �������� ������ �������� ä��
SELECT JOB, RPAD(JOB, 20) FROM EMP;

-- �ִ� �ڸ����� �������ڿ����� ������ �ִ��ڸ�����ŭ ��µǰ� �����ʹ� �߸�
SELECT JOB, RPAD(JOB, 5), LENGTH(RPAD(JOB,5)) FROM EMP;

-- �ֹι�ȣ (123456-1234567) : �� 14�ڸ�
-- 123456-*******
SELECT RPAD('123456-', 14, '*') FROM DUAL;

SELECT SUBSTR('123456-1234567',1,INSTR('123456-1234567','-')) FROM DUAL;

SELECT RPAD(SUBSTR('123456-1234567',1,INSTR('123456-1234567','-')),LENGTH('123456-1234567'),'*') FROM DUAL;


-- ��ȭ��ȣ (010-1234-5678) : �� 13�ڸ�
-- 010-1234-****
SELECT RPAD('010-1234-', 13, '*') FROM DUAL;

SELECT RPAD(SUBSTR('010-1234-5678',1 ,INSTR('010-1234-5678','-',1,2)),LENGTH('010-1234-5678'),'*') FROM DUAL;
SELECT RPAD(SUBSTR('010-1234-5678',1 ,9),LENGTH('010-1234-5678'),'*') FROM DUAL;

SELECT INSTR('010-1234-5678','-',1,2) FROM DUAL;

-- ���� 10�ڸ�, 13�ڸ����� *�� ä���??
SELECT RPAD('1234567890', 13, '*') FROM DUAL;




