/*
PL/SQL
----------------------------------------------------
DECLARE
    ����
BEGIN
    ��ɹ�
EXCEPTION
    ����ó��
EN;
*/
----------------------------------------------------
/*
���� ����
�����̸� �ڷ��� : =���̳� ǥ����
----------------------------------------------------
�����̸� : 
    1. ������ �ĺ���
    2. ��ҹ��ڸ� �������� ����(ȥ�밡��)
    3. ���ڷ� ����(�ѱ۵� ����)
    4. �ִ� ���̴� 30����Ʈ
    5. ����(����, �ѱ�), ����, Ư������
    6. sql Ű���� ��� �Ұ�
----------------------------------------------------
�ڷ��� : 
    1. ����    : NUMBER, �Ҽ����� ������ �ִ� 38�ڸ�
    2. ���ڿ�  : CHAR, VARCHAR2 ,�ִ� 32,767����Ʈ
    3. ��¥    : DATE, BC 4712~9999
    4. ��    : BOOLEAN TRUE FALSE NULL
----------------------------------------------------
������ : 
    1. %TYPE : ������
    2. %ROWTYPE : ������
    3. �� : �����̸� ���̺��̸�.���̸�%TYPE
    
*/

set serveroutput on;  -- ���� ����� ȭ�鿡 ���

begin
    dbms_output.put_line('hello,dbms!');
end;
/

set serveroutput on;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE :=30;  -- ��� 
    V_DEPTNO2 NUMBER(2) :=30; -- ��� ����

begin
    dbms_output.put_line('DEPTNO : ' || V_DEPTNO);
    dbms_output.put_line('DEPTNO2 : ' || V_DEPTNO2);

end;
/


-------------------------------------------------------------------
-- ��� ���� : 
set serveroutput on;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE :=30;  -- ��� 
    V_DEPTNO2 NUMBER(2) :=30; -- ��� ����

begin
    dbms_output.put_line('DEPTNO : ' || V_DEPTNO);
    dbms_output.put_line('DEPTNO2 : ' || V_DEPTNO2);

end;
/