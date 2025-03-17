-- 커미션에 NULL이 저장된 사원이 있음을 확인하기
SELECT ename, sal, comm, deptno FROM emp ORDER BY deptno;
SELECT ename, sal, comm, sal*12+comm, deptno, NVL(comm, 0), sal*12+NVL(comm, 0) FROM emp ORDER BY deptno;
SELECT ename, sal, comm, NVL2(comm, sal*12+comm, sal*12) FROM emp ORDER BY deptno;

SELECT deptno FROM dept;
SELECT ename, deptno, DECODE(deptno, 10, '경리부',
                                     20, '인사과',
                                     30, '영업부',
                                     40, '전산부') AS DNAME
FROM emp;

=SELECT ename, deptno,
        CASE WHEN deptno=10 THEN '경리부'
             WHEN deptno=20 THEN '인사과'
             WHEN deptno=30 THEN '영업부'
             WHEN deptno=40 THEN '전산부'
    END AS DNAME
FROM emp;

-- 그룹함수
SELECT deptno, ROUND(sal, 3) FROM emp;
SELECT SUM(sal) FROM emp;
=SELECT SUM(sal) AS "급여총액",
       ROUND(AVG(sal)) AS "급여평균",
       MAX(sal) AS "최대급여",
       MIN(sal) AS "최소급여"
FROM emp;
SELECT to_date(MAX(hiredate), 'YY/MM/DD'),
       to_date(MIN(hiredate), 'YY/MM/DD')
FROM emp;
SELECT SUM(comm) AS "커미션 총액" FROM emp;
SELECT MAX(sal) FROM emp;
-- SELECT ename, MAX(sal) FROM emp;(x) 가능하려면 서브 쿼리 문을 배워야 함.
SELECT COUNT(comm) AS "커미션 받는 사원의 수" FROM emp;
SELECT COUNT(*) AS "전체 사원의 수",
       COUNT(comm) AS "커미션 받는 사원 수" FROM emp;
SELECT job FROM emp ORDER By job;
SELECT COUNT(DISTINCT job) as "업무수" FROM emp;