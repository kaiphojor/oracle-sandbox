-- 1일이 몇 분인지 환산하기
-- 24* 60;
SELECT 24 * 60 FROM emp;
SELECT 24 * 60 FROM DUAL
-- DURL 조회
SELECT * FROM DUAL;
SELECT SYSDATE FROM DUAL;

--숫자 함수
-- -10에 대한 절대값 구하기
SELECT -10, ABS(-10) FROM DUAL;
-- 소수점 아래를 버리는 FLOOR 함수
SELECT 34.5678, FLOOR(34.5678) FROM DUAL;
-- 특정 자릿수에서 반올림하는 ROUND 함수
SELECT 34.5678, ROUND(34.5678) FROM DUAL;
-- 소수점 이하 두 번째 자리까지 반올림
SELECT 34.5678, ROUND(34.5678, 2) FROM DUAL;
-- 일의 자리까지 반올림하기 (결과 30)
SELECT 34.5678, ROUND(34.5678,-1) FROM DUAL;
-- 특정 자릿수에서 잘라내기 TRUNC 함수 (rufrhk : 34.56 /30/34)
SELECT TRUNC(34.5678, 2), TRUNC(34.5678, -1), TRUNC(34.5678) FROM DUAL;
-- 나눈 나머지 구하기
SELECT MOD(27, 2), MOD(27, 5), MOD(27, 7) FROM DUAL;

-- 문자 처리 함수
-- 대소문자 변환함수 사용하기
SELECT 'Welcome to Oracle',
    UPPER('Welcome to Oracle'),
    LOWER('Welcome to Oracle'),
    INITCAP('Welcome to Oracle')
FROM DUAL;

-- 영문자와 한글의 길이를 구하기
SELECT LENGTH('Oracle'), LENGTH('오라클') FROM DUAL;
SELECT LENGTHB('Oracle'), LENGTHB('오라클') FROM DUAL;
--문자열 일부만 추출하는 SUBSTR 함수
SELECT SUBSTR('Welcome to Oracle', 3, 4), SUBSTR('Welcome to Oracle', 3, 4) FROM DUAL;
SELECT SUBSTR('웰컴투오라클', 3, 4), SUBSTRB('웰컴투오라클', 3, 4) FROM DUAL;
-- 문자열 'WELCOME TO ORACLE'에 'O'의 위치 찾기 (공란 포함 계산)
SELECT INSTR('WELCOME TO ORACLE', 'O') FROM DUAL;
-- 영문자에서 시작 위치와 발견 위치를 지정
SELECT INSTR('WELCOME TO ORACLE', 'O', 6, 2) FROM DUAL;
SELECT INSTR('데이터베이스', '이', 4, 1), INSTRB('데이터베이스', '이', 4, 1) FROM DUAL;
SELECT INSTR('데이터베이스데이터베이스', '이', 7, 1), INSTRB('데이터베이스데이터베이스', '이', 4, 2) FROM DUAL;
SELECT LPAD('Oracle', 20, '#') FROM DUAL;
SELECT RPAD('Oracle', 20, '#') FROM DUAL;