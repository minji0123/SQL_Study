-- �ƿ�������


-- �������� SELF JOIN
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E, EMP M
    WHERE E.MGR = M.EMPNO;


-- LEFT OUTER JOIN
-- SQL ����
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E LEFT OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
-- ����Ŭ ����
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E,  EMP M
    WHERE E.MGR = M.EMPNO (+);
    
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E FULL OUTER JOIN EMP M ON(E.MGR = M.EMPNO)
    ORDER BY E.EMPNO;
    
    
--[����]
-- FULL OUTER JOIN (��ü �ܺ�����)_�������
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E,  EMP M
    WHERE E.MGR = M.EMPNO (+)
UNION
SELECT E.EMPNO AS ���, E.ENAME AS ����̸�, E.MGR AS �Ŵ����ڵ�E, M.EMPNO AS �ų����ڵ�M, M.ENAME AS �Ŵ����̸�
    FROM EMP E,  EMP M
    WHERE E.MGR(+) = M.EMPNO;

    
