-- ��¥
-- SYSDATE : ���� ��¥
-- ADD_MONTH : ���� �ٷ�� �Լ�
-- MONTHS_BETWEEN : ����� ���� ��
-- LAST_DAY : ���� ������ ��
-- NEXT_DAY : Ư�� ��¥�� ���� ��


-------------------------------------------------------------------
-- �� ��¥ ������ ���� ���� ���ϴ� �Լ�
-- MONTHS_BETWEEN(��¥������1, ��¥������2) : ����� ���� �� 

-- �Ի�� - ����� -> ���̳ʽ�
SELECT ename, hiredate, months_between(hiredate, sysdate) FROM emp;

-- ����� - �Ի�� -> �÷���
SELECT ename, hiredate, sysdate, MONTHS_BETWEEN(sysdate, hiredate) AS �ٹ�_������ 
    FROM emp;

-- ����� - �Ի�� -> �÷���
SELECT ename, hiredate, trunc(months_between(sysdate, hiredate)) || '����' 
    FROM emp;

-- �ٹ��� ������, ���
SELECT ename, hiredate, 
    TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) || '����' AS �ٹ�_������, 
    ROUND(TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) / 12, 2) || '��' AS �ٹ�_���
    FROM emp;

------------------------------------------------------------------------------------------------------


-- ���� ������ ��¥�� ���ϴ� �Լ�
-- last_day(��¥������)
SELECT sysdate, LAST_DAY(sysdate) 
    FROM dual;

-- 2021�� 10���� ������ ��¥?
SELECT '21/10/01', LAST_DAY('21/10/01') 
    FROM dual;
    
SELECT last_day('2021/10/01') FROM dual;

SELECT sysdate AS ����, NEXT_DAY(sysdate,'������') AS �����ֿ�����
    FROM dual;

