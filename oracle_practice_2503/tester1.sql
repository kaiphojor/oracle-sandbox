--dept 테이블에 모든 필드 출력
SELECT * FROM dept;
--emp 테이블에 모든 필드 출력
SELECT * FROM emp;
--emp 테이블에서 사원번호, 사원명, 컬럼 내용만 출력
SELECT empno, ename FROM emp;
--산술 연산자 / 연봉 구하기 / 이름, 월급, 연봉
SELECT ENAME, SAL, SAL*12 FROM emp;
--NULL값 때문에 어쩌구 저쩌구
SELECT ename, comm, sal*12+comm, NVL(comm, 0), sal*12+NVL(comm, 0) FROM emp;
--타이틀이 명확하지 않아서 결과예상이 힘듦
SELECT ename, sal*12+NVL(comm, 0) FROM emp;
-- 컬럼 또는 필드에 별칭 부여하기
SELECT ename AS 이름, sal*12+NVL(comm, 0) AS 연봉 FROM emp;
--큰따옴표 " "로 별칭 부여하기
SELECT ename, sal*12+NVL(comm, 0) "A n n s a l" FROM emp;
--Concatenation 연산자
SELECT ename ||'의 직급은 ' ||job|| '입니다.' AS 직급 FROM emp;
--DISTINCT 키워드(뚜렷한)
SELECT deptno FROM emp;
SELECT DISTINCT deptno FROM emp;




--WHERE 절
SELECT * FROM emp WHERE sal >=500;
--10번 부서에 소속된 사원 출력하기
SELECT * FROM emp WHERE DEPTNO =10;
--이름이 '이문세'인 사원 출력하기
SELECT * FROM emp WHERE ename = '이문세';
--입사일 hiredate 이 2025년 1월 1일 이전인 사원만 출력하기
SELECT * FROM emp WHERE hiredate<to_date('2005/01/01', 'YYYY/MM/DD');