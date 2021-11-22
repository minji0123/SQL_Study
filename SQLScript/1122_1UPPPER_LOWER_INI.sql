-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�
    
    
-- [1. ������ �Լ�]
-- �����Լ�(String)
-- Upper : �����͸� �빮�ڷ� ��ȯ
-- Lower : �����͸� �ҹ��ڷ� ��ȯ
-- Initcap : �������� ù ���ڸ� �빮��, �������� �ҹ��ڷ� ��ȯ

SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP;

SELECT ENAME, UPPER(ENAME) AS ENAME2, LOWER(ENAME) AS ENAME3, INITCAP(ENAME) AS ENAME4 FROM EMP;

-- �빮���� ������ �˻�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME='KING';
SELECT EMPNO, ENAME FROM EMP WHERE ENAME=upper('king');

-- �̸��� �Ϻ� ���ڸ� �˻�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME LIKE 'J%';


-- ���̺� �����Ϳ� �˻��ϰ��� �ϴ� ������ ������ ��� �ҹ��ڷ� ��ȯ�ؼ� �˻�
SELECT EMPNO, ENAME FROM EMP WHERE LOWER(ENAME) = LOWER('CLARK');

SELECT EMPNO, ENAME FROM EMP WHERE ENAME = INITCAP('cLARK');
SELECT EMPNO, ENAME FROM EMP WHERE INITCAP(ENAME) = INITCAP('cLARK');
