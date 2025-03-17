SELECT DISTINCT DEPTNO FROM EMP;

SELECT * FROM EMP;
--2003년 입사 
SELECT * FROM EMP WHERE EXTRACT(YEAR FROM HIREDATE) = 2003;
SELECT *
FROM EMP
WHERE HIREDATE >= TO_DATE('2003-01-01', 'YYYY-MM-DD')
  AND HIREDATE < TO_DATE('2004-01-01', 'YYYY-MM-DD');
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN TO_DATE('2003-01-01', 'YYYY-MM-DD')
  AND TO_DATE('2003-12-31', 'YYYY-MM-DD');
  
SELECT * FROM EMP WHERE JOB = '부장' AND DEPTNO = 10;

SELECT * FROM EMP WHERE JOB = '과장' OR DEPTNO = 10;

SELECT * FROM EMP WHERE NOT DEPTNO = 10;
SELECT * FROM EMP WHERE DEPTNO <> 10;

SELECT * FROM EMP WHERE SAL BETWEEN 400 AND 500;
SELECT * FROM EMP WHERE SAL < 400 OR SAL > 500;
SELECT * FROM EMP WHERE COMM IN(80,100,200);
SELECT * FROM EMP WHERE COMM = 80 OR COMM = 100 OR COMM = 200;
SELECT * FROM EMP WHERE SAL NOT BETWEEN 400 AND 500;
SELECT * FROM EMP WHERE COMM NOT IN(80,100,200);

SELECT * FROM EMP WHERE ENAME LIKE '이%';
SELECT * FROM EMP WHERE SUBSTR(ENAME , 1, 1) = '감';
SELECT * FROM EMP WHERE ENAME LIKE '%성'; -- %은 *
SELECT * FROM EMP WHERE ENAME LIKE '_성%'; -- _는 한글자
SELECT * FROM EMP WHERE ENAME NOT LIKE '%성%';
SELECT ENAME, DEPTNO, COMM FROM EMP;
SELECT * FROM EMP WHERE COMM IS NULL;



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


-- 그룹 활동과 싱글 활동을 하는 가수 이름 출력
SELECT * FROM group_star;
SELECT * FROM single_star;
SELECT * FROM group_star UNION SELECT * FROM single_star; -- UNION 합집합
-- 그룹 활동과 싱글 활동을 하는 가수 이름을 중복
SELECT * FROM group_star UNION ALL SELECT * FROM single_star;
-- 그룹 활동과 싱글 활동을 동시에 하는 가수 이름을 출력
SELECT * FROM group_star INTERSECT SELECT * FROM single_star; -- INTERSECT 교집합
-- 그룹 활동만 하는 가수 이름을 출력
SELECT * FROM group_star MINUS SELECT * FROM single_star; -- MINUS 차집합
-- 싱글 활동만 하는 가수 이름을 출력
SELECT * FROM single_star MINUS  SELECT * FROM group_star;
