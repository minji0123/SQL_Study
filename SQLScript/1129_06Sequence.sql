-- 시퀀스(SEQUENCE)
-- 순번 : 연속적으로 발행되는 일련번호

/*
CREATE SEQUENCE 시퀀스 이름
    INCREMENT BY N  --증가값 (기본값1)
    START WITH N    -- 시작값 (기본값1)
    MAXVALUE N      -- 최대값
    MINVALUE N      -- 최소값 (CYCLE인 경우, MAXVALUE에 도달 후 시작값이 됨)
    CYCLE : NOCYCLE -- 최대값에 도달했을 때, 시작값에서 다시 시작할 것인지 유무
    CACHE N : NOCACHE -- 생성할 번호를 메모리에 미리 할ㄹ당해 놓은 수를 지정할지 유무(기본값 20)
*/

CREATE SEQUENCE hello_seq
    INCREMENT BY 10
    START WITH 10
    MAXVALUE 99
    MINVALUE 0
    CYCLE
    NOCACHE;

-- 시퀀스 수정
ALTER SEQUENCE hello_seq
    INCREMENT BY 10
--    START WITH 10
    MAXVALUE 999
    MINVALUE 0
    NOCYCLE
    NOCACHE;


SELECT * FROM USER_SEQUENCES;

DROP SEQUENCE hello_seq;
SELECT * FROM USER_SEQUENCES;

-- 다음 번호 발행 : 최초에 한번은 시작을 해야 함
-- 계속 실행을 하면은 번호가 발행되면서 증가함
SELECT hello_seq.NEXTVAL FROM DUAL;
    -- 10번 이상 하면은 ㄴMAXVALUE 10 때문에 오류남
    --ORA-08004: 시퀀스 HELLO_SEQ.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다

-- 현재 번호 조회
SELECT hello_seq.CURRVAL FROM DUAL;

-- 실전ㄱㄱ
CREATE TABLE DEPTSEQ AS SELECT * FROM DEPT WHERE 1<>1;
SELECT * FROM DEPTSEQ;

INSERT INTO DEPTSEQ VALUES (hello_seq.NEXTVAL, 'EZ' || hello_seq.CURRVAL, 'SEONGNAM');
COMMIT;
DROP TABLE DEPTSEQ;


--ORA-01438: 이 열에 대해 지정된 전체 자릿수보다 큰 값이 허용됩니다.

