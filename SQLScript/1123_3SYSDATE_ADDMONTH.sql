-- ��¥
-- SYSDATE : ���� ��¥
-- ADD_MONTH : ���� �ٷ�� �Լ�
-- MONTHS_BETWEEN : ����� ���� ��
-- LAST_DAY : ���� ������ ��¥

-- ���� ��¥
-- SYSDATE : ���� ��¥

SELECT sysdate FROM dual;
SELECT sysdate as today, ename FROM emp;

-- ���� ��¥
SELECT sysdate + 1 as tomorrow FROM dual;

-- ���� ��¥
SELECT sysdate - 1 as yesterday FROM dual;

-- ������ ���� ��¥
SELECT sysdate + 7 as tomorrow FROM dual;
----------------------------------------------------------------------------
-- ADD MONTHS(��¥������, ���� ���� ��)
-- ���� ��(�Ѵ� ��)
SELECT sysdate AS ����, ADD_MONTHS(sysdate, 1) AS ������ 
    FROM dual;
-- ���� ��(�Ѵ� ��)
SELECT ADD_MONTHS(SYSDATE, -1) AS NEXTMONTH FROM DUAL;
----------------------------------------------------------------------------

-- �Ի� 10���� �������(�Ի� 10���� �Ǵ� ��¥)
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 10*12) FROM EMP;

-- �Ի� 40���� �Ǵ� ��¥
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) FROM emp; 

-- �Ի� 40�� �̸��� �������
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) 
    FROM emp
    WHERE add_months(hiredate, 40 * 12) > sysdate;

-- �Ի� 40�� �̻��� �������
SELECT empno, ename, hiredate, ADD_MONTHS(hiredate, 40 * 12) AS 
    FROM emp
    WHERE ADD_MONTHS(hiredate, 40 * 12) <= sysdate;

-- �Ի� 40�� �̻��� �������
-- �Ի� 40�� ���� ����� �ϼ�: ��¥������ - ��¥������
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), sysdate - add_months(hiredate, 40 * 12) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;

SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), trunc(sysdate - add_months(hiredate, 40 * 12)) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;