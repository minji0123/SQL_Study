--�ڷ��� ��ȯ
-- TO_CHAR : ����, ��¥�����͸� ���ڷ� ��ȯ
-- TO_NUMBER : ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_DATE : ���� �����͸� ��¥ �����ͷ� ��ȯ

--------------------------------------------------------------
-- ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_NUMBER(���ڿ�, ��������)

SELECT TO_NUMBER('12345', '999999') FROM DUAL;

SELECT '12345' + 10 FROM DUAL;
SELECT '12345' - 10 FROM DUAL;
SELECT '12345' - '10' FROM DUAL;

SELECT '12,345' - '10' FROM DUAL; -- ��� ������
SELECT TO_NUMNER('12,345', '99,999') +'10' FROM DUAL;
SELECT TO_NUMNER('12,345.12', '99,999.99') +'0.23' FROM DUAL;

SELECT TO_NUMBER('12345', '99999') +10 
    FROM dual;

--------------------------------------------------------------
-- ���� �����͸� ��¥ �����ͷ� ��ȯ�ϴ� �Լ�
-- TO_DATE(���ڿ�, ��¥����)

SELECT TO_DATE ('2021-11-15', 'YYYY-MM-DD') FROM DUAL;

SELECT LAST_DAY('2021-11-15') FROM DUAL;
SELECT LAST_DAY(TO_DATE('11-15-2021', MM-DD-YYYY')) FROM DUAL;
SELECT LAST_DAY(TO_DATE('2021-11-15', 'YYYY-MM-DD')) FROM dual;

SELECT LAST_DAY('2021-11-15') FROM DUAL;











