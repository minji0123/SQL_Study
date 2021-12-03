-- TOP-N
-- ������ ����
-- ��������, INLINE VIEW, ROWNUM Ȱ���ؼ� ó�� ����
-- ����Ŭ 12C �̻�

-- ����߿��� �޿��� ���� ���� �޴� ����
SELECT EMPNO, SAL FROM EMP ORDER BY SAL DESC;

--------------------------------------------------------------------------------------

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
-- ����Ŭ 12C �̻�
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL DESC 
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����
    
-- �߰����� 5�� (���� 5���� �ǳʶٰ�) ����
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL DESC 
    OFFSET 5 ROWS           --����5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����

--------------------------------------------------------------------------------------

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
-- ����Ŭ 12C �̻�
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL ASC 
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����
    -- �߰����� 5�� (���� 5���� �ǳʶٰ�) ����
    
SELECT EMPNO, SAL 
    FROM EMP ORDER BY SAL ASC 
    OFFSET 5 ROWS           --����5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

-- 11G������ �� : ROWNUM

SELECT ROWNUM, EMPNO, ENAME, SAL FROM EMP;
-- ROWNUM �÷��� ��ȣ�� �ο���


-- ROWNUM : ������ ���ڵ� ��ȣ
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC ;

-- ���������� �ϰԵǸ��� ���ο� ROWNUM �� �ο�
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC);
    -- FROM ���� �����Ѵ����� ROWNUM�� �ٱ� ������, �̹����� ����� �ٴ´�.

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM<=5;

-- �߰����� 5�� (���� 5���� �ǳʶٰ�) ����
SELECT * 
FROM (SELECT ROWNUM numrow, aa.* FROM (SELECT * FROM EMP  ORDER BY SAL desc) aa ) 
WHERE numrow > 5 AND numrow <= 10;


-- �̰Ŵ� �ȵ�
SELECT * 
    FROM (SELECT ROWNUM numrow, EMP.* FROM EMP ORDER BY SAL DESC)
    WHERE numrow BETWEEN 6 AND 10;

-- 5��° SAL(2450)
SELECT ROWNUM, E.EMPNO, E.ENAME, E.SAL
    FROM (SELECT * FROM EMP WHERE SAL<2450 ORDER BY SAL DESC) E
    WHERE ROWNUM <=5;


-------------------------------------------------------------------------
SELECT EMPNO, ENAME, SAL 
    FROM EMP ORDER BY SAL DESC 
    FETCH FIRST 5 ROWS ONLY; -- 5���� ���ڵ带 ����
    
SELECT ROWNUM, EMPNO, ENAME, SAL 
    FROM (SELECT * FROM EMP ORDER BY SAL DESC)
    WHERE ROWNUM<=5;
-------------------------------------------------------------------------

SELECT EMPNO, ENAME, SAL
    FROM EMP ORDER BY SAL DESC
    OFFSET 5 ROWS
    FETCH FIRST 5 ROWS ONLY;

SELECT * 
FROM (SELECT ROWNUM numrow, aa.* FROM (SELECT EMPNO, ENAME, SAL FROM EMP  ORDER BY SAL desc) aa ) 
WHERE numrow > 5 AND numrow <= 10;
