--�ڷ��� ��ȯ
-- TO_CHAR : ����, ��¥�����͸� ���ڷ� ��ȯ
-- TO_NUMBER : ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_DATE : ���� �����͸� ��¥ �����ͷ� ��ȯ

------------------------------------------------------------------------------
-- ����, ���ڿ�
-- NUMBER + ���ڿ�(����) : �ڵ�����ȯ, ���ڷ� ��ȯ
SELECT  ENAME, EMPNO, EMPNO+'11' FROM EMP;
SELECT  ENAME, EMPNO, EMPNO+'11', EMPNO+11 FROM EMP;

-- NUMBER + ���ڿ� (����) : INVAL_ID NUMBER ����
SELECT ENAME, EMPNO, EMPNO + 'JX' FROM EMP;

 -- ���ڿ� + ���ڿ� : INVAL_ID NUMBER ����
SELECT ENAME, EMPNO, ENAME + 'JX' FROM EMP;

 -- ���ڿ� || ���ڿ� : ���ڿ� ����
SELECT ENAME, EMPNO, ENAME || 'JX' FROM EMP;


-------------------------------------------------------------------
-- �ڷ��� ��ȯ : ��¥�� ���ڸ� ���ڷ� ��ȯ
-- TO_CHAR(������, ����)

SELECT sysdate, TO_CHAR(sysdate, 'YYYY.MM.DD') 
    FROM dual;

-- ���� CC(21����)
SELECT TO_CHAR(SYSDATE, 'CC') FROM DUAL;


-- õ ������ ���� ��ȣ ǥ�� (,)
SELECT SAL, TO_CHAR(SAL, '999,999') FROM EMP;

SELECT TO_CHAR (1234567890, '999,999,999') AS NUM FROM EMP;
SELECT TO_CHAR (1234567890, '999,999,999') FROM EMP;

--  �Ҽ���
SELECT TO_CHAR (1234.56, '999,999.99') AS NUM FROM EMP;
SELECT TO_CHAR (1234.56, '999,999.00') FROM EMP;

SELECT TO_CHAR (1234, '999,999.00') FROM EMP;
SELECT TO_CHAR (1234, '999,999.00') FROM EMP;

-- ȭ�����
-- L : LOCALE, \
SELECT TO_CHAR (10000, 'L999,999') FROM dual;

-- $: DOLLAR, $
SELECT TO_CHAR (10000, '$999,999') FROM dual;

