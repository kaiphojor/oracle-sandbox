-- emp 테이블에서 2003년에 입사한 사원을 출력해 보세요.
SELECT * FROM emp WHERE hiredate
    BETWEEN to_date('2003/01/01', 'YYYY/MM/DD') AND to_date('2003/12/31', 'YYYY/MM/DD');
-- AND 연산사 (부서번호가 10이고 직급이 '과장'인 사원만 출력하기)
SELECT * FROM emp WHERE deptno=10 AND job='과장';
-- OR 연산자 (부서번호가 10이거나 직급이 '과장'인 사원만 출력하기)
SELECT * FROM emp WHERE deptno=10 OR job='과장';
-- 10번 부서에 소속된 사원만 제외하고 출력하기
SELECT * FROM emp WHERE not deptno=10;
-- 10번 부서에 소속된 사원만 제외하고 출력하기
SELECT * FROM emp WHERE deptno>10; AND depno<10;
-- 10번 부서에 소속된 사원만 제외하고 출력하기
SELECT * FROM emp WHERE deptno <> 10;
-- 급여가 400에서 500 사이인 사원 출력하기
SELECT * FROM emp WHERE sal>=400 AND sal<=500;
-- 급여가 400미만이거나 500초과인 사원 출력
SELECT * FROM emp WHERE sal<400 OR sal>500;
-- 커미션이 80이거나, 100이거나, 200인 사원 출력
SELECT * FROM emp WHERE comm=80 OR comm=100 OR comm=200;
-- 400에서 500사이의 급여를 받는 사원 출력(BETWEEN AND)
SELECT * FROM emp WHERE sal>=400 AND sal<=500;
SELECT * FROM emp WHERE sal BETWEEN 400 AND 500;
-- 급여가 400미만이거나 500초과한 사원 출력(NOT BETWEEN AND)
SELECT * FROM emp WHERE sal<400 OR sal>500;
SELECT * FROM emp WHERE sal NOT BETWEEN 400 AND 500;
-- 2003년에 입사한 사원을 출력하기
SELECT * FROM emp WHERE hiredate BETWEEN to_date('2003/01/01') AND to_date('2003/12/31');
-- 커미션이 80이거나, 100이거나, 200인 사원 출력하기
SELECT * FROM emp WHERE comm=80 OR comm=100 OR comm=200;
-- IN 연산자를 사용
SELECT * FROM emp WHERE comm IN(80, 100, 200);
-- <>연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력
SELECT * FROM emp WHERE comm<>80 AND comm<>100 AND comm<>200;
-- ALL 연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력
SELECT * FROM emp WHERE comm <> ALL(80, 100, 200);
-- NOT IN 연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력
SELECT * FROM emp WHERE comm NOT IN(80, 100, 200);
-- 이씨 성을 가진 사원 찾기 (LIKE)
SELECT * FROM emp WHERE ename LIKE '이%';
-- 이름에 "성"이 포함되어 있는 사원
SELECT * FROM emp WHERE ename LIKE '%성%';
-- 이름이 "성"으로 끝나는 사원을 출력
SELECT * FROM emp WHERE ename LIKE '%%성';
-- 이름의 세 번째 글자가 "성"이고 그 뒤는 무엇이 오든 관계없는 사원 출력
SELECT * FROM emp WHERE ename LIKE '__성%';
-- 이름에 "성"을 포함하지 않은 사원 출력
SELECT * FROM emp WHERE ename NOT LIKE '%성%';
-- 사원의 이름과 담당 업무와 커미션 출력
SELECT ename, deptno, comm FROM emp;
-- 커미션이 NULL인 사원 출력
SELECT * FROM emp WHERE comm=NULL; -- 출력되지 않는다.
SELECT * FROM emp WHERE comm IS NULL;
-- 커미션이 NULL이 아닌 사원 출력
SELECT * FROM emp WHERE comm IS NOT NULL;

-- Section03 정렬을 위한 ORDER BY 절
-- 급여를 적게 받는 사원부터 많이 받는 사원 순으로 출력
SELECT * FROM emp ORDER BY sal ASC;
-- ASC를 생략
SELECT * FROM emp ORDER BY sal DESC;
-- 사원의 이름을 기준으로, 사전에 먼저 실린 순서
SELECT * FROM emp ORDER BY ename;
-- 가장 최근에 입사한 사람부터 출력
SELECT * FROM emp ORDER BY hiredate DESC;
-- 급여를 많이 받는 순으로 출력하되, 급여가 같으면 이름의 철자가 빠른 순으로 출력
SELECT * FROM emp ORDER BY sal DESC, ename ASC;