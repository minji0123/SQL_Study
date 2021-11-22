-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- [1. ������ �Լ�]
-- �����Լ�(String)
-- CONCAT(���ڿ�1, ���ڿ�2) : ���ڿ�1 + ���ڿ�2, �� ���� ���ڿ��� �ϳ��� ����

-- �̸��� ����� ����
SELECT EMPNO, ENAME, CONCAT(ENAME, EMPNO) FROM EMP;
--����� �̸��� ����
SELECT EMPNO, ENAME, CONCAT(EMPNO, ENAME) FROM EMP;

-- ���, + '-' + �̸�
SELECT EMPNO, ENAME, CONCAT(EMPNO, CONCAT('-',ENAME)) FROM EMP;

-- �̸� + '(' + ��� + ')'
SELECT EMPNO, ENAME, CONCAT(ENAME, CONCAT('(',EMPNO) ||')' ) FROM EMP;
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('(',EMPNO)), ')') FROM EMP;

-- �� �ܰ躰 CONCAT
SELECT CONCAT ('[', EMPNO) FROM EMP;
SELECT CONCAT(ENAME, CONCAT('[', EMPNO)) FROM EMP;
SELECT EMPNO, ENAME, CONCAT(CONCAT(ENAME, CONCAT('[',EMPNO)), ']') FROM EMP;


-- ||�� �����ϱ�
SELECT EMPNO, ENAME, ENAME||EMPNO FROM EMP;
SELECT EMPNO, ENAME, ENAME || '(' || EMPNO || ')' AS ENAME_NO FROM EMP;

