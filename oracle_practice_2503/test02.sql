SELECT DISTINCT DEPTNO FROM EMP;

SELECT * FROM EMP;
-- emp 테이블에서 2003년에 입사한 사원을 출력해 보세요.
SELECT * FROM EMP WHERE EXTRACT(YEAR FROM HIREDATE) = 2003;
SELECT *
FROM EMP
WHERE HIREDATE >= TO_DATE('2003-01-01', 'YYYY-MM-DD')
  AND HIREDATE < TO_DATE('2004-01-01', 'YYYY-MM-DD');
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN TO_DATE('2003-01-01', 'YYYY-MM-DD')
  AND TO_DATE('2003-12-31', 'YYYY-MM-DD');
-- AND 연산사 (부서번호가 10이고 직급이 '과장'인 사원만 출력하기)
SELECT * FROM EMP WHERE JOB = '부장' AND DEPTNO = 10;
-- OR 연산자 (부서번호가 10이거나 직급이 '과장'인 사원만 출력하기)
SELECT * FROM EMP WHERE JOB = '과장' OR DEPTNO = 10;

SELECT * FROM EMP WHERE NOT DEPTNO = 10;-- 10번 부서에 소속된 사원만 제외하고 출력하기
SELECT * FROM EMP WHERE DEPTNO <> 10;-- 10번 부서에 소속된 사원만 제외하고 출력하기

SELECT * FROM EMP WHERE SAL BETWEEN 400 AND 500;-- 급여가 400에서 500 사이인 사원 출력하기
SELECT * FROM EMP WHERE SAL < 400 OR SAL > 500;-- 급여가 400미만이거나 500초과인 사원 출력
SELECT * FROM EMP WHERE COMM IN(80,100,200);-- 커미션이 80이거나, 100이거나, 200인 사원 출력
SELECT * FROM EMP WHERE COMM = 80 OR COMM = 100 OR COMM = 200;
SELECT * FROM EMP WHERE SAL NOT BETWEEN 400 AND 500;-- 400에서 500사이의 급여를 받는 사원 출력(BETWEEN AND)
-- IN 연산자를 사용
SELECT * FROM emp WHERE comm IN(80, 100, 200);
-- <>연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력
SELECT * FROM emp WHERE comm<>80 AND comm<>100 AND comm<>200;
-- ALL 연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력
SELECT * FROM emp WHERE comm <> ALL(80, 100, 200);
SELECT * FROM EMP WHERE COMM NOT IN(80,100,200);-- NOT IN 연산자를 사용하여, 커미션이 80, 100, 200이 모두 아닌 사원 출력

SELECT * FROM EMP WHERE ENAME LIKE '이%';-- 이씨 성을 가진 사원 찾기 (LIKE)
-- 이름에 "성"이 포함되어 있는 사원
SELECT * FROM emp WHERE ename LIKE '%성%';
-- 이름이 "성"으로 끝나는 사원을 출력
SELECT * FROM emp WHERE ename LIKE '%%성';
-- 이름의 세 번째 글자가 "성"이고 그 뒤는 무엇이 오든 관계없는 사원 출력
SELECT * FROM emp WHERE ename LIKE '__성%';
-- 이름에 "성"을 포함하지 않은 사원 출력
SELECT * FROM emp WHERE ename NOT LIKE '%성%';
SELECT * FROM EMP WHERE SUBSTR(ENAME , 1, 1) = '감';
SELECT * FROM EMP WHERE ENAME LIKE '%성'; -- %은 * 
SELECT * FROM EMP WHERE ENAME LIKE '_성%'; -- _는 한글자
SELECT * FROM EMP WHERE ENAME NOT LIKE '%성%';
-- 사원의 이름과 담당 업무와 커미션 출력
SELECT ename, deptno, comm FROM emp;
-- 커미션이 NULL인 사원 출력
SELECT * FROM EMP WHERE COMM IS NULL;
-- 커미션이 NULL이 아닌 사원 출력
SELECT * FROM emp WHERE comm IS NOT NULL;


-- Section03 정렬을 위한 order BY 절 부터 이어서 작성

-- Section03 정렬을 위한 order BY 절
-- 급여를 적게 받는 사원부터 많이 받는 사원 순으로 출력(오름차순 ASC)
SELECT * FROM emp ORDER BY sal ASC;
-- ASC를 생략 (디폴트가 오름차순으로 되어있음)
SELECT * FROM emp ORDER BY sal;
-- 급여를 많이 받는 사원부터 적게 받는 사원 순으로 순차적으로 출력(내림차순)
SELECT * FROM emp ORDER BY sal DESC;
-- 사원의 이름을 기준으로, 사전에 먼저 실린 순서
SELECT * FROM emp ORDER BY ename;
-- 가장 최근에 입사한 사람부터 출력
SELECT * FROM emp ORDER BY hiredate DESC;
-- 급여를 많이 받는 순으로 출력하되, 급여가 같으면 이름의 철자가 빠른 순으로 출력
SELECT * FROM emp ORDER BY sal DESC, ename ASC;


