-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- [1. ������ �Լ�]
-- �����Լ�(String)
-- ���� �����
-- TRIM(�ɼ� ������ ���ڿ� FROM �������ڿ�) : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
    -- BOTH : ����
    -- LEADING : ����
    -- TRAILING : ������
-- LTRIM(������, ������ ���ڿ�) : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
-- RTRIM(������, ������ ���ڿ�) : ���ڿ��� �����ʿ��� ������ ���ڿ��� ����

-- ���ڿ��� ���� ������ ����
SELECT '[' ||'  ȫ�浿  '|| ']' FROM DUAL; 
SELECT '[' ||TRIM('  ȫ�浿  ')|| ']' FROM DUAL; 

SELECT '[' ||TRIM(BOTH ' 'FROM'  ȫ�浿  ')|| ']' FROM DUAL;  -- ���� ����
SELECT '[' ||TRIM(LEADING '-'FROM'----ȫ�浿----')|| ']' FROM DUAL;  -- - ����
SELECT '[' ||TRIM(TRAILING '.'FROM'..--ȫ�浿--..')|| ']' FROM DUAL;  -- .����


-- ���ڿ� ���� ������ ����
SELECT '[' || LTRIM('  ȫ�浿  ')|| ']' FROM DUAL;  -- ���� ����
SELECT '[' || TRIM(LEADING FROM'  ȫ�浿  ')|| ']' FROM DUAL;
SELECT '[' || TRIM(LEADING ' ' FROM'  ȫ�浿  ')|| ']' FROM DUAL;
SELECT '[' || TRIM(LEADING '-' FROM'  ---ȫ�浿---  ')|| ']' FROM DUAL;



