SELECT * FROM DEPT; -- DEPT 테이블 전체 필드 가져오기

SELECT * FROM EMP; -- EMP 테이블 모든 필드

SELECT EMPNO, ENAME FROM EMP; -- 사원번호 사원 명 컬럼 내용만 출력

SELECT ENAME, SAL, SAL * 12 FROM EMP; -- 이름 / 월급 / 연봉 순

SELECT ENAME 이름, SAL 월급, SAL * 12 연봉, SAL*12+NVL(COMM,0) 원천징수, NVL(COMM,0) 성과급 FROM EMP; -- 별칭 부여

SELECT ENAME, SAL*12+NVL(COMM,0) "A N N U A L" FROM EMP; -- ""로 별칭 부여

SELECT ENAME || '의 직급은 ' || JOB || '입니다.' AS 직급 FROM EMP;--CONCATENATION 연산

SELECT CONCAT(CONCAT(CONCAT(ENAME,'의 직급은 '),JOB),'입니다.') AS 직급 FROM EMP;--CONCATENATION 연산

SELECT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO FROM EMP; -- 중복제거

--WHERE 절
SELECT * FROM EMP WHERE SAL >= 500; -- WHERE 조건절 (IF)

SELECT * FROM EMP WHERE DEPTNO = 10; -- WHERE 조건절 (IF) --10번 부서에 소속된 사원 출력하기

SELECT * FROM EMP WHERE ENAME='이문세'; -- 이름이 이문세인 부서원
SELECT * FROM EMP WHERE HIREDATE < TO_DATE('2005/01/01','YYYY/MM/DD'); -- 2005년1월 1일 이전 입사자

