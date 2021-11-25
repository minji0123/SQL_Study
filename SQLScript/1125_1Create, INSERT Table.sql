-- DML (DATA MANIPULATION LANGUAGE)
-- 조회SELECT, 삭제DELECT, 수정UPDATE, 입력INSERT

-- 입력(INSERT)
-- 테이블에 데이터 추가
-- INSERT INTO 테이블이름 [(컬럼1, 컬럼2,..)] VALUES (데이터1, 데이터2...); 
        -- []는 옵션사항을 뜻함
-- 컬럼명을 명시하지 않으면 테이블의 모든 컬럼에 해당하는 데이터를 VALUES 절에 기술해야함
        -- 명시된 컬럼에 대응하는 자료형에 맞게 VALUES 절에 같은 개수만큼 기술되어야함
        
----------------------------------------------------------------------------------
 -- 테이블 DEPT를 복제함. 근데 데이터를 포함함
CREATE TABLE DEPTX
    AS SELECT * FROM DEPT;
   
 -- 테이블 DEPT를 복제함. 근데 데이터를 제외함 
CREATE TABLE DEPTX
    AS SELECT * FROM DEPT WHERE 1<>1;
    
DESC DEPTX;

SELECT * FROM DEPTX;

-- INSERT : 컬럼명을 명시하지 않음
INSERT INTO DEPTX VALUES (11,'교육부','성남');

-- INSERT : 컬럼명을 명시함
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES (12,'마케팅');

-- INSERT : 순서를 바꿔도 상관없움
INSERT INTO DEPTX ( DNAME,DEPTNO) VALUES ('영업부', 13);
    -- 근데 매칭이 안되면 오류남_오류 : 컬럼에 해당하는 자료형이 일치하지 않음
    --INSERT INTO DEPTX ( DNAME,DEPTNO) VALUES (14, '자재부');

-- INSERT : 모든 컬럼명을 명시
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (21, '회계부', '서울');

-- INSERT : 컬럼 숫자(NUMBER)형 에 문자열을 넣으면??
    -- 숫자로 변환이 가능한 문자열이면은 변환없이 지정 가능
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('21', '총무부', '서울');
    -- 오류 : 숫자(NUMBER)형에 숫자로 변환이 불가능한 문자열을 지정할 수 없다.
    --INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('SS', '총무부', '서울');
    -- TO_NUMBER 숫자로 변환이 가능한 문자열을 명시적으로 표현
    SELECT TO_NUMBER('31', '99') FROM DUAL;
    INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (TO_NUMBER('31', '99'), '연구부', '강원');
    -- 오류 : 숫자로 변환이 불가능한 문자열은 명시적으로 TO_NUMBER 함수를 사용해도 오류뜸
   -- SELECT TO_NUMBER('XY', '99') FROM DUAL;
    --INSERT INTO DEPTX(DEPTNO, DNAME, LOC) VALUES (TO_NUMBER('XY','99'), '구매부', '대전');

-- 오류 명시된 컬럼의 갯수와 VALUES 절에 기술된 갯수가 일치하지 않으면?
-- SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다
--INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('41', '무역부');
INSERT INTO DEPTX (DEPTNO, DNAME) VALUES ('41', '무역부');

-- NULL값 집어넣기
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('42', '무역부2', NULL);
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('43', '무역부3', ''); --  얘도 NULL이 들어가있음
    -- LENGTH(LOC) : NULL이다. ZERO가 아님
    SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO =43;
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('44', NULL, '부산'); --  얘도 NULL이 들어가있음

-- 공백 집어넣기
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES ('45', '무역부5', ' '); 
    -- LENGTH(LOC) : 1이다. NULL이 아님
    SELECT DEPTNO, DNAME, LOC, LENGTH(LOC) FROM DEPTX WHERE DEPTNO =45;

-- 컬럼에 지정된 크기를 넘어선 경우
-- 오류 : 이 열에 대해 지정된 전체 자릿수보다 큰 값이 허용됩니다.
-- INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (123, '부서123', '지역123'); 

-- 값이 한글이나 다국어인 경우 LENGTH,LENGTHB로 바이트 크기 확인
SELECT '제품개발부', LENGTH('제품개발부'), LENGTHB('제품개발부')FROM DUAL; 
INSERT INTO DEPTX (DEPTNO, DNAME, LOC) VALUES (52, '제품개발부', 'LOC52');

