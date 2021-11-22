-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- [1. ������ �Լ�]
-- �����Լ�(String)
-- LENGHT(COLUMN) : �÷��� ���ڿ� ���̸� ���� (���ڿ� ���̴� ������ �����̴�.)
    -- "ABC" : 3
    -- "�ȳ��ϼ���" : 5
-- LENGTHB : ���ڿ� ���̸� ����Ʈ ������ ���ϴ� �Լ�

SELECT ENAME, LENGTH(ENAME) FROM EMP;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)=4;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)>=4;
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME)=4;

-- �̸��� �ѱ��� ���
SELECT ENAME, LENGTH(ENAME), LENGTHB(ENAME), JOB, LENGTH(JOB), LENGTHB(JOB) FROM EMP3;

-- ���� ���ڵ� ��� �˾ƺ���
SELECT * FROM SYS.nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';