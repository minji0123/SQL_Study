-- ���� ���ڵ� ��� �˾ƺ���
-- character set
SELECT * FROM SYS.nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

-- DUAL : ����Ŭ���� �����ϴ� Ư���� ���̺�
    -- ��� ������ ����� �� �ٷ� ��� ���ؼ�, �������ִ� ���̺�
SELECT '�ѱ�' AS hanguel, LENGTH('�ѱ�') hanlen, LENGTHB('�ѱ�') AS hanlenb FROM DUAL;

-- DUAL �� ���ó�¥ ���ϱ�
SELECT SYSDATE FROM DUAL;

-- DUAL �� �÷�, �� ���
SELECT UPPER('abc') as abc FROM DUAL;

-- EMP�� DUAL ��������
SELECT * FROM EMP WHERE ENAME = (SELECT UPPER('james') AS abc FROM DUAL);

DESC DUAL;

SELECT * FROM DUAL;
