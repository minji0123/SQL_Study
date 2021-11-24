-- ��¥
-- SYSDATE : ���� ��¥
-- ADD_MONTH : ���� �ٷ�� �Լ�
-- MONTHS_BETWEEN : ����� ���� ��
-- LAST_DAY : ���� ������ ��¥
-- �� ��¥ ������ ���� ���� ���ϴ� �Լ�


-- MONTHS_BETWEEN(��¥������1, ��¥������2) : ����� ���� �� 

-- �Ի�� - ����� -> ���̳ʽ�
SELECT ENAME, HIREDATE, MONTHS_BETWEEN (HIREDATE, SYSDATE) FROM EMP;

-- �����- �Ի��-> �÷���
SELECT ENAME, HIREDATE, MONTHS_BETWEEN (SYSDATE, HIREDATE,)FROM EMP;

-- �����- �Ի��-> �÷���
SELECT ENAME, HIREDATE, 
   TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE)) || '����' FROM EMP;

-- �ٹ��� ������, ���
SELECT ENAME, HIREDATE, 
   TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE)) || '����' 
   ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE))/12,2) ||'��' 
FROM EMP;

------------------------------------------------------------------------------------------------------
-- ���� ������ ��¥�� ���ϴ� �Լ�
-- LAST_DAY(��¥������)
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;

-- 2021�� 10���� ������ ��¥?
SELECT LAST_DAY ('21/10/01') FROM DUAL;
SELECT LAST_DAY ('2021/10/01') FROM DUAL;