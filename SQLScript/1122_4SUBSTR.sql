-- 1. �����Լ� (Built-in-Function)
-- 1-1 ������ �Լ� (Single-Row-Function)
    -- �����Ͱ� �� �׾� �Էµǰ�, �Էµ� �� ��� ����� �ϳ��� ������ �Լ�
-- 1-2 �����Լ� (Multiple-Row-Function)
    -- �����Ͱ� ���� �࿡ �Էµǰ�, �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- [1. ������ �Լ�]
-- �����Լ�(String)
-- SUBSTR(������, ������ġ, �������) : �������� Ư�� ��ġ�� ���ڿ��� ������
    -- ������ : ������ ���ϴ� ������
    -- ������ġ : 1���� ����. -���̸� ������ ��ġ���� ����
    -- ������� : ������ġ���� �� ���� ö�ڸ� ��������. �����ϸ� ���ڿ��� ������ ��� ����
    
-- 1������ 2���� ���ڸ� ����
SELECT JOB, SUBSTR(JOB,1,2) FROM EMP;

-- ����� ������ NULL�� ���
SELECT JOB, SUBSTR(JOB,6,3) FROM EMP;

-- ������� ����
SELECT JOB, SUBSTR(JOB,5) FROM EMP;

-- ������ġ�� -�� ����
-- ���ڿ��� ���������� ������ 3�ڸ��� �̵��ؼ� 3�ڸ��� ����
SELECT JOB, SUBSTR(JOB,-3,3) FROM EMP;


-- ������ġ�� �÷����� �ؼ� ��ü ���̿� ���ڿ��� ����
SELECT JOB, SUBSTR(JOB,1) FROM EMP;
SELECT JOB, SUBSTR(JOB,1,length(job)) FROM EMP;


-- ������ġ�� ���̳ʽ��� �ؼ� ��ü ���̿� ���ڿ��� ����
SELECT JOB, SUBSTR(JOB,-0) FROM EMP;
SELECT JOB, SUBSTR(JOB,-length(job),length(job)) FROM EMP;
SELECT JOB, SUBSTR(JOB,-length(job)) FROM EMP;
SELECT JOB, SUBSTR(JOB,length(job)*-1) FROM EMP;

SELECT JOB, length(job), length(job)*-1 FROM EMP;




