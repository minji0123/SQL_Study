-- 조인(JOIN)
-- SELFJOIN: 자기 자신 테이블과 조인


-- 메니저 테이블 생성
CREATE TABLE EMP_MGR
    AS SELECT * FROM EMP;

SELECT * FROM EMP_MGR;

SELECT EMPNO, ENAME, MGR FROM EMP ORDER BY MGR;

-- 이퀄조인
-- 사원, 사원의 메니저
-- 동일한 두개의 테이블로 조인해서 매니저이름을 검색 후 연결
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E, EMP_MGR M
    WHERE E.MGR = M.EMPNO;


-- 셀프조인 SELF JOIN
-- 가상의 테이블 M을 만들어서 서로 비교
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, M.EMPNO AS 매네저코드M, M.ENAME AS 매니저이름
    FROM EMP E, EMP M
    WHERE E.MGR = M.EMPNO;


-- 동일한 하나의 레코드 안에서 비교
    -- 매니저코드가 같은게 나옴_얘는 같은 데이터가 있어서 출력됨
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, E.EMPNO AS 매네저코드M, E.ENAME AS 매니저이름
    FROM EMP3 E
    WHERE E.MGR = E.EMPNO;

-- 동일한 하나의 레코드 안에서 비교
    -- 매니저코드가 같은게 나옴_얘는 같은 데이터가 없어서 출력안됨
SELECT E.EMPNO AS 사원, E.ENAME AS 사원이름, E.MGR AS 매니저코드E, E.EMPNO AS 매네저코드M, E.ENAME AS 매니저이름
    FROM EMP3 E
    WHERE E.MGR = E.EMPNO;
    
    
    
    
    
    
    
    