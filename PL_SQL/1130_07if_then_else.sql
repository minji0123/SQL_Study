/*
�񱳿����� : ����(=), >, <, >=, <=, !=, <>
���� ���:
IF ���ǽ� THEN
    ��ɹ�;
END IF;
--------------------------------------------------------------------------------
������ �� ��ȯ : MOD(�������� ����, ���� ����)
--------------------------------------------------------------------------------
*/
-- Ȧ��
SET SERVEROUTPUT ON;
DECLARE
    -- V_NUM NUMBER := 10;
    V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- ����(=), MOD() ������ �� ���ϴ� �Լ�
        DBMS_OUTPUT.PUT_LINE('NUM �� ' || V_NUM || '��(��) Ȧ���Դϴ�.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/

-- ¦��
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 10;
    -- V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- ����(=), MOD() ������ �� ���ϴ� �Լ�
        DBMS_OUTPUT.PUT_LINE('NUM �� ' || V_NUM || '��(��) Ȧ���Դϴ�.');
        -- �ڹپ��
        -- System.out.println("NUM �� " + V_NUM + "��(��) Ȧ���Դϴ�.");
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUM �� ' || V_NUM || '��(��) ¦���Դϴ�.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/

-- �ش��ϴ� ���� ���
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 90;
BEGIN
    IF V_SCORE >= 95 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) A�����Դϴ�.');
    ELSIF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) B�����Դϴ�.');
    ELSIF V_SCORE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) C�����Դϴ�.');
    ELSIF V_SCORE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) D�����Դϴ�.');
    ELSIF V_SCORE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) E�����Դϴ�.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) F�����Դϴ�.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('����');
END;    

/
-- ��� ���ڿ� �̻ڰ� ����
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    IF V_SCORE >= 95 THEN
        V_GRADE := 'A';
    ELSIF V_SCORE >= 90 THEN
        V_GRADE := 'B';
    ELSIF V_SCORE >= 80 THEN
        V_GRADE := 'C';
    ELSIF V_SCORE >= 70 THEN
        V_GRADE := 'D';
    ELSIF V_SCORE >= 60 THEN
        V_GRADE := 'E';
    ELSE
        V_GRADE := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��)' || V_GRADE || '�����Դϴ�.');
END;    

/