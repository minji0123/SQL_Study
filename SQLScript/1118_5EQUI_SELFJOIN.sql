-- ����(JOIN)
-- SELFJOIN: �ڱ� �ڽ� ���̺�� ����


-- �޴��� ���̺� ����
CREATE TABLE EMP_MGR
    AS SELECT * FROM EMP;

SELECT * FROM EMP_MGR;

SELECT EMPNO, ENAME, MGR FROM EMP ORDER BY MGR;

-- ��������
-- ���, ����� �޴���
-- ������ �ΰ��� ���̺�� �����ؼ� �Ŵ����̸��� �˻� �� ����
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E, EMP_MGR M
    WHERE E.MGR = M.EMPNO;


-- �������� SELF JOIN
-- ������ ���̺� M�� ���� ���� ��
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E, EMP M
    WHERE E.MGR = M.EMPNO;


-- ������ �ϳ��� ���ڵ� �ȿ��� ��
    -- �Ŵ����ڵ尡 ������ ����_��� ���� �����Ͱ� �־ ��µ�
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, E.EMPNO AS �ų����ڵ�M, E.ENAME AS �Ŵ����̸�
    FROM EMP3 E
    WHERE E.MGR = E.EMPNO;

-- ������ �ϳ��� ���ڵ� �ȿ��� ��
    -- �Ŵ����ڵ尡 ������ ����_��� ���� �����Ͱ� ��� ��¾ȵ�
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, E.EMPNO AS �ų����ڵ�M, E.ENAME AS �Ŵ����̸�
    FROM EMP3 E
    WHERE E.MGR = E.EMPNO;
    
    
    
    
    
    
    
    