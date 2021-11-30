/*
���� ���: CASE ~ WHEN
CASE �񱳱���
    WHEN ��1 THEN
        ��ɹ�;
    WHEN ��2 THEN
        ��ɹ�;
    ELSE
        ��ɹ�;
END CASE;
--------------------------------------------------------------------------------
SELECT ename, sal, job,
    CASE job
        WHEN 'MANAGER'  THEN sal * 0.1
        WHEN 'SALESMAN' THEN sal * 0.2
        WHEN 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
--------------------------------------------------------------------------------
*/
-- case, when��
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE/ 10 : ' || V_SCORE/10);
    DBMS_OUTPUT.PUT_LINE('TRUNC : ' || TRUNC(V_SCORE/10));
    
    CASE TRUNC(V_SCORE/10)  -- �Ҽ������� ����
        WHEN 10 THEN
            V_GRADE := 'A';
        WHEN 9 THEN
            V_GRADE := 'B';
        WHEN 8 THEN
            V_GRADE := 'C';
        WHEN 7 THEN
            V_GRADE := 'D';
        WHEN 6 THEN
            V_GRADE := 'E';
        ELSE
            V_GRADE := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��)' || V_GRADE || '�����Դϴ�.');
END; 
/


SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    CASE
        WHEN V_SCORE >= 95 THEN
            V_GRADE := 'A';
        WHEN V_SCORE >= 90 THEN
            V_GRADE := 'B';
        WHEN V_SCORE >= 80 THEN
            V_GRADE := 'C';
        WHEN V_SCORE >= 70 THEN
            V_GRADE := 'D';
        WHEN V_SCORE >= 60 THEN
            V_GRADE := 'E';
        ELSE
            V_GRADE := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��)' || V_GRADE || '�����Դϴ�.');
END; 
/