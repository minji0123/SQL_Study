-- NULL
-- NVL(������, ��ü��)
-- �����Ͱ� NULL �̸� ��ü���� ����

-- ����(COMM)�� NULL �� ���
SELECT ENAME, SAL, COMM FROM EMP;

-- �޿� + ���� : NULL �� ��� ��� NULL
SELECT ENAME, SAL, COMM, SAL + COMM FROM EMP;

-- ������ NULL �� ��� 0 ���� ó��
SELECT ENAME, SAL, COMM, NVL(COMM,0), SAL + NVL(COMM,0) FROM EMP;

---------------------------------------
-- NVL2(������, NULL�� �ƴҰ�� ��ü��, NULL�� ��� ��ü��)
SELECT ENAME, SAL, COMM, NVL2(COMM, '����O', '����X') COMM2 FROM EMP;


-- ������ ������ ����  *3
-- ������ ������ �޿��� ����
SELECT ENAME, SAL, COMM, 
   SAL+NVL2(COMM, COMM*3,0) COMM2 FROM EMP;