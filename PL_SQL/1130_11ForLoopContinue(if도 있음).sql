/*
�ݺ� ���:
    1. �⺻ LOOP : �⺻ �ݺ���
    2. WHILE LOOP : Ư�� ���ǽ��� ����� ���� �ݺ� ����
    3. FOR LOOP : �ݺ� ȸ���� ���Ͽ� �ݺ� ����
    4. CURSOR FOR LOOP : Ŀ���� Ȱ���� �ݺ� ����
--------------------------------------------------------------------------------
�ݺ� ���� �ߴ�:
    1. EXIT :  ���� ���� �ݺ� ����
    2. EXIT-WHEN : �ݺ� ���Ḧ ���� ���ǽ��� �����ϰ� �����ϸ� �ݺ� ����
    3. CONTINUE :  ���� ���� �ݺ��� ���� �ֱ⸦ �ǳʶ�
    4. CONTINUE-WHEN : Ư�� ���ǽ��� �����ϰ� ���ǽ��� �����ϸ� ���� �ݺ� �ֱ⸦ �ǳʶ�
--------------------------------------------------------------------------------
CONTINUE WHEN ���ǽ�;
���ǽ��� �����ϸ� �Ʒ��� ���๮�� �ǳʶٰ� 
�ٽ� ������ ó������ �̵��Ͽ� ���� ������ ����
--------------------------------------------------------------------------------
*/

-- for loop continue
-- Ȧ�� ��� ���
SET SERVEROUTPUT ON;
DECLARE
    V_SUM NUMBER := 0;
    V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1���� 10���� Ȧ���� ���� ���մϴ�.');

    FOR CNT IN 1..10 LOOP
        CONTINUE WHEN MOD(CNT,2) = 0;   -- ¦���� �ǳ� ��
        V_SUM := V_SUM + CNT;
        V_CNT := V_CNT + 1;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('1���� 10���� V_CNT��? ' || V_CNT);
    DBMS_OUTPUT.PUT_LINE('1���� 10���� Ȧ���� ����? ' || V_SUM);
END;
/

-- ¦�� ��� ���
SET SERVEROUTPUT ON;
DECLARE
    V_SUM NUMBER := 0;
    V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1���� 10���� ¦���� ���� ���մϴ�.');

    FOR CNT IN 1..10 LOOP
        CONTINUE WHEN MOD(CNT,2) = 1;   -- Ȧ���� �ǳ� ��
        V_SUM := V_SUM + CNT;
        V_CNT := V_CNT + 1;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('1���� 10���� V_CNT��? ' || V_CNT);
    DBMS_OUTPUT.PUT_LINE('1���� 10���� ¦���� ����? ' || V_SUM);
END;
/
-- if ������ ��� ����(Ȧ��)
SET SERVEROUTPUT ON;
DECLARE
    V_SUM NUMBER := 0;
    V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1���� 10���� Ȧ���� ���� ���մϴ�.');

    FOR CNT IN 1..10 LOOP
        -- IF������ ����
        -- CONTINUE WHEN MOD(CNT,2) = 0;   
        IF MOD(CNT,2) = 0 THEN -- ¦���� �ǳ� ��
            CONTINUE;
        END IF;
        V_SUM := V_SUM + CNT;
        V_CNT := V_CNT + 1;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('1���� 10���� V_CNT��? ' || V_CNT);
    DBMS_OUTPUT.PUT_LINE('1���� 10���� Ȧ���� ����? ' || V_SUM);
END;
/

-- if ������ ��� ����(¦��)
SET SERVEROUTPUT ON;
DECLARE
    V_SUM NUMBER := 0;
    V_CNT NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('FOR ... LOOP : 1���� 10���� ¦���� ���� ���մϴ�.');

    FOR CNT IN 1..10 LOOP
        -- IF������ ����
        -- CONTINUE WHEN MOD(CNT,2) = 1;   
        IF MOD(CNT,2) = 1 THEN -- Ȧ���� �ǳ� ��
            CONTINUE;
        END IF;
        V_SUM := V_SUM + CNT;
        V_CNT := V_CNT + 1;
        DBMS_OUTPUT.PUT_LINE('CNT : ' || CNT || ', SUM=' || V_SUM);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('1���� 10���� V_CNT��? ' || V_CNT);
    DBMS_OUTPUT.PUT_LINE('1���� 10���� ¦���� ����? ' || V_SUM);
END;