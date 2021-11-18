-- ���տ�����
-- UNION(������)
-- �÷��� ������ ��ġ
-- �ߺ��Ǵ� �����ʹ� �ϳ��� ���õ�

SELECT * FROM EMP WHERE DEPTNO = 10;
SELECT * FROM EMP WHERE DEPTNO = 20;

SELECT * FROM EMP WHERE DEPTNO IN (10, 20);

-- UNION
SELECT * FROM EMP WHERE DEPTNO = 10
UNION
SELECT * FROM EMP WHERE DEPTNO = 20;


-- �÷��� ������ ��ġ�ؾ� �Ѵ�.
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 20;


-- �ߺ��Ǵ� �μ�20 �� �ϳ��� �� ���� ���ڵ� �� ���õ�.
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 20;

-- ���� ������ ������, �ε����� �ٸ� ���
-- �ߺ��Ǿ �ٸ� �����ͷ� �ν���
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT EMPNO, ENAME, SAL, COMM FROM EMP WHERE DEPTNO = 20;
-- ---------------------------------------------------------------------------------
-- ���ο� ���̺� ���� : ������ ���̺��� �̿��ؼ�
CREATE TABLE EMP2 AS SELECT EMPNO, ENAME, SAL, SAL * 12 AS ANNUAL FROM EMP;

DESC EMP2;
SELECT * FROM EMP2;
-- ---------------------------------------------------------------------------------
-- ���� ���� ���̺� EMP2 �� EMP�� UNION
-- UNION�� �ߺ����ڵ� �ϳ��� �����ؼ� ���
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10,20)
UNION
SELECT * FROM EMP2 ORDER BY EMPNO, ENAME;
-- ---------------------------------------------------------------------------------
-- ���̺� EMP -> EMP3 ����
CREATE TABLE EMP3 AS SELECT * FROM EMP;
DESC EMP3;
SELECT * FROM EMP3;
-- ---------------------------------------------------------------------------------
-- UNION�� UNION ALL
-- UNION�� �ߺ����ڵ� �ϳ��� �����ؼ� ���
SELECT * FROM EMP UNION SELECT * FROM EMP3;

-- UNION ALL�� �ߺ����� ��� ���
SELECT * FROM EMP UNION ALL SELECT * FROM EMP3;

SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (10)
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO IN (20)
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP3;








