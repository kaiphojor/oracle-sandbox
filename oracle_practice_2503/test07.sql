-- GROUP BY HAVING (1문제)
SELECT deptno
FROM emp
GROUP BY deptno;
-- 사원 테이블에서 부서별 급여평균 구하려면, 전체사원을 소속부서별로 먼저 그룹화 해야함
SELECT AVG(SAL) AS "급여 평균" FROM EMP GROUP BY DEPTNO;
-- 소속 부서별 급여평균을 부서번호와 함께 출력
SELECT DEPTNO AS "부서 번호", AVG(SAL) AS "급여 평균" FROM EMP GROUP BY DEPTNO;
-- 소속 부서별 최대 급여와 최소 급여 구하기
SELECT DEPTNO, MAX(SAL) "최대 급여",MIN(SAL) "최소 급여" FROM EMP GROUP BY DEPTNO;
-- 부서별로 사원 수와 커미션을 받는 사원수 구하기
SELECT DEPTNO, COUNT(*) "부서별 사원수", COUNT(COMM) "커미션 받는 사원수" FROM EMP GROUP BY DEPTNO;
-- 부서별 급여 평균이 500 이상인 부서번호와 급여 평균 구하기
SELECT DEPTNO, AVG(SAL) FROM EMP GROUP BY DEPTNO HAVING AVG(SAL) >= 500;
--최대 급여가 500을 초과하는 부서에 대해서 최대 급여와 최소 급여 구하기
SELECT MAX(SAL), MIN(SAL) FROM EMP GROUP BY DEPTNO HAVING MAX(SAL) > 500;
-- 사원을 제외하고 급여 총액이 1000 이상인 직급별 급여 총액 구하기
select JOB, COUNT(*), SUM(SAL) from emp WHERE JOB NOT LIKE '%사원%' GROUP BY JOB HAVING SUM(SAL) >= 1000 ORDER BY SUM(SAL);

--최고 급여(평균) 출력하기
SELECT MAX(AVG(SAL)) FROM EMP GROUP BY DEPTNO;

-- 그룹 활동하는 가수(GROUP_STAR) 이름 테이블에서 싱글 활동만 하는 가수 (SINGLE_STAR) 이름을 출력
SELECT * FROM SINGLE_STAR MINUS SELECT * FROM GROUP_STAR;
SELECT * FROM SINGLE_STAR INTERSECT SELECT * FROM GROUP_STAR;
SELECT * FROM SINGLE_STAR UNION SELECT * FROM GROUP_STAR;
SELECT * FROM SINGLE_STAR UNION ALL SELECT * FROM GROUP_STAR;


