-- ����ó�� EXCEPTION
-- ���ܰ� �߻��ϴ��� ���α׷��� �������� �ʰ� ����

DECLARE
    V_DNAME NUMBER; -- VARCHAR2(14)
    
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
        -- ���ܰ� �߻��ϸ� ���ܰ� �߻��� ������ ��ɹ��� ������� ����
        DBMS_OUTPUT.PUT_LINE('�μ��� : ' || V_DNAME);
        
    EXCEPTION -- ����ó��
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('����ó��');
            
        -- ����ó�� �� ����
            DBMS_OUTPUT.PUT_LINE('THE END');

END;
/
-------------------------------------------------------------------------

DECLARE
    --V_DNAME NUMBER; -- VARCHAR2(14)
    V_DNAME VARCHAR2(2);
    
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
        -- ���ܰ� �߻��ϸ� ���ܰ� �߻��� ������ ��ɹ��� ������� ����
        DBMS_OUTPUT.PUT_LINE('���� �߻� �� �̰� ��¤���');
        
    EXCEPTION -- ���� ����ó��
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('����ó�� : �䱸���� ���� �� ���� ����');
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('����ó�� : ��ġ�� �� ����');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('����ó�� : �� ��Ÿ���');
        
        -- ����ó�� �� ����
            DBMS_OUTPUT.PUT_LINE('THE END');

END;
/